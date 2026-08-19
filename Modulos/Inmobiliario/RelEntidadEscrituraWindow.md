# <a id="top"></a> <img src="../../Media/Escrituras.png" alt="Escrituras" height="30"> Escrituras de la promoción

**Escrituras** vincula las entidades de una promoción a sus escrituras de **División Horizontal** y de **Distribución Hipotecaria**, y muestra o edita los datos de la escritura seleccionada junto con qué entidades incluye.

---

<aside class="doc-sidebar">
  <p>En esta página</p>
  <ul>
    <li><a href="#cómo-se-abre">Cómo se abre</a></li>
    <li><a href="#cabecera">Cabecera</a></li>
    <li><a href="#datos-de-la-escritura">Datos de la escritura</a></li>
    <li><a href="#carga-hipotecaria">Carga hipotecaria</a></li>
    <li><a href="#la-rejilla-de-entidades">La rejilla de entidades</a></li>
    <li><a href="#totales">Totales</a></li>
    <li><a href="#avisos-habituales">Avisos habituales</a></li>
  </ul>
  <p>Relacionado</p>
  <ul>
    <li><a href="EntidadWindow.html">Ficha de entidad inmobiliaria</a></li>
    <li><a href="RelFincaRegistralWindow.html">Fincas registrales</a></li>
    <li><a href="../../Financiero/EscrituraWindow.html">Ficha de escritura notarial</a></li>
    <li><a href="../../Modulos.html">Módulos</a></li>
    <li><a href="../../UsoGeneral.html">Uso general</a></li>
  </ul>
</aside>

## Cómo se abre

Desde la [ficha de entidad](EntidadWindow.html#utilidades-relacionadas), botón <img src="../../Media/Escrituras.png" alt="Escrituras" height="20"> **Escrituras**.

> Aunque se abre desde una entidad concreta, la ventana trabaja sobre el conjunto de entidades de toda la promoción de esa entidad.

---

## Cabecera

| Campo | Descripción |
| --- | --- |
| **Empresa** / **Referencia** | Empresa y promoción sobre la que se muestran las escrituras. |
| **Tipo de escritura** | **División Horizontal** o **Distribución Hipotecaria**. Cambia qué escritura y qué entidades se muestran. |
| **Escritura** | La escritura del tipo seleccionado vinculada a la promoción. Se selecciona mediante buscador. |

> No se puede cambiar la escritura si ya tiene alguna carga asignada a una finca registral: la aplicación te lo indica y revierte el cambio.
>
> Si la promoción tiene más de una escritura del mismo tipo, la aplicación te avisa de que hay que corregirlo (situación anómala).

---

## Datos de la escritura

Al seleccionar una escritura se despliega su ficha completa (los mismos datos generales que en la [ficha de escritura notarial](../../Financiero/EscrituraWindow.html) del módulo Financiero: tipo, notario, protocolo, fecha, datos de inscripción registral...). Puedes editarlos directamente desde aquí.

> La descripción de la escritura es obligatoria.

---

## Carga hipotecaria

Esta sección solo aparece cuando el tipo de escritura es **Distribución Hipotecaria**:

| Campo | Descripción |
| --- | --- |
| **Descripción de la carga** | Descripción de la carga hipotecaria. |
| **Tercero de la carga** | Entidad financiera u otro tercero beneficiario. |
| **Tipo de carga** | Tipo de carga registral (debe ser de tipo Hipoteca). |
| **Fecha inicio** / **Fecha fin** | Periodo de vigencia de la carga. |
| **Principal** / **Intereses ordinarios** / **Intereses de demora** / **Costas** | Importes de la carga. |
| **Total carga** | Suma de los importes anteriores. Solo lectura. |

> La fecha de fin de la carga no puede ser anterior a la fecha de inscripción registral.
>
> Si cambias la fecha de inicio o de fin aquí, se actualizan automáticamente todas las cargas de fincas registrales generadas por esta escritura.

---

## La rejilla de entidades

Una fila por cada entidad de la promoción, con una casilla **Incluida** que marca si forma parte de esta escritura:

| Columna | Descripción |
| --- | --- |
| **Incluida** | Casilla que incluye o excluye la entidad de la escritura. |
| **Entidad** | Pulsa para ir a su ficha. |
| **Orden DH** | Número de orden en la división horizontal. |
| **Finca** | Finca registral asociada a la entidad. Pulsa para ir a su ficha. |
| **% finca registral** | Porcentaje de la finca que aporta esta entidad. |
| **Tipo de superficie** | Tipo de superficie de la finca registral. |
| **Descripción de finca** | Descripción de la finca en la escritura. |
| **Principal** / **Intereses ordinarios** / **Intereses de demora** / **Costas** / **Total carga** | Solo visibles en escrituras de **Distribución Hipotecaria**: la parte de la carga hipotecaria que corresponde a esta entidad. |

Encima de la rejilla, la casilla **Mostrar entidades** filtra la vista para ver solo las entidades ya incluidas en alguna escritura de ese tipo.

> Para incluir una entidad en una escritura de **División Horizontal**, primero debe tener un **Orden DH** asignado.
>
> Para incluir una entidad en una escritura de **Distribución Hipotecaria**, primero debe tener una finca registral asociada.
>
> No se puede excluir una entidad de la escritura si todavía tiene una finca registral asociada.
>
> Si hay una edición pendiente en la rejilla, primero debes confirmarla antes de incluir o excluir una entidad.

Al incluir o excluir entidades, la aplicación confirma el resultado (por ejemplo: *"Se han incluido {n} entidades en la escritura '{escritura}'."*).

---

## Totales

La fila de totales agrupa las entidades **Incluidas** y **No incluidas**, sumando los importes de carga hipotecaria de cada grupo. Si la suma de las entidades no coincide con el importe de la carga de la cabecera de la escritura, la diferencia se resalta en rojo.

---

## Avisos habituales

| Aviso | Causa |
| --- | --- |
| *"Descripción obligatoria."* | Falta la descripción de la escritura. |
| *"La fecha fin de carga no puede ser anterior a la inscripción de la carga en el registro."* | Fechas de la carga hipotecaria incoherentes. |
| *"El nº de orden de división horizontal ya se ha utilizado en la entidad {identidad}-{entidad} de la referencia {referencia}."* | El Orden DH introducido ya está en uso por otra entidad. |
| *"Nº orden División Horizontal obligatorio, la entidad está incluida en la escritura de División Horizontal."* | Falta el Orden DH de una entidad que ya está incluida en la escritura. |
| *"Si se asocia una finca registral, debe indicarse el tipo de superficie a incorporar en la entidad."* | Falta el tipo de superficie de la finca registral de la entidad. |
| *"El porcentaje asignado a entidades de la finca registral es mayor que 100%"* | La suma de porcentajes de la finca supera el 100 %. |
| *"No se puede excluir la entidad de la escritura porque tiene una finca registral asociada."* | Se intentó excluir una entidad sin quitarle antes la finca registral. |
| *"Para incluir una entidad en la División Horizontal, debe establecerse el Nº Orden."* | Falta el Orden DH al incluir la entidad. |
| *"Es necesario asociar una finca registral a la entidad para incluirla en la escritura de Distribución Hipotecaria."* | Falta la finca registral al incluir la entidad en esa escritura. |
| *"Finca registral obligatoria"* | Se informó un importe de carga sin finca registral asociada. |
| *"Debe establecerse la fecha de fin de la carga en la escritura."* | Falta la fecha fin de la carga hipotecaria. |
| *"Es obligatorio introducir la descripción de la carga en la escritura."* | Falta la descripción de la carga. |
| *"Debe establecerse el tercero beneficiario de la carga en la escritura"* | Falta el tercero de la carga hipotecaria. |
| *"La carga se solapa con '{carga}': fecha inscripción: {fecha}, fecha fin: {fecha}."* | El periodo de la carga se solapa con otra carga de la misma finca. |
| *"No se puede cambiar la escritura porque existe al menos una carga asignada a finca registral."* | Se intentó cambiar de escritura teniendo cargas ya generadas. |
| *"Selecciona una escritura para mostrar las entidades incluidas / excluidas."* | No hay ninguna escritura seleccionada. |
| *"Termina antes la edición."* | Hay una edición pendiente en la rejilla al intentar incluir/excluir una entidad. |
| *"La promoción tiene más de una escritura del tipo {tipo}. Avisa al administrador."* | Situación anómala de datos: hay más de una escritura del mismo tipo para la promoción. |

---

[Arriba](#top)
