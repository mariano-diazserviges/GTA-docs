# <a id="top"></a> <img src="../../Media/LogoGTA.png" alt="LogoGTA" height="30"> Ficha de escritura notarial

La **ficha de escritura** reúne los datos generales de una escritura notarial (tipo, notario, protocolo), sus datos de inscripción en el registro público correspondiente, y el procesamiento por IA que extrae de ella los datos de accionistas y operaciones de capital.

> Esta ficha es la de las escrituras notariales generales de una empresa (módulo Financiero), inlcuidas las escrituras de **División Horizontal** o **Distribución Hipotecaria** de una promoción inmobiliaria. Sin embargo, la gestión de estas últimas se realiza desde las ventanas específicas del módulo Inmobiliario, no desde aquí.

---

<aside class="doc-sidebar">
  <p>En esta página</p>
  <ul>
    <li><a href="#cómo-se-abre">Cómo se abre</a></li>
    <li><a href="#cabecera">Cabecera</a></li>
    <li><a href="#datos-generales">Datos generales</a></li>
    <li><a href="#datos-de-inscripción">Datos de inscripción</a></li>
    <li><a href="#observaciones">Observaciones</a></li>
    <li><a href="#procesar-con-ia">Procesar con IA</a></li>
    <li><a href="#avisos-habituales">Avisos habituales</a></li>
  </ul>
  <p>Relacionado</p>
  <ul>
    <li><a href="RelEscrituraWindow.html">Lista de escrituras</a></li>
    <li><a href="RelProcesoEscrituraWindow.html">Historial de procesos IA</a></li>
    <li><a href="../../Modulos.html">Módulos</a></li>
    <li><a href="../../UsoGeneral.html">Uso general</a></li>
  </ul>
</aside>

## Cómo se abre

- Desde la [lista de escrituras](RelEscrituraWindow.html): haz doble clic en una escritura, pulsa `Intro` sobre ella, o selecciónala y pulsa **Editar**, para abrir su ficha completa.
- Desde la [lista de escrituras](RelEscrituraWindow.html): pulsa <img src="../../Media/New.png" alt="Nuevo" height="20"> **Nuevo** para crear una escritura nueva (requiere haber indicado antes la empresa en la cabecera de la lista).
- Desde el historial de procesos de IA de una escritura, hay un botón para ir directamente a su ficha.

> Esta ficha no permite eliminar la escritura: para eliminarla hazlo desde la lista.

---

## Cabecera

| Campo | Descripción |
| --- | --- |
| **Empresa** | Empresa a la que pertenece la escritura. Solo lectura. |
| **Descripción** | Descripción de la escritura. *Obligatoria.* |
| **Procesamiento IA** | Gestión del [procesamiento con IA](#procesar-con-ia) de la escritura. |

---

## Datos generales

| Campo | Descripción |
| --- | --- |
| **Tipo de escritura** | Clasificación de la escritura. Se selecciona mediante <a href="../../BusquedaValoresCampos.html">buscador</a>. Al elegirlo, se copian automáticamente a la escritura los valores de **Inscribible** y **Tipo de registro** configurados para ese tipo. |
| **Notario** | Notario ante el que se otorgó la escritura. Se selecciona mediante <a href="../../BusquedaValoresCampos.html">buscador</a>; pulsa sobre él para ir a su ficha de tercero. |
| **Protocolo** | Número de protocolo notarial. |
| **Fecha escritura** | Fecha de otorgamiento. |
| **Documento** | Documento escaneado de la escritura. |
| **Inscribible** | Casilla que indica si la escritura debe inscribirse en algún registro público. Al activarla aparece la sección [Datos de inscripción](#datos-de-inscripción). |

---

## Datos de inscripción

Esta sección solo se muestra si la escritura está marcada como **Inscribible**.

| Campo | Descripción |
| --- | --- |
| **Tipo de registro** | Registro público donde se inscribe la escritura. |
| **Provincia** | Provincia del registro. Se selecciona mediante buscador. |
| **Tomo** / **Libro** / **Folio** | Datos registrales. |
| **Sección** / **Hoja** / **Inscripción** | Datos registrales. |
| **Año presentación** | Año de presentación en el registro. |
| **Fecha inscripción** | Fecha en que quedó inscrita la escritura. |
| **Fecha BOE** | Fecha de publicación en el BOE, si aplica. |

---

## Observaciones

Campo de texto libre multilínea para cualquier anotación sobre la escritura.

---

## Procesar con IA

<img src="../../Media/LogoAria.png" alt="Procesar con IA" height="30">

GTA puede extraer automáticamente, mediante inteligencia artificial, los datos de **accionistas** y **operaciones de capital** que constan en el documento escaneado de la escritura. El panel de la cabecera muestra el estado del procesamiento (**Sin datos**, **Pendiente**, **Modificado**, **Rechazado** o **Validado**) junto a dos botones:

- <img src="../../Media/LogoAria.png" alt="Procesar IA" height="20"> **Procesar IA** — avanza el procesamiento al siguiente paso.
- <img src="../../Media/Folder.png" alt="Abrir carpeta" height="20"> **Abrir carpeta** — abre la carpeta de intercambio de ficheros con la IA.

El flujo de trabajo es:

1. **Vincula el documento escaneado** de la escritura antes de empezar.
2. Pulsa **Procesar IA**. GTA prepara los ficheros de intercambio en una carpeta local (`Procesado escrituras\{identificador del proceso}`, dentro de tus documentos).
3. Sube los ficheros generados al Project de Claude.ai correspondiente y descarga el resultado (`Procesado.json`) en la misma carpeta.
4. Pulsa **Procesar IA** de nuevo para importar el resultado. Se abrirá una pantalla con los datos extraidos para su comprobación y validación.
5. Si los datos extraidos son válidos, el último paso es grabar los datos extraidos a las tablas definitivas de [**Operaciones de Capital**](LibroSocios/RelOperacionCapitalWindow.html), [**Accionistas**](LibroSocios/RelAccionistaWindow.html) y [**Movimientos accionistas**](LibroSocios/RelMovAccionistaWindow.html) (accesibles desde la cinta de opciones). Una vez grabados, proceso queda **Validado**.
6. En caso de que los datos extraidos no sean correctos para su traslado a las tablas definitivas, se podrá rechazar el procesamiento. Este paso es necesario para iniciar un nuevo procesamiento.

> Una vez que el proceso está **Validado**, no se puede reiniciar el procesamiento IA de esa escritura.
>

---

## Avisos habituales

| Aviso | Causa |
| --- | --- |
| *"Descripción obligatoria."* | Falta la descripción de la escritura. |
| *"No se puede crear un nuevo registro: no se ha establecido la empresa de la escritura."* / *"Para añadir una nueva escritura es necesario informar el código de empresa."* | Se intentó crear una escritura sin empresa. |
| *"La escritura no tiene ningún documento vinculado. Vincula el documento antes de iniciar el procesamiento IA."* | Se pulsó Procesar IA sin haber vinculado antes el documento escaneado. |
| *"Los ficheros ya han sido preparados para que la IA los procese. Sube los ficheros al Project de Claude.ai y descarga el resultado antes de continuar."* | Se pulsó Procesar IA mientras el proceso está pendiente de que subas los ficheros. |
| *"El procesamiento anterior de esta escritura fue rechazado."* | Se vuelve a procesar una escritura cuyo intento anterior se rechazó, previa confirmación del usuario. |
| *"La escritura ya ha sido procesada y validada. No es posible reiniciar el procesamiento."* | Se intentó reprocesar una escritura ya validada. |
| *"El proceso de la escritura ya ha sido completado y validado. No hay carpeta de intercambio disponible."* | Se pulsó Abrir carpeta sobre una escritura ya validada. |

---

[Arriba](#top)
