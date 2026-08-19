# <a id="top"></a> <img src="../../Media/RegistroPropiedad.png" alt="RegistroPropiedad" height="30"> Ficha de finca registral

La **ficha de finca registral** reúne los datos de inscripción de una finca en el Registro de la Propiedad, sus titulares, sus superficies y las cargas inscritas sobre ella (hipotecas, embargos, servidumbres...).

---

<aside class="doc-sidebar">
  <p>En esta página</p>
  <ul>
    <li><a href="#cómo-se-abre">Cómo se abre</a></li>
    <li><a href="#cabecera">Cabecera</a></li>
    <li><a href="#titularidad">Titularidad</a></li>
    <li><a href="#superficie">Superficie</a></li>
    <li><a href="#carga">Carga</a></li>
    <li><a href="#avisos-habituales">Avisos habituales</a></li>
  </ul>
  <p>Relacionado</p>
  <ul>
    <li><a href="RelFincaRegistralWindow.html">Lista de fincas registrales</a></li>
    <li><a href="FincaCatastralWindow.html">Ficha de finca catastral</a></li>
    <li><a href="RelEntidadEscrituraWindow.html">Escrituras de la promoción</a></li>
    <li><a href="RelRegistroPropWindow.html">Registros de la Propiedad</a></li>
    <li><a href="RelTipoSuperficieWindow.html">Tipos de superficie</a></li>
    <li><a href="../../Modulos.html">Módulos</a></li>
    <li><a href="../../UsoGeneral.html">Uso general</a></li>
  </ul>
</aside>

## Cómo se abre

Desde la [lista de fincas registrales](RelFincaRegistralWindow.html): doble clic, **Editar** sobre una fila, o **Nuevo** para crear una finca en blanco (hereda el Registro de la Propiedad indicado en la cabecera de la lista).

---

## Cabecera

| Campo | Descripción |
| --- | --- |
| **Registro de la propiedad** | [Registro](RelRegistroPropWindow.html) donde está inscrita la finca. *Obligatorio y debe existir.* |
| **Finca** | Número de finca. *Obligatorio, sin espacios en blanco.* |
| **Subfinca** | Número de subfinca, si aplica. |
| **CRU** | Código Registral Único, de 14 dígitos. No puede repetirse en otra finca. |
| **Tomo** / **Libro** / **Folio** | Datos de inscripción registral. |
| **Estado registral** | Vigente, en litigio, o cancelada por división, segregación o agrupación. |
| **Descripción** | Descripción de la finca. |
| **Observaciones** | Texto libre. |

> No se puede cambiar el estado registral a uno de cancelación si la finca está incluida en un contrato inmobiliario activo.
>
> El campo **En litigio de titularidad**, que se muestra en la [lista](RelFincaRegistralWindow.html#la-lista), no tiene ningún control en esta ficha: actualmente no se puede editar desde aquí.

---

## Titularidad

Histórico de titulares de la finca:

| Columna | Descripción |
| --- | --- |
| **Titular** | Tercero titular. *Obligatorio, debe existir como tercero.* |
| **Fecha título** | Fecha del título de propiedad. *Obligatoria, no puede ser posterior a la fecha de enajenación.* |
| **Fecha enajenación** | Fecha en que el titular deja de serlo, si procede. |
| **Tipo de título** | Tipo de título por el que se adquiere la titularidad. |
| **% Titularidad** | Porcentaje de titularidad. *Obligatorio, mayor que 0 y hasta 100.* |
| **Tipo de titular** | Pleno dominio, nuda propiedad, usufructo vitalicio o usufructo temporal. |
| **Notario** / **Fecha protocolo** / **Protocolo** | Datos notariales del título. |
| **Documento título** | Referencia al documento del título. |
| **Tomo** / **Libro** / **Folio** | Datos registrales propios de esta titularidad. |
| **Régimen conyugal** / **Proindiviso** | Condición de la titularidad. |

> El total de porcentajes de titularidad vigentes se recalcula automáticamente y se muestra en rojo mientras no sume exactamente 100; se muestra en verde cuando sí lo hace.
>
> No puedes asignar a un mismo titular dos periodos de titularidad que se solapen en el tiempo.

---

## Superficie

| Columna | Descripción |
| --- | --- |
| **Tipo de superficie** | Clasificación de la superficie, del catálogo de [tipos de superficie](RelTipoSuperficieWindow.html). *Obligatorio y único por finca.* |
| **Cantidad** | Superficie de este tipo. |
| **Observaciones** | Texto libre. |

> Al añadir o modificar una línea de superficie, la aplicación **actualiza automáticamente la superficie de las entidades** asociadas a esta finca para ese mismo tipo, multiplicando la cantidad por el porcentaje que cada entidad tiene asignado de la finca. Si alguna entidad no tenía todavía ese tipo de superficie, se crea con la observación *"Asignado desde finca registral."* Esta actualización automática no se aplica a entidades con un contrato activo distinto de "Preparación".

---

## Carga

Cargas inscritas sobre la finca (hipotecas, embargos, servidumbres, usufructos, concursos, censos...):

| Columna | Descripción |
| --- | --- |
| **Tipo de carga** | Hipoteca, embargo, servidumbre, usufructo, concurso, censo u otras. |
| **Descripción** | Descripción de la carga. |
| **Tercero** | Tercero beneficiario de la carga. |
| **Fecha inscripción** | Fecha de inscripción de la carga. *Obligatoria.* |
| **Fecha fin** | Fecha de finalización de la carga. |
| **Principal** / **Intereses ordinarios** / **Intereses de demora** / **Costas** | Importes de la carga. |
| **Total carga** | Suma de los importes anteriores. Solo lectura. |
| **Escritura** | Escritura que originó la carga, si la hay. Se selecciona mediante buscador. |

> Al vincular una carga a una **escritura**, la aplicación copia automáticamente desde ella la descripción, el tercero y las fechas de inscripción y fin. Si quitas la escritura, la carga se desvincula.
>
> Mientras una carga esté vinculada a una escritura, no puedes modificar directamente su tipo, descripción, fechas, tercero ni importes: solo puedes cambiar o quitar la escritura vinculada. Esto incluye las cargas generadas automáticamente desde la [ventana de escrituras de la promoción](RelEntidadEscrituraWindow.html#carga-hipotecaria) para una Distribución Hipotecaria.
>
> No puedes registrar dos cargas del mismo tipo con fechas de inscripción que se solapen, ni dos cargas con exactamente la misma fecha de inscripción.

---

## Avisos habituales

| Aviso | Causa |
| --- | --- |
| *"Registro de la propiedad obligatorio." / "Registro de la propiedad inexistente."* | Falta el registro de la propiedad, o el indicado no existe. |
| *"Número de finca obligatorio." / "No se permiten espacios en blanco en el número de finca."* | El número de finca es incorrecto. |
| *"Ya existe la finca+CRU {finca} {CRU} en el registro de la propiedad {registro}."* | Ya existe una finca con esos mismos datos en ese registro. |
| *"El CRU ya se ha designado en otra finca." / "La longitud del CRU debe ser de 14 dígitos."* | El CRU introducido no es válido o ya está en uso. |
| *"No se puede realizar el cambio de estado porque la finca está incluida en un contrato inmobiliario activo ({empresa} {contrato})."* | Se intentó cancelar el estado registral de una finca con un contrato activo. |
| *"El titular es obligatorio." / "No se localizó el titular."* | Falta el titular de una línea, o el tercero indicado no existe. |
| *"El % de titularidad debe ser mayor que 0 y menor o igual a 100."* | Porcentaje de titularidad incorrecto. |
| *"La fecha de titularidad no puede quedar vacía." / "La fecha de enajenación no puede ser posterior a la del título."* | Fechas de titularidad incompletas o incoherentes. |
| *"El titular ya tiene un % asignado en {fecha} que se solapa con el que se pretende establecer en {fecha}."* | Periodos de titularidad del mismo titular solapados. |
| *"El tipo de superficie es obligatorio." / "Ya existe datos para ese tipo de superficie."* | Falta el tipo de superficie, o ya hay una línea de ese tipo. |
| *"La fecha de inscripción es obligatoria." / "La fecha de inscripción no puede ser posterior a la de finalización de la carga."* | Fechas de una carga incompletas o incoherentes. |
| *"La carga con fecha de inscripción {fecha} se solapa con otra carga con fecha de inscripción {fecha}." / "Ya existe la carga en la fecha indicada."* | Solape o duplicidad de cargas del mismo tipo. |

---

[Arriba](#top)
