# <a id="top"></a> <img src="../../Media/LogoGTA.png" alt="LogoGTA" height="30"> Ficha de proceso de extracción IA

Esta ficha muestra los datos que la inteligencia artificial extrajo de una escritura notarial (escritura, operaciones de capital, accionistas y movimientos), para que los revises, los corrijas si es necesario, y decidas si se **graban** como datos definitivos o se **rechazan**.

---

<aside class="doc-sidebar">
  <p>En esta página</p>
  <ul>
    <li><a href="#cómo-se-abre">Cómo se abre</a></li>
    <li><a href="#cabecera-del-proceso">Cabecera del proceso</a></li>
    <li><a href="#datos-extraídos-por-la-ia">Datos extraídos por la IA</a></li>
    <li class="sub"><a href="#escritura">Escritura</a></li>
    <li class="sub"><a href="#operaciones-de-capital">Operaciones de capital</a></li>
    <li class="sub"><a href="#accionistas">Accionistas</a></li>
    <li class="sub"><a href="#movimientos-de-accionista">Movimientos de accionista</a></li>
    <li><a href="#grabar-los-datos">Grabar los datos</a></li>
    <li><a href="#rechazar-el-procesamiento">Rechazar el procesamiento</a></li>
    <li><a href="#avisos-habituales">Avisos habituales</a></li>
  </ul>
  <p>Relacionado</p>
  <ul>
    <li><a href="RelProcesoEscrituraWindow.html">Historial de procesos IA</a></li>
    <li><a href="EscrituraWindow.html">Ficha de escritura notarial</a></li>
    <li><a href="LibroSocios/RelAccionistaWindow.html">Lista de accionistas</a></li>
    <li><a href="LibroSocios/RelOperacionCapitalWindow.html">Lista de operaciones de capital</a></li>
    <li><a href="../../Modulos.html">Módulos</a></li>
    <li><a href="../../UsoGeneral.html">Uso general</a></li>
  </ul>
</aside>

## Cómo se abre

Desde el [historial de procesos IA](RelProcesoEscrituraWindow.html) de una escritura: haz doble clic en un proceso, o pulsa `Intro` sobre él, para abrir su ficha.

---

## Cabecera del proceso

Todos los campos de la cabecera son de solo lectura:

| Campo | Descripción |
| --- | --- |
| **Empresa** | Empresa de la escritura procesada. |
| **Escritura** | Protocolo y descripción de la escritura procesada. |
| **Fecha preparación** | Fecha en que se generaron los ficheros de intercambio con la IA. |
| **Fecha importación** | Fecha en que se importó el resultado de la IA. |
| **Estado** | Estado del proceso: Sin datos, Pendiente, Modificado, Rechazado o Validado. |
| **Validado por** | Usuario que grabó o rechazó el proceso. |
| **Fecha validación** | Fecha en que se grabó o rechazó. |
| **Observaciones** | Observaciones de la IA sobre el procesamiento. |

---

## Datos extraídos por la IA

Debajo de la cabecera, cuatro secciones expandibles muestran los datos que la IA identificó en el documento, cada una con un resumen en su encabezado (por ejemplo, "5 accionistas" o "3 operaciones de capital").

> Mientras el proceso está en estado **Pendiente** o **Modificado**, puedes corregir estos datos antes de grabarlos. En los estados **Sin datos**, **Rechazado** o **Validado**, las cuatro secciones son de solo lectura.
>
> Corregir cualquier dato cambia automáticamente el estado del proceso a **Modificado** si estaba en Sin datos o Pendiente.

### Escritura

Datos generales de la escritura detectados por la IA. Solo son editables el **Tipo de escritura** y el **Notario** (ambos con buscador); el resto de campos (protocolo, fecha, descripción, datos registrales, observaciones) son de solo lectura. Esta sección siempre tiene una única fila: no se puede añadir ni eliminar.

> Si la IA no ha podido identificar al notario, la celda correspondiente se resalta en color para que la completes a mano.

### Operaciones de capital

Operaciones de capital candidatas detectadas por la IA. Son editables **Naturaleza escritura**, **Numeración de acciones**, **Protocolo** y **Notario**; el resto es solo lectura.

### Accionistas

Accionistas candidatos detectados por la IA. Si la IA ha reconocido al accionista como uno ya existente en GTA, su **Denominación** y **Nombre** se muestran de solo lectura; si es un accionista nuevo, esos dos campos son editables. El bloque completo de domicilio y contacto (dirección, teléfonos, correo electrónico, página web) siempre es editable; los datos fiscales y de representación son de solo lectura.

### Movimientos de accionista

Movimientos candidatos detectados por la IA. Solo es editable el campo **Observaciones**; el resto (accionista, operación de capital, tipo de movimiento, titularidad, rango de acciones, fecha, precio) es de solo lectura.

---

## Grabar los datos

<img src="../../Media/Ok.png" alt="Grabar" height="40">

El botón **Grabar** traslada como datos definitivos todo lo que se muestra en las cuatro secciones a las tablas de [Accionistas](LibroSocios/RelAccionistaWindow.html), [Operaciones de Capital](LibroSocios/RelOperacionCapitalWindow.html) y [Movimientos de accionista](LibroSocios/RelMovAccionistaWindow.html), y deja el proceso en estado **Validado**.

Antes de grabar, la aplicación pide confirmación del usuario.

> El botón **Grabar** solo aparece si el proceso está en estado **Sin datos**, **Pendiente** o **Modificado**. Una vez **Validado** o **Rechazado**, desaparece.

---

## Rechazar el procesamiento

<img src="../../Media/Cancel.png" alt="Rechazar" height="40">

El botón **Rechazar** descarta el procesamiento sin grabar ningún dato.

Antes de rechazar, la aplicación pide confirmación, advirtiendo de que la acción es irreversible.

> Igual que **Grabar**, el botón **Rechazar** solo aparece si el proceso está en estado **Sin datos**, **Pendiente** o **Modificado**.

---

## Avisos habituales

| Aviso | Causa |
| --- | --- |
| *"No se han importado datos de la IA para grabar. Importa primero el resultado del procesamiento."* | Se pulsó Grabar sin que el proceso tenga aún datos importados. |
| *"El procesamiento se ha rechazado. Inicia un nuevo procesamiento de escrituras."* | Se pulsó Grabar sobre un proceso ya rechazado. |
| *"Ya se ha grabado el procesamiento. Inicia un nuevo procesamiento de escrituras."* | Se pulsó Grabar sobre un proceso ya validado. |
| *"El procesamiento ya se encuentra rechazado"* | Se pulsó Rechazar sobre un proceso ya rechazado. |
| *"Ya se ha grabado el procesamiento y no es posible rechazarlo."* | Se pulsó Rechazar sobre un proceso ya validado. |

---

[Arriba](#top)
