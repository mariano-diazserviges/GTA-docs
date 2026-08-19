# <a id="top"></a> <img src="../../Media/DocumComposition.png" alt="DocumComposition" height="30"> Composición de documento de contrato

**Composición de documento** define, para un documento del contrato, con qué elementos (plantillas o archivos ya existentes) se genera el archivo final, y en qué orden se combinan.

---

<aside class="doc-sidebar">
  <p>En esta página</p>
  <ul>
    <li><a href="#cómo-se-abre">Cómo se abre</a></li>
    <li><a href="#cabecera">Cabecera</a></li>
    <li><a href="#la-composición">La composición</a></li>
    <li><a href="#añadir-documentos-de-las-entidades">Añadir documentos de las entidades</a></li>
    <li><a href="#generar-composición-completa">Generar composición completa</a></li>
    <li><a href="#avisos-habituales">Avisos habituales</a></li>
  </ul>
  <p>Relacionado</p>
  <ul>
    <li><a href="EntidadContratoWindow.html">Ficha de contrato inmobiliario</a></li>
    <li><a href="../../Modulos.html">Módulos</a></li>
    <li><a href="../../UsoGeneral.html">Uso general</a></li>
  </ul>
</aside>

## Cómo se abre

Desde la sección [Documentos](EntidadContratoWindow.html#documentos) de la [ficha de contrato](EntidadContratoWindow.html), en la columna **Documento** de una línea, pulsa el icono de lista de vínculos.

> Si el documento de contrato ya tiene algún archivo vinculado y todavía no tiene ninguna composición definida, la aplicación crea automáticamente una línea de composición por cada archivo vinculado, en orden, tomando su nombre de archivo como descripción.

---

## Cabecera

| Campo | Descripción |
| --- | --- |
| **Empresa** / **Contrato** | Solo lectura. |
| **Descripción** | Descripción del documento de contrato. |
| **Nombre de archivo** | Nombre con el que se generará el archivo de la composición completa. No admite caracteres no válidos para un nombre de archivo. |
| **Documento** | El archivo final ya generado de la composición completa, si lo hay. Puedes abrirlo o quitar su vinculación. |

---

## La composición

Cada línea es un elemento que forma parte del documento final:

| Columna | Descripción |
| --- | --- |
| **Orden** | Posición del elemento en la composición. Los botones ▲/▼ de la línea reordenan los elementos; no son editables directamente. *El orden debe ser mayor que cero y no puede repetirse entre líneas.* |
| **Descripción** | Descripción del elemento. *Obligatoria.* |
| **Plantilla** | Plantilla de Word con la que se puede generar el documento del elemento. Se indica mediante buscador. |
| **Documento** | El archivo del elemento: puedes vincular uno existente, generarlo desde la plantilla indicada (botón de generar, solo visible si hay plantilla), o abrirlo si ya está vinculado. |

> Solo se admiten documentos Word como plantilla de generación.
>
> Al eliminar un elemento, la aplicación renumera automáticamente el resto para que el orden quede siempre correlativo.

---

## Añadir documentos de las entidades

El botón **Añadir documentos** permite elegir uno o varios tipos de documento; la aplicación añade como nuevos elementos de la composición los documentos de esos tipos que ya estén vinculados a las entidades incluidas en el contrato.

> *"No se han especificado los tipos de documento a añadir."* — Se pulsó Añadir sin seleccionar ningún tipo de documento.

---

## Generar composición completa

El botón **Generar composición completa**, disponible solo cuando se ha indicado el **Nombre de archivo**, convierte a PDF el documento de cada elemento y los combina en un único archivo PDF, que se guarda como el **Documento** de la cabecera. Al terminar, se ofrece abrir directamente el archivo generado.

> Antes de generar la composición completa, todos los elementos deben tener su documento generado o vinculado.

---

## Avisos habituales

| Aviso | Causa |
| --- | --- |
| *"El nº de orden debe ser superior a cero."* | Orden de un elemento incorrecto. |
| *"Ya existe un elemento de la composición con el nº de orden {orden}."* | Dos elementos con el mismo orden. |
| *"La descripción es obligatoria."* | Falta la descripción de un elemento. |
| *"No se puede generar el elemento de la composición: no se ha establecido en nombre de archivo."* | Falta el nombre de archivo del elemento a generar. |
| *"No se puede generar el elemento de la composición: no se ha establecido la plantilla de generación."* | Falta la plantilla del elemento a generar. |
| *"La plantilla no tiene un nombre válido de archivo."* | La plantilla indicada no tiene un archivo válido. |
| *"La plantilla no es válida: solo se admiten documentos Word."* | La plantilla indicada no es un documento Word. |
| *"El archivo está en uso y no se puede actualizar."* | El archivo del elemento está abierto o bloqueado por otro proceso. |
| *"Debe establecerse la carpeta del contrato."* | El contrato no tiene definida su carpeta documental. |
| *"Algunos elementos de la composición no tienen documento generado o vinculado."* | Se intentó generar la composición completa con elementos sin documento. |
| *"No se han especificado los tipos de documento a añadir."* | Se pulsó Añadir documentos sin seleccionar ningún tipo. |
| *"Se quitará la vinculación a archivos de la líneas seleccionadas. Los archivos no serán eliminados.\n\n¿Quitar la vinculación?"* | Confirmación al quitar la vinculación de un documento. |
| *"Generarción documento terminada\n\n¿Abrir documento?"* | Confirmación tras generar un documento, para abrirlo directamente. |

---

[Arriba](#top)
