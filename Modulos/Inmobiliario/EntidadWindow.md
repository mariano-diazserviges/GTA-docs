# <a id="top"></a> <img src="../../Media/Entidad.png" alt="Entidad" height="30"> Ficha de entidad inmobiliaria

La **ficha de entidad** reúne todos los datos de una unidad inmobiliaria (vivienda, local, plaza de garaje, trastero, elemento de suelo...): su identificación, su localización, las fincas catastral y registral que la respaldan, sus superficies y coeficientes de participación con vigencia temporal, y su documentación anexa.

---

<aside class="doc-sidebar">
  <p>En esta página</p>
  <ul>
    <li><a href="#cómo-se-abre">Cómo se abre</a></li>
    <li><a href="#ficha-entidad">Ficha entidad</a></li>
    <li><a href="#localización">Localización</a></li>
    <li><a href="#finca">Finca</a></li>
    <li><a href="#superficies">Superficies</a></li>
    <li><a href="#coeficientes">Coeficientes</a></li>
    <li><a href="#contabilidad">Contabilidad</a></li>
    <li><a href="#documentos-anexos">Documentos anexos</a></li>
    <li><a href="#bloqueos-automáticos">Bloqueos automáticos</a></li>
    <li><a href="#utilidades-relacionadas">Utilidades relacionadas</a></li>
    <li><a href="#avisos-habituales">Avisos habituales</a></li>
  </ul>
  <p>Relacionado</p>
  <ul>
    <li><a href="RelEntidadWindow.html">Lista de entidades inmobiliarias</a></li>
    <li><a href="RelEntidadContratoWindow.html">Contratos inmobiliarios</a></li>
    <li><a href="RelEntidadEscrituraWindow.html">Escrituras de la promoción</a></li>
    <li><a href="RelEntidadPvpWindow.html">Precios (PVP)</a></li>
    <li><a href="RelFincaCatastralWindow.html">Fincas catastrales</a></li>
    <li><a href="RelFincaRegistralWindow.html">Fincas registrales</a></li>
    <li><a href="EntidadRptWindow.html">Informe de entidades</a></li>
    <li><a href="RelEntidadTercWindow.html">Terceros de gestión</a></li>
    <li><a href="RelTipoEntidadWindow.html">Tipos de entidad</a></li>
    <li><a href="RelTipoEntidadComWindow.html">Tipos de entidad comercial</a></li>
    <li><a href="RelTipoSuperficieWindow.html">Tipos de superficie</a></li>
    <li><a href="RelTipoCoefParticipWindow.html">Tipos de coeficiente</a></li>
    <li><a href="../../Modulos.html">Módulos</a></li>
    <li><a href="../../UsoGeneral.html">Uso general</a></li>
  </ul>
</aside>

## Cómo se abre

Desde la [lista de entidades](RelEntidadWindow.html): doble clic, **Editar** sobre una fila, o **Nuevo** para crear una entidad en blanco.

---

## Ficha entidad

| Campo | Descripción |
| --- | --- |
| **Código entidad** | Código de la entidad. Se genera automáticamente según la serie configurada en la empresa si se deja en blanco. |
| **Empresa** | Empresa propietaria. Solo lectura. |
| **Referencia** / **Estudio** | Promoción o estudio al que pertenece. Solo lectura. |
| **Identidad** | Numeración correlativa dentro de la promoción o estudio. Se asigna automáticamente. |
| **Entidad** | Descripción de la entidad. *Obligatoria.* |
| **Tipo de entidad** | Clasificación de la entidad, del catálogo de [tipos de entidad](RelTipoEntidadWindow.html). *Obligatorio.* |
| **Tipo de entidad comercial** | Clasificación comercial, del catálogo de [tipos de entidad comercial](RelTipoEntidadComWindow.html), solo disponible si la entidad pertenece a una referencia. |
| **Forma de pago** | Forma de pago habitual de la entidad, tomada del catálogo de [formas de pago](RelEntidadPagoWindow.html). |
| **Comentario** | Texto libre. |

---

## Localización

| Campo | Descripción |
| --- | --- |
| **Sigla** | Tipo de vía. |
| **Vía** / **Número** / **Letra** | Dirección. |
| **Bloque** / **Escalera** / **Planta** / **Puerta** | Ubicación dentro del edificio. |
| **Dato complementario** | Texto libre adicional de la dirección. |
| **Código postal** / **Municipio** / **Provincia** | Localización. |

El botón situado junto a esta sección copia la localización de la entidad activa a todas sus entidades dependientes que todavía tengan estos campos vacíos.

---

## Finca

| Campo | Descripción |
| --- | --- |
| **Orden DH** | Número de orden de la entidad en la división horizontal. |
| **Descripción de finca** | Descripción de la finca en la división horizontal. |
| **Finca catastral** / **% aportado** / **Tipo de superficie catastral** | Finca catastral asociada, porcentaje que aporta a esta entidad, y qué tipo de superficie se traslada desde ella. |
| **Finca registral** / **% aportado** / **Tipo de superficie registral** | Finca registral asociada, porcentaje aportado y tipo de superficie. |

Cada bloque (catastral y registral) tiene sus propios botones para ir a la ficha de la finca, desasociarla, o asignar automáticamente el **% restante** de la finca no repartido entre el resto de entidades.

> Si intentas asociar una finca sin indicar el tipo de superficie, la aplicación lo exige antes de guardar.

---

## Superficies

Histórico con vigencia temporal de las superficies de la entidad (tabla `tblEntidadSuperf`):

| Columna | Descripción |
| --- | --- |
| **Tipo de superficie** | Clasificación de la superficie, del catálogo de [tipos de superficie](RelTipoSuperficieWindow.html). *Obligatoria.* |
| **Fecha de vigencia** | Fecha desde la que aplica esta superficie. |
| **Cantidad** | Superficie de este tipo. |
| **Clasificación** | Clasificación adicional del tipo de superficie. |
| **Suma acumulada** | Total acumulado de este tipo de superficie hasta la fecha de vigencia. |
| **Acumular** | Casilla que indica si esta línea se suma a las anteriores del mismo tipo. |
| **Observaciones** | Texto libre. |

La casilla **Ver solo vigente** filtra la tabla para mostrar únicamente los valores actualmente en vigor. Además de los botones habituales, dispones de:

- **Añadir tipo de superficie** — añade una línea para un nuevo tipo de superficie.
- **Añadir superficies de dependientes** — copia a la entidad activa los tipos de superficie que ya tengan sus entidades dependientes y ella no tenga.

> Las superficies de una entidad también se recalculan automáticamente sumando las superficies aportadas por sus fincas catastral y registral asociadas, cuando corresponda.
>
> No puedes repetir el mismo tipo de superficie con la misma fecha de vigencia.

---

## Coeficientes

Histórico con vigencia temporal de los coeficientes de participación de la entidad (tabla `tblEntidadCoef`), con la misma estructura que Superficies: **Tipo de coeficiente** (obligatorio, del catálogo de [tipos de coeficiente de participación](RelTipoCoefParticipWindow.html)), **Fecha de vigencia**, **Coeficiente (%)**, **Tipo de coeficiente de participación**, **Suma acumulada**, **Acumular**, **Observaciones**; casilla **Ver solo vigente**; botones **Añadir tipo de coeficiente** y **Añadir coeficientes de dependientes** (copia los coeficientes vigentes de las entidades dependientes que la entidad activa no tenga).

> No puedes repetir el mismo tipo de coeficiente con la misma fecha de vigencia.

---

## Contabilidad

Solo visible si la empresa está vinculada a Navision: código y valor de la dimensión de Business Central asociada a la entidad.

> Si informas la dimensión, también debes informar su valor, y viceversa; y ambos deben existir en Navision.

---

## Documentos anexos

| Columna | Descripción |
| --- | --- |
| **Línea** | Número de línea. |
| **Tipo de documento** | Clasificación del documento. *Obligatoria.* |
| **Descripción** | Descripción del documento. *Obligatoria.* |
| **Documento** | Archivo vinculado. |

El campo **Carpeta documental** indica la carpeta donde se guardan los documentos de la entidad, generada automáticamente.

---

## Bloqueos automáticos

- Si la entidad tiene un [contrato](RelEntidadContratoWindow.html) **formalizado**, se bloquea la edición de los datos de escritura y localización.
- Si tiene un contrato en cualquier estado **activo** (desde reserva hasta formalizado), se bloquea también la edición de los datos de identificación de la ficha entidad.

---

## Utilidades relacionadas

Desde la cinta de opciones de esta ventana se accede también a:

| Funcionalidad | Descripción |
| --- | --- |
| <img src="../../Media/EntidadContrato.png" alt="Contratos" height="25"> [Contratos de la entidad](RelEntidadContratoWindow.html) | Contratos inmobiliarios en los que participa esta entidad. |
| <img src="../../Media/Escrituras.png" alt="Escrituras" height="25"> [Escrituras](RelEntidadEscrituraWindow.html) | Escrituras de división horizontal y distribución hipotecaria de la promoción. |
| <img src="../../Media/EntidadPVP.png" alt="Precios" height="25"> [Precios](RelEntidadPvpWindow.html) | Histórico de precios de venta al público de la entidad. |
| <img src="../../Media/Catastro.png" alt="Fincas catastrales" height="25"> [Fincas catastrales](RelFincaCatastralWindow.html) | Fincas catastrales de la promoción (titulares, construcciones, valores catastrales, consulta al Catastro). |
| <img src="../../Media/RegistroPropiedad.png" alt="Fincas registrales" height="25"> [Fincas registrales](RelFincaRegistralWindow.html) | Fincas registrales de la promoción (titulares). |
| <img src="../../Media/EntidadContratoCli.png" alt="Clientes" height="25"> [Clientes con contrato](RelEntidadContratoCliWindow.html) | Clientes con contrato inmobiliario de la empresa. |
| <img src="../../Media/EntidadRpt.png" alt="Informe de entidades" height="25"> [Informe de entidades](EntidadRptWindow.html) | Genera o importa desde un Excel un informe completo de entidades, con superficies, coeficientes y precios. |
| <img src="../../Media/EntidadTerc.png" alt="Terceros de gestión" height="25"> [Terceros de gestión](RelEntidadTercWindow.html) | Terceros relacionados con la gestión de la entidad. |
| Reconstruir árbol de entidades / Exportar a Excel | Utilidades ya descritas en la [lista de entidades](RelEntidadWindow.html#utilidades). |

---

## Avisos habituales

| Aviso | Causa |
| --- | --- |
| *"Es obligatorio introducir la descripción de la entidad"* | Falta la descripción. |
| *"Tipo de entidad obligatorio"* | Falta el tipo de entidad. |
| *"No existe serie de codificación de entidades inmobiliarias para la empresa. La entidad debe codificarse manualmente"* | La empresa no tiene serie configurada; hay que indicar el código a mano. |
| *"Si se asocia una finca catastral, debe indicarse el tipo de superficie a incorporar en la entidad." / "Si se asocia una finca registral..."* | Falta el tipo de superficie de una finca asociada. |
| *"El porcentaje asignado a entidades de la finca catastral es mayor que 100%" / "...de la finca registral..."* | La suma de porcentajes asignados a todas las entidades de esa finca supera el 100 %. |
| *"El nº de orden de división horizontal no puede ser cero, ni un número negativo."* | Orden DH incorrecto. |
| *"El nº de orden de división horizontal ya se ha utilizado en la entidad {identidad}-{entidad} de la referencia {referencia}."* | El número de orden ya está asignado a otra entidad. |
| *"Nº orden División Horizontal obligatorio, la entidad está incluida en la escritura de División Horizontal."* | Falta el orden DH en una entidad ya incluida en esa escritura. |
| *"El tipo de superficie es obligatorio." / "El tipo de coeficiente es obligatorio."* | Falta el tipo en una línea de superficie o coeficiente. |
| *"Ya existe un valor para el tipo de superficie en la vigencia indicada." / "...tipo de coeficiente..."* | Ya hay una línea con el mismo tipo y fecha de vigencia. |
| *"El tipo de documento es obligatorio" / "La descripción es obligatoria"* | Falta algún dato de una línea de documentos anexos. |
| *"Se ha establecido la dimensión, pero no se ha establecido su valor." / "Debe especificarse la dimensión del valor."* | Falta completar la pareja dimensión/valor de Navision. |
| *"La dimensión no existe."* | La dimensión o su valor no existen en Navision. |
| *"Se asignó el % restante de la finca catastral a la entidad inmobiliaria." / "...de la finca registral..."* | Confirmación al usar el botón de asignar el % restante de una finca. |
| *"Nº orden DH ya asignado"* (título) | Se avisa de que dos entidades con el mismo Orden DH pasan a formar una única finca registral, y se pide confirmación. |

---

[Arriba](#top)
