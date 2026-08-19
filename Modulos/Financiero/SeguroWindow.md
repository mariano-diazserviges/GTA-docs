# <a id="top"></a> <img src="../../Media/LogoGTA.png" alt="LogoGTA" height="30"> Ficha de póliza de seguro

La **ficha de póliza** reúne todos los datos de una póliza de seguro: sus primas y pagos, los capitales asegurados, las franquicias, y los terceros que intervienen en ella (aseguradora, tomador, asegurado, agente y beneficiario).

---

<aside class="doc-sidebar">
  <p>En esta página</p>
  <ul>
    <li><a href="#cómo-se-abre">Cómo se abre</a></li>
    <li><a href="#cabecera">Cabecera</a></li>
    <li><a href="#primas">Primas</a></li>
    <li class="sub"><a href="#pagos-de-una-prima">Pagos de una prima</a></li>
    <li class="sub"><a href="#aviso-de-vencimiento-en-microsoft-to-do">Aviso de vencimiento</a></li>
    <li><a href="#capitales-asegurados">Capitales asegurados</a></li>
    <li><a href="#franquicias">Franquicias</a></li>
    <li><a href="#terceros-de-la-póliza">Terceros de la póliza</a></li>
    <li><a href="#avisos-habituales">Avisos habituales</a></li>
  </ul>
  <p>Relacionado</p>
  <ul>
    <li><a href="RelSeguroWindow.html">Lista de pólizas de seguros</a></li>
    <li><a href="../../Modulos.html">Módulos</a></li>
    <li><a href="../../UsoGeneral.html">Uso general</a></li>
  </ul>
</aside>

## Cómo se abre

Desde la [lista de pólizas](RelSeguroWindow.html):

- Haz doble clic en una póliza, pulsa `Intro` sobre ella, o selecciónala y pulsa **Editar** — se abre su ficha completa.
- Pulsa <img src="../../Media/New.png" alt="Nuevo" height="20"> **Nuevo** — se abre la ficha en blanco, en modo alta, con el foco en el campo **Póliza**.

> El usuario debe tener permisos suficientes tanto para acceder como para crear nuevos registros de pólizas.
>
> Si la lista de recursos de la póliza tiene algún elemento, solo los usuarios asociados a dichos recursos tendrán acceso a la póliza.

---

## Cabecera

| Campo | Descripción |
| --- | --- |
| **Póliza** | Número de póliza asignado por la aseguradora. No puede haber 2 pólizas con el mismo número. *Obligatorio.* |
| **Tipo de póliza** | Clasificación de la póliza. |
| **Descripción** | Descripción corta de la póliza. *Obligatoria.* |
| **Referencia** | Proyecto o referencia asociada a la póliza, si aplica. Se selecciona mediante <a href="../../BusquedaValoresCampos.html">buscador</a>; pulsa sobre ella para ir a su ficha. |
| **Ramo** | Ramo del seguro (hogar, vida, responsabilidad civil, etc.). Se selecciona mediante <a href="../../BusquedaValoresCampos.html">buscador</a>; pulsa sobre él para ir al mantenimiento de ramos. |
| **Estado** | Estado de la póliza. |
| **Observaciones** | Texto libre. |
| **Documentación** | Documentos vinculados a la póliza (ver [Anotaciones](../Docum/RelDocumWindow.html#vincular-documentos)). |

---

## Primas

Cada póliza puede tener varias primas a lo largo del tiempo (una por periodo de vigencia). La rejilla de primas muestra:

| Columna | Descripción |
| --- | --- |
| <img src="../../Media/MicrosoftToDo.png" alt="Generar tarea To-Do" height="20"> | Genera un aviso de vencimiento en Microsoft To Do para esta prima (ver [Aviso de vencimiento](#aviso-de-vencimiento-en-microsoft-to-do)). |
| **Inicio** / **Fin** | Periodo de vigencia de la prima. |
| **Prima** | Importe de la prima. Pulsa el botón situado junto al importe para abrir sus [pagos](#pagos-de-una-prima). |
| **Activo** | Casilla que marca la prima vigente de la póliza. |
| **IBAN** | Cuenta de cargo de la prima. |
| **Documentación** | Documentos vinculados a esta prima. |

> Solo puede haber una prima **Activa** por póliza: al marcar una como activa, las demás se desmarcan automáticamente. Si ninguna prima quedara activa, la aplicación reactiva automáticamente la última que se modificó.
>
> Si la prima tiene [detalle de pagos](#pagos-de-una-prima) registrados, su importe deja de poder editarse directamente en esta columna: a partir de ese momento, el importe de la prima se recalcula siempre como la suma de su detalle de pagos.

---

### Pagos de una prima

Al pulsar el botón situado junto al importe de una prima se abre un panel con el detalle de los pagos:

| Campo | Descripción |
| --- | --- |
| **Fecha** | Fecha del pago. |
| **Importe** | Importe a pagar. |
| **Observaciones** | Texto libre. Cualquier anotación asociada con la gestión del pago de la prima. |
| **Documentación** | Documentos vinculados a este pago (por ejemplo, el recibo). |

> Cada vez que añades, editas o eliminas un pago, la aplicación **recalcula automáticamente el importe total de la prima** como la suma de todos sus pagos.
>
> No se pueden registrar dos pagos en la misma fecha para la misma prima.

---

### Aviso de vencimiento en Microsoft To Do

Los campos **Lista de tareas** y **Días de preaviso** (90 días por defecto) de la sección de primas controlan el aviso de vencimiento:

1. Indica en **Lista de tareas** la lista de Microsoft To Do donde quieres recibir el aviso.
2. Pulsa el botón <img src="../../Media/MicrosoftToDo.png" alt="Generar tarea To-Do" height="20"> de la fila de la prima que quieras avisar.
3. Se crea una tarea titulada **"{Tomador} Vencimiento prima póliza {Póliza} {Descripción}"**, con fecha de inicio la de inicio de la prima, fecha límite su fecha de fin, y un recordatorio que salta **Días de preaviso** días antes del fin de vigencia.

> Utiliza una **lista compartida** de To Do para que los avisos se desplieguen a varios usuarios.
>
> Solo es posible generar un aviso To Do por prima.

---

## Capitales asegurados

Detalle de los elementos (equipos, infraestructura) cubiertos por la póliza y su capital asegurado:

| Columna | Descripción |
| --- | --- |
| **Empresa** | Empresa propietaria del elemento. Se autocompleta con el tomador de la póliza al dar de alta una línea. |
| **Elemento** | Elemento asegurado. Se selecciona mediante <a href="../../BusquedaValoresCampos.html">buscador</a>; pulsa sobre él para ir a su ficha. |
| **Categoría** | Categoría del capital asegurado. |
| **Cantidad** | Número de unidades aseguradas. Mínimo 1. |
| **Capital asegurado** | Importe asegurado. |
| **Observaciones** | Texto libre. |
| **Vigencia** / **Vigencia fin** | Periodo de vigencia de este capital asegurado para el elemento. |

Encima de la rejilla, la casilla **Solo capital vigente** filtra la lista para mostrar únicamente las líneas cuya vigencia incluye la fecha de hoy. Un botón adicional <img src="../../Media/SeguroElemento.png" alt="SeguroElemento.png" height="20"> permite consultar el **histórico de aseguramiento** del elemento seleccionado, es decir, en qué otras pólizas ha estado o está asegurado.

> Si el elemento que estás asegurando **ya está asegurado en otra póliza**, la aplicación te avisa (sin impedir guardar los cambios).
>
> No se pueden repetir el mismo elemento y categoría con vigencias que se solapen.

---

## Franquicias

| Columna | Descripción |
| --- | --- |
| **Franquicia** | Descripción de la franquicia. *Obligatoria.* |
| **Vigencia** / **Vigencia fin** | Periodo de vigencia de la franquicia. |
| **Importe fijo** | Importe fijo de franquicia. |
| **Importe mínimo** / **Importe máximo** | Límites del importe de franquicia cuando se calcula por porcentaje. |
| **% Siniestro** | Porcentaje sobre la valoración del siniestro con el que se calcula la franquicia. |

---

## Terceros de la póliza

La ficha tiene una sección para cada uno de los cinco roles que puede tener un tercero en la póliza:

 **Aseguradora**: La empresa que asume el riesgo y se compromete a pagar la indemnización o prestación pactada a cambio del cobro de una prima.

 **Tomador**: La persona (física o jurídica) que firma el contrato con la aseguradora y se obliga a pagar la prima. No siempre coincide con el asegurado.

 **Asegurado**: La persona cuyo interés, vida, salud o bienes están cubiertos por el seguro. Es sobre quien recae el riesgo asegurado.

 **Agente**: El intermediario (persona o entidad) que promueve, asesora y facilita la contratación de seguros en representación de una o varias aseguradoras.

 **Beneficiario**: La persona designada para recibir la indemnización o prestación en caso de que ocurra el siniestro (por ejemplo, en un seguro de vida, quien cobra el capital al fallecer el asegurado).

Las cinco secciones tienen la misma estructura:

| Columna | Descripción |
| --- | --- |
| **Tercero** | Tercero GTA, seleccionado mediante <a href="../../BusquedaValoresCampos.html">buscador</a>. |
| **Nombre comercial** | Solo lectura, derivado del tercero. |
| **Contacto** | Botón que abre la ficha de contacto del tercero. |
| **Principal** | Casilla que marca el tercero principal de ese rol para la póliza. |
| **Observaciones** | Texto libre. |

> Solo puede haber un tercero marcado como **Principal** por cada rol y póliza; al marcar uno, los demás del mismo rol se desmarcan automáticamente. El tercero principal de cada rol es el que se muestra como columna resumen en la [lista de pólizas](RelSeguroWindow.html#la-lista).
>

---

## Avisos habituales

| Aviso | Causa |
| --- | --- |
| *"Nº de póliza obligatorio." / "Descripción de la póliza obligatoria."* | Falta el número de póliza o la descripción en la cabecera. |
| *"Elemento obligatorio." / "Elemento inexistente."* | Falta el elemento, o el código introducido no existe, en una línea de capital asegurado. |
| *"El importe del capital asegurado debe ser mayor que cero." / "la cantidad debe ser, como mínimo, 1."* | Datos incorrectos en una línea de capital asegurado. |
| *"La categoría de capital asegurado es obligatoria."* | Falta la categoría en una línea de capital asegurado. |
| *"Ya existe un elemento para la categoría y vigencia introducidos."* | Se repitió el mismo elemento y categoría con vigencias que coinciden. |
| *"La descripción de la franquicia es obligatoria." / "El importe de la franquicia debe ser mayor que cero."* | Datos incompletos o incorrectos en una línea de franquicia. |
| *"La fecha inicio no puede ser posterior a la fecha final."* | Fechas de una prima incoherentes. |
| *"El importe de la prima debe ser mayor que cero."* | Importe incorrecto en una prima. |
| *"El periodo indicado para la prima se solapa con otro."* | Ya existe otra prima con un periodo de vigencia que se solapa. |
| *"El importe del pago de prima debe ser mayor que cero."* | Importe incorrecto en un pago de prima. |
| *"Tercero inexistente."* | El código de tercero introducido en alguno de los roles no existe. |
| *"No se localizó el elemento."* | El elemento indicado en un capital asegurado ya no existe al consultar su histórico. |
| *"El usuario no tiene acceso a la lista de tareas pendientes To-Do."* | No tienes permiso sobre la lista de Microsoft To Do indicada para generar el aviso de vencimiento. |

---

[Arriba](#top)
