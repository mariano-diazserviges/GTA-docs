# <a id="top"></a> <img src="../../../Media/TaxorLiqM202.png" alt="TaxorLiqM202" height="40"> Modelo 202 (TAXOR)

**Modelo 202** muestra, por empresa, el pago fraccionado a cuenta del Impuesto sobre Sociedades, calculado desde TAXOR.

---

<aside class="doc-sidebar">
  <p>En esta página</p>
  <ul>
    <li><a href="#cómo-se-abre">Cómo se abre</a></li>
    <li><a href="#cabecera">Cabecera</a></li>
    <li><a href="#la-lista">La lista</a></li>
    <li><a href="#actualizar-y-comprobar-los-datos">Actualizar y comprobar los datos</a></li>
    <li><a href="#funciones-en-desarrollo">Funciones en desarrollo</a></li>
    <li><a href="#avisos-habituales">Avisos habituales</a></li>
  </ul>
  <p>Relacionado</p>
  <ul>
    <li><a href="RelTaxorLiqResumenWindow.html">Resumen de liquidaciones</a></li>
    <li><a href="../../../Modulos.html">Módulos</a></li>
    <li><a href="../../../UsoGeneral.html">Uso general</a></li>
  </ul>
</aside>

## Cómo se abre

Desde la ventana principal, pestaña **Financiero**, grupo **TAXOR**, botón <img src="../../../Media/TaxorLiqM202.png" alt="Modelo 202" height="20"> **Modelo 202**.

---

## Cabecera

| Campo | Descripción |
| --- | --- |
| **Ejercicio** | Ejercicio de las liquidaciones mostradas. Solo lectura. |
| **Periodo 202** | Periodo del pago fraccionado (distinto del periodo de IVA/retenciones). Solo lectura. |

Ambos campos se controlan desde el [Resumen de liquidaciones](RelTaxorLiqResumenWindow.html#cabecera).

---

## La lista

Una fila por empresa:

| Columna | Descripción |
| --- | --- |
| **Empresa** / **Colaborador** | Empresa y colaborador/asesor TAXOR. |
| **Resultado ctble. después IS** | Resultado contable después del Impuesto sobre Sociedades. |
| **Aumentos** / **Disminuciones** | Ajustes al resultado contable. |
| **Resultado previo** | Resultado previo al cálculo del pago fraccionado. |
| **Bonificaciones** | Bonificaciones aplicables. |
| **Compens. BIN** | Compensación de bases imponibles negativas de ejercicios anteriores. |
| **Base imp. previa** | Base imponible previa del pago fraccionado. |
| **Base pago fraccionado** | Base sobre la que se aplica el porcentaje del pago fraccionado. |
| **Porcentaje** | Porcentaje aplicado. |
| **Opción cálculo** | Modalidad de cálculo del pago fraccionado. |
| **Retenciones e ingresos a cta.** | Retenciones e ingresos a cuenta a deducir. |
| **Mínimo a ingresar** | Importe mínimo a ingresar, si aplica. |
| **Importe declar. anterior** | Importe a deducir de declaraciones anteriores, si es complementaria. |
| **Cuota a ingresar** | Importe final a ingresar. |
| **Fecha emisión** / **Hora emisión** | Fecha y hora en que se calculó la liquidación. |
| **Tipo abono/adeudo** / **Cuenta domiciliación** | Forma de pago o cobro y cuenta bancaria. |
| **CSV** | Código Seguro de Verificación de la declaración presentada. |
| **Definitiva** | Indica si la declaración es definitiva. |
| **Fecha y hora presentación AEAT** / **Descripción error AEAT** | Datos de la presentación en la AEAT. |

La fila de totales suma los importes de todas las empresas mostradas. El estado de cada fila se colorea igual que en [Liquidación de IVA](RelTaxorLiqIvaWindow.html#estado-de-la-declaración) (Sin datos, No presenta, Borrador, Definitiva, Presentada).

---

## Actualizar y comprobar los datos

Esta ventana se recalcula junto con el resto de liquidaciones periódicas, y comparte el mismo mecanismo de verificación de la presentación en la AEAT. Consulta [Actualizar las liquidaciones](RelTaxorLiqResumenWindow.html#actualizar-las-liquidaciones), [Ver el justificante en la AEAT](RelTaxorLiqResumenWindow.html#ver-el-justificante-en-la-aeat) y [Comprobar la presentación](RelTaxorLiqResumenWindow.html#comprobar-la-presentación-en-la-aeat) en el Resumen de liquidaciones para el detalle completo.

---

## Funciones en desarrollo

Al desplegar el botón **Modelo 202** de la cinta aparece también la opción **Resumen IS** (liquidación definitiva del Impuesto sobre Sociedades, distinta del pago fraccionado). Actualmente no está disponible: al pulsarla, la aplicación muestra el aviso *"El resumen del IS no está disponible. En breve habrá una nueva versión. Disculpa las molestias."* y no abre ninguna ventana.

---

## Avisos habituales

Consulta los [avisos habituales del Resumen de liquidaciones](RelTaxorLiqResumenWindow.html#avisos-habituales).

---

[Arriba](#top)
