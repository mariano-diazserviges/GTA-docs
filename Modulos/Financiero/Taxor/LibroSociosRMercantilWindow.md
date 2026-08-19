# <a id="top"></a> <img src="../../../Media/LibroSociosRMercantil.png" alt="LibroSociosRMercantil" height="30"> Emisión libro de socios (Registro Mercantil)

**Emisión libro de socios** genera el documento Excel del libro de socios de una empresa, en el formato habitual para su presentación ante el Registro Mercantil, para un periodo concreto.

---

<aside class="doc-sidebar">
  <p>En esta página</p>
  <ul>
    <li><a href="#cómo-se-abre">Cómo se abre</a></li>
    <li><a href="#datos-para-la-generación">Datos para la generación</a></li>
    <li><a href="#generar-el-libro">Generar el libro</a></li>
    <li><a href="#avisos-habituales">Avisos habituales</a></li>
  </ul>
  <p>Relacionado</p>
  <ul>
    <li><a href="LibroSociosTaxorWindow.html">Libro de socios (TAXOR)</a></li>
    <li><a href="../../../Modulos.html">Módulos</a></li>
    <li><a href="../../../UsoGeneral.html">Uso general</a></li>
  </ul>
</aside>

## Cómo se abre

Desde la ventana principal, pestaña **Financiero**, grupo **TAXOR**, botón <img src="../../../Media/LibroSociosRMercantil.png" alt="Emisión libro socios R. Mercantil" height="20"> **Libro socios R. Mercantil**. También se puede abrir desde el [Libro de socios (TAXOR)](LibroSociosTaxorWindow.html).

---

## Datos para la generación

| Campo | Descripción |
| --- | --- |
| **Empresa** | Empresa para la que se genera el libro. *Obligatoria.* Se selecciona mediante <a href="../../BusquedaValoresCampos.html">buscador</a>. |
| **Nombre empresa** | Solo lectura, derivado de la empresa. |
| **Fecha inicio** | Inicio del periodo a incluir en el libro. Por defecto, el 1 de enero del año actual. |
| **Fecha cierre** | Fin del periodo a incluir en el libro. Por defecto, el 31 de diciembre del año actual. |
| **Plantilla** | Plantilla Excel a utilizar para generar el libro, si tienes alguna configurada. Se selecciona mediante <a href="../../BusquedaValoresCampos.html">buscador</a>. |
| **Archivo de plantilla** | Solo visible si no has indicado una plantilla: permite indicar directamente la ruta de un archivo Excel a utilizar como plantilla. |

---

## Generar el libro

Pulsa **Ejecutar**. La aplicación genera el libro de socios y **abre Microsoft Excel** con el resultado:

- Una hoja **"Resumen"** con el listado de socios (nombre, NIF, nacionalidad, domicilio, número de participaciones, fecha del último movimiento y porcentaje de participación).
- Una **hoja individual por cada socio** con movimientos en el periodo, con el detalle cronológico de sus movimientos.

> **Si indicaste una plantilla**, el libro se genera a partir de ella; si no, se genera un libro nuevo desde cero.

---

## Avisos habituales

| Aviso | Causa |
| --- | --- |
| *"Empresa obligatoria."* | Falta la empresa. |
| *"la fecha de inicio no puede ser posterior a la de cierre."* | Las fechas del periodo son incoherentes. |
| *"No existen movimientos del libro de socios para la empresa y fecha indicadas."* | No hay movimientos en el periodo indicado. |
| *"La plantilla no existe."* | El código de plantilla indicado no existe. |
| *"El código de plantilla no tiene definido el archivo."* | La plantilla indicada no tiene un archivo asociado. |

---

[Arriba](#top)
