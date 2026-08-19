# <a id="top"></a> <img src="../../../Media/TaxorLiqResumen.png" alt="TaxorLiqResumen" height="40"> Resumen de liquidaciones periódicas (TAXOR)

**Resumen liquidaciones** agrupa, por empresa, los importes a ingresar de las liquidaciones periódicas calculadas desde TAXOR: [IVA](RelTaxorLiqIvaWindow.html), [Modelo 111](RelTaxorLiqM111Window.html), [Modelo 115](RelTaxorLiqM115Window.html), [Modelo 123](RelTaxorLiqM123Window.html) y [Modelo 202](RelTaxorLiqM202Window.html). Es también la ventana donde se controla el ejercicio y el periodo de todo el bloque de liquidaciones.

> Los modelos anuales de resumen de retenciones — [Modelo 180](RelEmisionM180Window.html) y [Modelo 190](RelEmisionM190Window.html) — **no** se muestrab en este resumen.

---

<aside class="doc-sidebar">
  <p>En esta página</p>
  <ul>
    <li><a href="#cómo-se-abre">Cómo se abre</a></li>
    <li><a href="#cabecera">Cabecera</a></li>
    <li><a href="#la-lista">La lista</a></li>
    <li><a href="#actualizar-las-liquidaciones">Actualizar las liquidaciones</a></li>
    <li><a href="#ver-el-justificante-en-la-aeat">Ver el justificante en la AEAT</a></li>
    <li><a href="#comprobar-la-presentación-en-la-aeat">Comprobar la presentación</a></li>
    <li><a href="#avisos-habituales">Avisos habituales</a></li>
  </ul>
  <p>Relacionado</p>
  <ul>
    <li><a href="RelTaxorLiqIvaWindow.html">Liquidación de IVA</a></li>
    <li><a href="RelTaxorLiqM111Window.html">Modelo 111</a></li>
    <li><a href="RelTaxorLiqM115Window.html">Modelo 115</a></li>
    <li><a href="RelTaxorLiqM123Window.html">Modelo 123</a></li>
    <li><a href="RelTaxorLiqM202Window.html">Modelo 202</a></li>
    <li><a href="RelEmisionM180Window.html">Modelo 180</a></li>
    <li><a href="RelEmisionM190Window.html">Modelo 190</a></li>
    <li><a href="LibroSociosTaxorWindow.html">Libro de socios (TAXOR)</a></li>
    <li><a href="../../../Modulos.html">Módulos</a></li>
    <li><a href="../../../UsoGeneral.html">Uso general</a></li>
  </ul>
</aside>

## Cómo se abre

Desde la ventana principal, pestaña **Financiero**, grupo **TAXOR**, botón <img src="../../../Media/TaxorLiqResumen.png" alt="Resumen liquidaciones" height="20"> **Resumen liquidaciones**.

---

## Cabecera

La cabecera de esta ventana determina los datos a mostrar de las declaraciones. El **Ejercicio**, **Periodo** y **Periodo 202** (pago fraccionado del Impuesto sobre Sociedades) son los parámetros que se utilizarán para obtener los datos desde TAXOR.

| Campo | Descripción |
| --- | --- |
| **Ejercicio** | Año fiscal de las liquidaciones mostradas. |
| **Periodo** | Periodo de liquidación de IVA / retenciones (mensual o trimestral). |
| **Periodo 202** | Periodo del pago fraccionado del Impuesto sobre Sociedades. |

> Si los datos que se muestran en la rejilla no corresponden al ejercicio/periodo indicados en la cabecera, la aplicación avisa: *"Es necesario actualizar: los datos de la cabecera no se corresponden con los datos mostrados."* Pulsa **Ejecutar** (ver [Actualizar las liquidaciones](#actualizar-las-liquidaciones)) para recalcularlos.

---

## La lista

Una fila por empresa activa:

| Columna | Descripción |
| --- | --- |
| **Empresa** / **Colaborador** | Empresa y colaborador/asesor TAXOR. |
| **Baja actividad** | Indica si la empresa está de baja de actividad. |
| **Importe Liq. IVA** | Importe a ingresar de la liquidación de IVA. Enlace: pulsa para ver su justificante. |
| **Importe Liq. M111** | Importe a ingresar del Modelo 111. Enlace a su justificante. |
| **Importe Liq. M115** | Importe a ingresar del Modelo 115. Enlace a su justificante. |
| **Importe Liq. M123** | Importe a ingresar del Modelo 123. Enlace a su justificante. |
| **Importe Liq. M202** | Importe a ingresar del Modelo 202. Enlace a su justificante. |
| **Importe Liq. Total** | Suma de los cinco importes anteriores. |

Solo se suman los importes **positivos** (a ingresar) de cada modelo; los resultados a devolver o compensar no se incluyen en este resumen. La fila de totales muestra la suma de cada columna.

---

## Actualizar las liquidaciones

<img src="../../../Media/ExecProcedureTaxor.png" alt="Ejecutar procedimiento" height="40">

El botón **Ejecutar Decl. periódicas** de la cinta de opciones obtiene **a la vez** los datos TAXOR de las liquidaciones periódicas (Resumen, IVA, Modelo 111, 115, 123, 202, y los anuales 180 y 190), para el ejercicio y periodo indicados.

1. Indica las empresas a procesar con el botón <img src="../../../Media/Cliente.png" alt="Seleccionar cliente TAXOR" height="20"> **Seleccionar cliente TAXOR**.
2. Indica el **Ejercicio**, el **Periodo** y el **Periodo 202** en la cabecera de esta ventana.
3. Pulsa **Ejecutar...**. La aplicación pide confirmación.

> Este proceso **no genera ningún fichero ni realiza ninguna presentación** ante la AEAT: solo obtiene los datos que se muestran en estas ventanas. La consulta del estado real de presentación se hace aparte, con [Comprobar la presentación](#comprobar-la-presentación-en-la-aeat).

---

## Ver el justificante en la AEAT

<img src="../../../Media/AeatVisualizaCsv.png" alt="Visualizar CSV" height="40">

Cada importe de la lista es un enlace: pulsa sobre él para abrir en el navegador el justificante de esa declaración en la sede electrónica de la AEAT, a partir de su Código Seguro de Verificación (CSV).

> La aplicacioón mostrará una advertenica si la declaración de esa empresa, ejercicio y periodo no existe, no está emitida, o no tiene CSV registrado.

---

## Comprobar la presentación en la AEAT

<img src="../../../Media/AeatComprobacion.png" alt="Comprobación AEAT" height="40">

El botón **Comprobación** consulta directamente en la AEAT, usando el certificado digital configurado en cada empresa, el estado real de presentación de sus declaraciones, y actualiza el expediente, la fecha y hora de presentación, el justificante y la descripción del error, si lo hubiera.

Al finalizar la consulta se muestra un mensaje de confirmación.

> Dado que los datos de las declaraciones residen en TAXOR, **los datos obtenidos de la AEAT no persisten**, eliminándose en la siguiente ejecución de actualización de declaraciones.

---

## Avisos habituales

| Aviso | Causa |
| --- | --- |
| *"Es necesario actualizar: los datos de la cabecera no se corresponden con los datos mostrados."* | El ejercicio/periodo de la cabecera no coincide con los datos que se están mostrando. |
| *"No se han seleccionado empresas TAXOR para el procedimiento"* | Se pulsó Ejecutar sin haber seleccionado antes ninguna empresa. |
| *"La empresa no tiene la declaración del ejercicio y periodo."* | No existe esa declaración para la empresa, ejercicio y periodo indicados. |
| *"La declaración del ejercicio y periodo no está emitida."* | La declaración existe pero todavía no se ha emitido. |
| *"La declaración del ejercicio y periodo no tiene CSV introducido."* | La declaración está emitida pero no tiene CSV registrado. |
| *"No se encontró la empresa en TAXOR." / "La empresa TAXOR no está dada de alta como empresa GTA."* | Es necesario revisar la selección de empresas TAXOR antes de realizar la actualización de datos de las declaraciones. |

---

[Arriba](#top)
