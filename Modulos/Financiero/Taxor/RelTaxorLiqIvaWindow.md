# <a id="top"></a> <img src="../../../Media/TaxorLiqIVA.png" alt="TaxorLiqIVA" height="40"> Liquidación de IVA (TAXOR)

**Liquidación IVA** muestra, por empresa, el resultado de la liquidación de IVA (Modelo 303) del ejercicio y periodo activos, calculada en TAXOR.

---

<aside class="doc-sidebar">
  <p>En esta página</p>
  <ul>
    <li><a href="#cómo-se-abre">Cómo se abre</a></li>
    <li><a href="#cabecera">Cabecera</a></li>
    <li><a href="#la-lista">La lista</a></li>
    <li><a href="#estado-de-la-declaración">Estado de la declaración</a></li>
    <li><a href="#actualizar-y-comprobar-los-datos">Actualizar y comprobar los datos</a></li>
    <li><a href="#avisos-habituales">Avisos habituales</a></li>
  </ul>
  <p>Relacionado</p>
  <ul>
    <li><a href="RelTaxorLiqResumenWindow.html">Resumen de liquidaciones</a></li>
    <li><a href="RelTaxorLiqM111Window.html">Modelo 111</a></li>
    <li><a href="RelTaxorLiqM115Window.html">Modelo 115</a></li>
    <li><a href="RelTaxorLiqM123Window.html">Modelo 123</a></li>
    <li><a href="RelTaxorLiqM202Window.html">Modelo 202</a></li>
    <li><a href="../../../Modulos.html">Módulos</a></li>
    <li><a href="../../../UsoGeneral.html">Uso general</a></li>
  </ul>
</aside>

## Cómo se abre

Desde la ventana principal, pestaña **Financiero**, grupo **TAXOR**, botón <img src="../../../Media/TaxorLiqIVA.png" alt="Liquidación IVA" height="30"> **Liquidación IVA**.

---

## Cabecera

| Campo | Descripción |
| --- | --- |
| **Ejercicio** / **Periodo** | Ejercicio y periodo de las liquidaciones mostradas. Solo lectura: se controlan desde el [Resumen de liquidaciones](RelTaxorLiqResumenWindow.html#cabecera). |

---

## La lista

Una fila por empresa:

| Columna | Descripción |
| --- | --- |
| **Empresa** / **Colaborador** | Empresa y colaborador/asesor TAXOR. |
| **Resultado liquidación** | Resultado de la liquidación: a ingresar, a devolver o a compensar. |
| **A compensar anterior** / **Importe declar. anterior** | Importe pendiente de compensar de periodos anteriores. |
| **Importe a devolver** / **Importe a compensar** | Importes resultantes si la liquidación no es a ingresar. |
| **Caduca sig. ejercicio** | Indica si el importe a compensar caduca en el siguiente ejercicio. |
| **Total base devengado** / **Total cuota devengado** | Totales de IVA devengado (repercutido). |
| **Base / Cuota devengado 4% · 10% · 21%** | Desglose del IVA devengado por tipo impositivo. |
| **Modif. bases IVA** / **Modif. cuotas IVA** | Modificaciones de bases y cuotas del periodo. |
| **Base / Cuota devengado ISP** | Operaciones con inversión del sujeto pasivo. |
| **Base / Cuota devengado AIB** | Adquisiciones intracomunitarias de bienes. |
| **No sujeto o con ISP** | Importe de operaciones no sujetas o con inversión del sujeto pasivo. |
| **Total base soportado** / **Total cuota soportado** | Totales de IVA soportado (deducible). |
| **Base / Cuota soportado** | IVA soportado del periodo. |
| **Base / Cuota soportado rectificativas** | Rectificaciones de IVA soportado. |
| **Exonerado M.390** | Indica si la empresa está exonerada de presentar el Modelo 390 (resumen anual). |
| **Periodicidad** | Mensual o trimestral. |
| **REDEME** | Indica si la empresa está inscrita en el Registro de Devolución Mensual. |
| **Fecha emisión** / **Hora emisión** | Fecha y hora en que se calculó la liquidación. |
| **Tipo abono/adeudo** / **Cuenta domiciliación** | Forma de pago o cobro y cuenta bancaria. |
| **Nº complementaria** | Número de declaración complementaria, si aplica. |
| **CSV** | Código Seguro de Verificación de la declaración presentada. |
| **Definitiva** | Indica si la declaración es definitiva. |
| **Fecha y hora presentación AEAT** / **Descripción error AEAT** | Datos de la presentación en la AEAT. |

La fila de totales suma los importes de todas las empresas mostradas.

---

## Estado de la declaración

Cada fila se colorea según su situación:

| Estado | Significado |
| --- | --- |
| **Sin datos** | Todavía no se ha calculado la liquidación. |
| **No presenta** | La empresa no está obligada a presentar esta declaración. |
| **Borrador** | Calculada pero no marcada como definitiva. |
| **Definitiva** | Marcada como definitiva, pendiente de CSV. |
| **Presentada** | Definitiva y con CSV registrado. |
| **Decl. mensual** | La empresa liquida IVA mensualmente. |
| **Exoner. M.390** | La empresa está exonerada de presentar el resumen anual (Modelo 390). |

---

## Actualizar y comprobar los datos

Esta ventana se recalcula junto con el resto de liquidaciones periódicas, y comparte el mismo mecanismo de verificación de la presentación en la AEAT. Consulta [Actualizar las liquidaciones](RelTaxorLiqResumenWindow.html#actualizar-las-liquidaciones), [Ver el justificante en la AEAT](RelTaxorLiqResumenWindow.html#ver-el-justificante-en-la-aeat) y [Comprobar la presentación](RelTaxorLiqResumenWindow.html#comprobar-la-presentación-en-la-aeat) en el Resumen de liquidaciones para el detalle completo.

---

## Avisos habituales

Consulta los [avisos habituales del Resumen de liquidaciones](RelTaxorLiqResumenWindow.html#avisos-habituales).

---

[Arriba](#top)
