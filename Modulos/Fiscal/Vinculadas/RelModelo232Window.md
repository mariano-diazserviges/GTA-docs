# <a id="top"></a> <img src="../../../Media/LogoGTA.png" alt="LogoGTA" height="30"> Lista de declaraciones del Modelo 232

<img src="../../../Media/Modelo232Aeat.png" alt="Modelo 232" height="80">

**Lista de declaraciones del Modelo 232** muestra todas las declaraciones del Modelo 232 de la AEAT (una por empresa y ejercicio), y permite abrir, crear o eliminar declaraciones, además de enviarlas o comprobar su presentación sin necesidad de abrir cada una. El detalle completo de cada declaración se gestiona en su [ficha](Modelo232Window.html).

---

<aside class="doc-sidebar">
  <p>En esta página</p>
  <ul>
    <li><a href="#cómo-se-abre">Cómo se abre</a></li>
    <li><a href="#la-lista">La lista</a></li>
    <li><a href="#crear-una-nueva-declaración">Crear una nueva declaración</a></li>
    <li><a href="#abrir-una-declaración">Abrir una declaración</a></li>
    <li><a href="#eliminar-declaraciones">Eliminar declaraciones</a></li>
    <li><a href="#servicios-aeat">Servicios AEAT</a></li>
    <li><a href="#traspaso-masivo">Traspaso masivo</a></li>
    <li><a href="#avisos-habituales">Avisos habituales</a></li>
  </ul>
  <p>Relacionado</p>
  <ul>
    <li><a href="Modelo232Window.html">Ficha de declaración del Modelo 232</a></li>
    <li><a href="MovVinculada232Window.html">Operaciones vinculadas</a></li>
    <li><a href="RelTerceroVinculado232Window.html">Terceros vinculados</a></li>
    <li><a href="RelPerEntidVincAr164RisWindow.html">Personas/Entidades vinculadas Art. 16.4 RIS</a></li>
    <li><a href="../../../Modulos.html">Módulos</a></li>
    <li><a href="../../../UsoGeneral.html">Uso general</a></li>
  </ul>
</aside>

## Cómo se abre

Desde la ventana de [Operaciones vinculadas](MovVinculada232Window.html), despliega el botón <img src="../../../Media/Modelo232Aeat.png" alt="Modelo 232" height="20"> **Modelo 232** de la cinta de opciones y elige **Relación Modelo 232**.

> Este botón solo aparece si tienes permiso de ejecución sobre esta ventana.

---

## La lista

La lista muestra una fila por cada declaración, filtrada por el **Ejercicio** indicado en la cabecera y, si se especifica, por **Empresa**.

| Columna | Descripción |
| --- | --- |
| **Empresa** | Empresa de la declaración. |
| **Inicio ejercicio** / **Fin ejercicio** | Periodo de la declaración. |
| **Cifra de negocio** | Cifra de negocio de la empresa en el ejercicio. |
| **CNAE 2009** | Código de actividad de la empresa. |
| **Nº operaciones** / **Importe operaciones** | Recuento e importe total de las líneas de [operaciones vinculadas](Modelo232Window.html#operaciones-vinculadas) de la declaración. |
| **Nº operaciones paraíso** / **Importe operaciones paraíso** | Recuento e importe de las líneas de [operaciones en paraísos fiscales](Modelo232Window.html#operaciones-en-paraísos-fiscales). |
| **Nº tenencias** | Recuento de líneas de [tenencia de valores](Modelo232Window.html#tenencia-de-valores-en-paraísos-fiscales). |
| **Complementaria** / **Sustitutiva** / **Justificante anterior** | Datos de declaraciones complementarias o sustitutivas de una presentación previa. |
| **Persona de contacto** / **Teléfono de contacto** | Datos de contacto de la declaración. |
| **Fecha y hora presentación AEAT** | Momento en que se envió la declaración. |
| **CSV** | Código Seguro de Verificación devuelto por la AEAT. Es un enlace: pulsa sobre él para consultarlo en la sede electrónica. |
| **Expediente AEAT** / **Justificante AEAT** | Referencias devueltas por la AEAT tras la presentación. |
| **Descripción error AEAT** | Mensaje de error devuelto por la AEAT, si lo hubiera. |
| **Observaciones** | Texto libre. |
| **Estado** | Estado de la declaración (ver [Estados de la declaración](Modelo232Window.html#estados-de-la-declaración)). |
| **Bloqueado** | Casilla editable directamente en la lista: bloquea la declaración para edición. |

---

## Crear una nueva declaración

Pulsa <img src="../../../Media/New.png" alt="Nuevo" height="20"> **Nuevo** en la cinta de opciones. Se abre directamente la [ficha de la declaración](Modelo232Window.html) en modo alta para la empresa y ejercicio activos; la nueva declaración no aparece como fila en la lista hasta que se guarda desde la ficha.

---

## Abrir una declaración

Haz doble clic en una fila, o selecciónala y pulsa **Editar**, para abrir su [ficha completa](Modelo232Window.html): cifra de negocio, líneas de operaciones vinculadas, operaciones en paraísos fiscales, tenencias, y el envío a la AEAT.

---

## Eliminar declaraciones

Selecciona una o varias filas y pulsa <img src="../../../Media/Delete.png" alt="Eliminar" height="20"> **Eliminar**. Se solicita confirmación antes de proceder: *"¿Eliminar la declaración seleccionada?"* o *"¿Eliminar las {n} declaraciones seleccionadas?"*

---

## Servicios AEAT

<img src="../../../Media/Aeat.png" alt="Aeat" height="30">

La cinta de opciones incluye también los botones de servicios AEAT — **Envío**, **Comprobación** y **Ver CSV** —, que puedes usar directamente sobre la declaración seleccionada en la lista sin necesidad de abrir su ficha. Consulta [Enviar a la AEAT](Modelo232Window.html#enviar-a-la-aeat) y [Comprobar la presentación](Modelo232Window.html#comprobar-la-presentación) para el detalle de qué hace cada uno.

---

## Traspaso masivo

<img src="../../../Media/Modelo232Aeat.png" alt="Traspaso masivo" height="40">

Selecciona una o varias declaraciones de la lista y pulsa **Traspasar declaraciones seleccionadas** para recalcular de una sola vez las [operaciones vinculadas](Modelo232Window.html#traspasar-movimientos-a-la-declaración) de todas ellas, sin tener que abrir cada ficha por separado.

> Se solicita confirmación antes de proceder con el traspaso.
>
> Igual que en la ficha, el traspaso **elimina y regenera** las líneas de operaciones vinculadas de cada declaración seleccionada — ver la advertencia en [Traspasar movimientos a la declaración](Modelo232Window.html#traspasar-movimientos-a-la-declaración).

---

## Avisos habituales

| Aviso | Causa |
| --- | --- |
| *"¿Eliminar la declaración seleccionada?" / "¿Eliminar las {n} declaraciones seleccionadas?"* | Confirmación antes de eliminar una o varias declaraciones. |
| *"Se traspasarán las operaciones a las ({n}) declaraciones seleccionadas.\n\n¿Confirmas el traspaso masivo?"* | Confirmación antes de un traspaso masivo. |

Para el resto de avisos (validaciones de cabecera y líneas, traspaso, envío y comprobación), consulta los [avisos habituales de la ficha](Modelo232Window.html#avisos-habituales).

---

[Arriba](#top)
