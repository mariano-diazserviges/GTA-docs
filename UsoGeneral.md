# <a id="top"></a><img src="./Media/LogoGTA.png" alt="HorasParte" height="30"> Uso general de la aplicación

---

<aside class="doc-sidebar">
  <p>En esta página</p>
  <ul>
    <li><a href="#ventanas">Ventanas</a></li>
    <li class="sub"><a href="#ventana-de-relación-lista">Ventana de relación</a></li>
    <li class="sub"><a href="#ventana-de-detalle-ficha">Ventana de detalle</a></li>
    <li><a href="#grupo-gestión-datos-de-la-cinta-de-opciones">Grupo Gestión datos</a></li>
    <li><a href="#búsqueda-de-valores-en-campos">Búsqueda de valores</a></li>
    <li><a href="#filtrado-de-datos">Filtrado de datos</a></li>
  </ul>
  <p>Relacionado</p>
  <ul>
    <li><a href="BusquedaValoresCampos.html">Búsqueda de valores en campos</a></li>
    <li><a href="FindByControl.html">Filtrado de datos</a></li>
  </ul>
</aside>

## Ventanas

Aunque GTA tiene muchas pantallas, casi todas siguen el mismo esquema de dos pasos.

### Ventana lista de datos

Desde la cinta se abre una **ventana lista de datos**, que muestra una tabla con todos los registros del tipo seleccionado. Esta ventana permite:

- **Filtrar y buscar** con el control [filtrado de datos](#filtrado-de-datos) de la cabecera puedes combinar varios campos a la vez y guardar tus filtros para reutilizarlos en futuras sesiones.
- **Ordenar** pulsando en la cabecera de cualquier columna.
- **Seleccionar** uno o varios registros para operar sobre ellos (abrir, imprimir, exportar, etc.).
- **Editar** o **eliminar** los datos mostrados, o **añadir** nuevas filas.
    > No todas las  pantallas tienen habilitada la edición de los datos en la lista.

### Ventana de detalle (ficha)

Al hacer doble clic en una fila, o pulsar el botón correspondiente de la cinta de opciiones, se abre la **ventana de detalle** con el registro completo. Desde aquí puedes:

- Consultar y editar todos los campos.

    > Se debe utilizar la tecla `Tab` para navegar entre campo y campo.

- Navegar por las pestañas internas (líneas de detalle, documentos adjuntos, historial, etc.).
- Los cambios se guardan automáticamente, una vez _validados_, al salir de la caja de texto de edición del campo, o al salir de la ventana.
- Si los cambios realizados no pueden ser validados, aparecerán mensajes de validación debajo de la cinta de opciones.
    > Mientras no queden validados, los datos no se guardarán.
- Para salir de la ventana, basta con pulsar `Esc` o pinchar en el aspa de la esquina superior derecha de la ventana.

    ---

## Grupo «Gestión datos» de la cinta de opciones

<img src="./Media/DataRibbonGroup.png" alt="DataRibbonGroup"/>

La mayoría de ventanas incluyen en la cinta de opciones el grupo **Gestión datos**, que agrupa los botones de gestión de registros. Los botones visibles en cada momento dependen del tipo de ventana, del modo activo y de los permisos del usuario.

<div class="table-gestion-datos" markdown="1">

| Botón | Descripción |
| --- | --- |
| <img src="./Media/New.png" alt="Nueva fila" height="20"/> **Nueva fila** | Añade una nueva fila directamente al final de la tabla de la ventana de relación. |
| <img src="./Media/New.png" alt="Nuevo" height="20"/> **Nuevo** | Crea un nuevo registro y lo abre en la ventana de detalle para cumplimentarlo. |
| <img src="./Media/View.png" alt="Ver" height="20"/> **Ver / Editar** | Abre el registro seleccionado en la ventana de detalle. El nombre del botón cambia según el modo activo y los permisos del usuario. |
| Modos **Ver / Editar lista** | Cambia la tabla de la ventana de relación al modo <img src="./Media/View.png" alt="Ver" height="20"/> **Ver (solo lectura)**: los datos no son editables directamente en la tabla, o <img src="./Media/Edit.png" alt="Editar" height="20"/> **Editar (edición en línea)**: los datos se pueden modificar directamente en la celda. |
| <img src="./Media/Delete.png" alt="Eliminar" height="20"/> **Eliminar** | Elimina el registro o fila seleccionados. Solicita confirmación antes de proceder. |
| <img src="./Media/Refresh.png" alt="Actualizar" height="20"/> **Actualizar** | Recarga los datos desde la base de datos, reflejando los cambios más recientes. |
| <img src="./Media/Anotacion.png" alt="Anotacion" height="20"/> **Anotaciones** | Abre la ventana de anotaciones del registro activo: notas internas, comunicaciones, seguimiento, etc. |
| <img src="./Media/Select.png" alt="Seleccionar" height="20"/> **Seleccionar** | Visible únicamente cuando una ventana se abre en **modo búsqueda** (al pulsar `F4` o `Alt`+`↓` desde un campo de búsqueda). Confirma la selección del registro activo y cierra la ventana de búsqueda. |

</div>

---

## Búsqueda de valores en campos

Consulta [Búsqueda de valores en campos](BusquedaValoresCampos.md) para una descripción de cómo funcionan los campos de búsqueda.

## Filtrado de datos

Consulta [Filtrado de datos](FindByControl.md) para una descripción detallada del control de filtros en las pantallas de relación o listas de datos.

---

[Arriba](#top)
