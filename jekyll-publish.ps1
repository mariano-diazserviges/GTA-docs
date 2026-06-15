#Requires -Version 5.1
<#
.SYNOPSIS
    Preview the GTA docs site locally using Jekyll (mirrors GitHub Pages).
.DESCRIPTION
    Checks prerequisites, installs gems if needed, and launches Jekyll with
    live-reload. Open http://localhost:4000 in your browser.
#>

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$DocsDir = $PSScriptRoot

function Test-Command($name) {
   return [bool](Get-Command $name -ErrorAction SilentlyContinue)
}

# --- Find Ruby ---------------------------------------------------------------

if (-not (Test-Command 'ruby')) {
   Write-Host "Ruby not on PATH - searching common locations..." -ForegroundColor Yellow

   $searchRoots = @(
      "$env:USERPROFILE\Documents",
      "$env:USERPROFILE",
      "C:\",
      "$env:LOCALAPPDATA",
      "$env:ProgramFiles"
   )

   $rubyExe = $null
   foreach ($root in $searchRoots) {
      if (Test-Path $root) {
         $found = Get-ChildItem -Path $root -Filter 'ruby.exe' -Recurse -ErrorAction SilentlyContinue |
                  Select-Object -First 1
         if ($found) {
            $rubyExe = $found.FullName
            break
         }
      }
   }

   if (-not $rubyExe) {
      Write-Host "ERROR: Ruby not found. Download RubyInstaller WITH DevKit from https://rubyinstaller.org/" -ForegroundColor Red
      exit 1
   }

   $rubyBin = Split-Path $rubyExe
   Write-Host "Found Ruby at: $rubyBin" -ForegroundColor DarkGray
   $env:PATH = "$rubyBin;$env:PATH"
}

$rubyVersion = ruby --version
Write-Host "Ruby: $rubyVersion" -ForegroundColor DarkGray

if (-not (Test-Command 'bundle')) {
   Write-Host "Bundler not found - installing..." -ForegroundColor Yellow
   gem install bundler
}

# --- Gemfile -----------------------------------------------------------------

$gemfile = Join-Path $DocsDir 'Gemfile'

if (-not (Test-Path $gemfile)) {
   Write-Host "Creating Gemfile..." -ForegroundColor Yellow
   $gemfileContent = "source `"https://rubygems.org`"`r`n`r`ngem `"github-pages`", group: :jekyll_plugins`r`ngem `"webrick`"`r`n"
   Set-Content -Path $gemfile -Value $gemfileContent -Encoding utf8
}

# --- Bundle install ----------------------------------------------------------

Set-Location $DocsDir

$lockfile = Join-Path $DocsDir 'Gemfile.lock'
if (-not (Test-Path $lockfile)) {
   Write-Host "Running bundle install (first time, may take a minute)..." -ForegroundColor Yellow
   bundle install
} else {
   bundle install --quiet
}

# --- Serve -------------------------------------------------------------------

Write-Host ""
Write-Host "Starting Jekyll - open http://localhost:4000" -ForegroundColor Green
Write-Host "Press Ctrl+C to stop." -ForegroundColor DarkGray
Write-Host ""

Start-Job { Start-Sleep 10; Start-Process "http://localhost:4000" } | Out-Null

bundle exec jekyll serve --livereload
