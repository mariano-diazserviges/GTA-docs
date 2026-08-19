# <a id="top"></a> <img src="../../Media/Catastro.png" alt="Catastro" height="30"> Ficha de finca catastral

La **ficha de finca catastral** reúne los datos catastrales de una finca (referencia, localización, superficie y titulares) y permite consultarlos directamente en el Catastro.

---

<aside class="doc-sidebar">
  <p>En esta página</p>
  <ul>
    <li><a href="#cómo-se-abre">Cómo se abre</a></li>
    <li><a href="#cabecera">Cabecera</a></li>
    <li><a href="#consultar-el-catastro">Consultar el Catastro</a></li>
    <li><a href="#titularidad">Titularidad</a></li>
    <li><a href="#superficie">Superficie</a></li>
    <li><a href="#utilidades-relacionadas">Utilidades relacionadas</a></li>
    <li><a href="#avisos-habituales">Avisos habituales</a></li>
  </ul>
  <p>Relacionado</p>
  <ul>
    <li><a href="RelFincaCatastralWindow.html">Lista de fincas catastrales</a></li>
    <li><a href="FincaRegistralWindow.html">Ficha de finca registral</a></li>
    <li><a href="RelTipoSuperficieWindow.html">Tipos de superficie</a></li>
    <li><a href="../../Modulos.html">Módulos</a></li>
    <li><a href="../../UsoGeneral.html">Uso general</a></li>
  </ul>
</aside>

## Cómo se abre

Desde la [lista de fincas catastrales](RelFincaCatastralWindow.html): doble clic, **Editar** sobre una fila, o **Nuevo** para crear una finca catastral en blanco.

---

## Cabecera

| Campo | Descripción |
| --- | --- |
| **Referencia catastral** | Referencia catastral de la finca. *Obligatoria y no puede repetirse.* |
| **Tipo de finca catastral** | Clasificación de la finca. |
| **Uso** / **Tipología** | Uso y tipología catastral del inmueble. |
| **Municipio** | Municipio catastral. |
| **Superficie** | Superficie total, con su [tipo de superficie](RelTipoSuperficieWindow.html). |
| **Coeficiente** | Coeficiente de participación catastral. |
| **Antigüedad** | Año de antigüedad del inmueble. |
| **Tipo de vía** / **Nombre de vía** | Dirección catastral. |
| **Número** / **Letra** (1 y 2) | Numeración de policía de la dirección. |
| **Bloque** / **Escalera** / **Planta** / **Puerta** | Dirección postal de la finca. |
| **Código postal** / **Población** | Localización postal, mediante buscador. |
| **Consulta Catastro** | Fecha de la última consulta realizada al Catastro. |
| **Error Catastro** | Descripción del error, si la última consulta falló. |
| **Descripción** | Descripción de la finca. |

> Los campos **Provincia**, **Polígono**, **Parcela**, **Dirección** y **Observaciones**, que se muestran como columnas en la [lista](RelFincaCatastralWindow.html#la-lista), no están disponibles en esta ficha.

---

## Consultar el Catastro

Pulsa el botón <img src="../../Media/GoTo.png" alt="Consultar" height="20"> **Consulta Catastro** para consultar en el Catastro los datos de la referencia catastral indicada. Al terminar, la ficha se actualiza con la fecha de la consulta o, si falló, con la descripción del error.

> Si ya hay una consulta al Catastro en curso, la aplicación te avisa: *"Espera a que acabe la consulta al catastro en curso."*

---

## Titularidad

Histórico de titulares de la finca catastral, con los mismos campos y validaciones que la [titularidad de la finca registral](FincaRegistralWindow.html#titularidad): titular, fecha de título, fecha de enajenación, tipo de título, porcentaje, tipo de titular, datos notariales, documento del título, tomo/libro/folio, régimen conyugal y proindiviso.

---

## Superficie

Igual que en la [finca registral](FincaRegistralWindow.html#superficie): un tipo de superficie obligatorio y único por finca, con su cantidad y observaciones.

> Si cambias la **Superficie** o el **Tipo de superficie** de la cabecera, la línea correspondiente de esta rejilla se crea o actualiza automáticamente para que coincida.

---

## Utilidades relacionadas

Desde la cinta de opciones también se accede a los titulares, las unidades constructivas y el histórico de valores catastrales de la finca, así como a las [fincas registrales](RelFincaRegistralWindow.html).

---

## Avisos habituales

| Aviso | Causa |
| --- | --- |
| *"La referencia catastal es obligatoria."* | Falta la referencia catastral. |
| *"Ya existe una finca con esa referencia catastral."* | La referencia catastral introducida ya está en uso. |
| *"Espera a que acabe la consulta al catastro en curso."* | Se pulsó Consulta Catastro mientras ya había una consulta en marcha. |
| *"El titular es obligatorio." / "No se localizó el titular."* | Falta el titular de una línea, o el tercero indicado no existe. |
| *"El % de titularidad debe ser mayor que 0 y menor o igual a 100."* | Porcentaje de titularidad incorrecto. |
| *"La fecha de titularidad no puede quedar vacía." / "La fecha de enajenación no puede ser posterior a la del título."* | Fechas de titularidad incompletas o incoherentes. |
| *"El titular ya tiene un % asignado en {fecha} que se solapa con el que se pretende establecer en {fecha}."* | Periodos de titularidad del mismo titular solapados. |
| *"El tipo de superficie es obligatorio." / "Ya existe datos para ese tipo de superficie."* | Falta el tipo de superficie, o ya hay una línea de ese tipo. |

---

[Arriba](#top)
