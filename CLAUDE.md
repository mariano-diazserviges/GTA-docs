# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Jekyll-based user documentation site for **GTA (Gestión Total Administración)**, a Windows desktop application for administrative process management. Documentation is written in Spanish and published via GitHub Pages.

# Claude instructions
- This repository is the GTA application user manual
- GTA application source code is available as an additional directory
- Documentation is written in Markdown and published via GitHub Pages

## Local Development

**Start dev server (preferred):**
```powershell
.\jekyll-publish.ps1
```
This script auto-locates Ruby, installs dependencies, and starts Jekyll at `http://localhost:4000` with live-reload.

**Manual commands (requires Ruby/Bundler on PATH):**
```bash
bundle install
bundle exec jekyll serve --livereload
```

**Markdown linting:**
```bash
markdownlint "**/*.md"
```

## Site Architecture

- **Theme:** Cayman (GitHub Pages) with custom overrides in [assets/css/style.scss](assets/css/style.scss)
- **Layout:** Single custom layout in [_layouts/default.html](_layouts/default.html) — wraps all pages with site header/footer
- **Plugins:** `jekyll-relative-links`, `jekyll-optional-front-matter`, `jekyll-titles-from-headings` — pages don't require front matter; titles are derived from the first `#` heading
- **Config:** [_config.yml](_config.yml)

## Content Structure

```
index.md              ← Main landing page / table of contents
overview.md           ← What is GTA, external integrations, login
VentanaPrincipal.md   ← Ribbon interface / tab descriptions
UsoGeneral.md         ← Common UI patterns (windows, search, buttons)
FindByControl.md      ← Data filtering control
Modulos.md            ← Module index
Modulos/
  HorasParteWindow.md         ← Hour tracking entry (partes de horas)
  Compras/
    ContratoWindow.md         ← Procurement contract form
Media/                ← Root-level images (logos, shared UI icons)
Modulos/Media/        ← Module-specific screenshots
```

## Page Conventions

**Navigation breadcrumbs** — every page ends with a breadcrumb line like:
```markdown
← [Índice](index.md) · [Uso general →](UsoGeneral.md)
```

**Sidebar layout** — pages with navigational sidebars use a `<div class="doc-sidebar">` block. On screens wider than 64em, the sidebar floats to the right of main content (see SCSS).

**Images** — stored in `Media/` at the same level as the page. Module pages use `Modulos/Media/`. Images are referenced with relative paths:
```markdown
![Alt text](Media/imagen.png)
```

**Module pages** — new module documentation goes under `Modulos/<ModuleName>/`. Add a link to `index.md` (Modules section) and to `Modulos.md`.

## Styling Customizations

[assets/css/style.scss](assets/css/style.scss) extends the Cayman theme with:
- `.doc-sidebar` — responsive sidebar (absolute-positioned right side on wide screens, stacked above content on narrow)
- Table column widths for module ribbon tab tables
- Image vertical alignment fixes
- Breakpoint: `64em`
