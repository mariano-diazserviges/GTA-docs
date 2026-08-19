# <a id="top"></a> <img src="../../Media/EntidadRpt.png" alt="EntidadRpt" height="30"> Informe de entidades

**Informe de entidades** genera un libro Excel con los datos de las entidades de una promoción (identificación, localización, fincas, superficies, coeficientes y precios), y también permite el camino inverso: importar esos mismos datos desde un Excel ya modificado para actualizarlos en bloque.

> Este informe es distinto del comando rápido **Informe de entidades** de la [lista de entidades](RelEntidadWindow.html#utilidades), que simplemente exporta a Excel la rejilla tal como se ve en pantalla.

---

<aside class="doc-sidebar">
  <p>En esta página</p>
  <ul>
    <li><a href="#cómo-se-abre">Cómo se abre</a></li>
    <li><a href="#cabecera">Cabecera</a></li>
    <li><a href="#ejecutar-generar-el-informe">Ejecutar: generar el informe</a></li>
    <li><a href="#el-libro-excel-generado">El libro Excel generado</a></li>
    <li><a href="#importar-actualizar-desde-excel">Importar: actualizar desde Excel</a></li>
    <li><a href="#avisos-habituales">Avisos habituales</a></li>
  </ul>
  <p>Relacionado</p>
  <ul>
    <li><a href="RelEntidadRptWindow.html">Configuraciones informes de entidades</a></li>
    <li><a href="EntidadWindow.html">Ficha de entidad inmobiliaria</a></li>
    <li><a href="RelEntidadWindow.html">Lista de entidades inmobiliarias</a></li>
    <li><a href="RelTipoCoefParticipWindow.html">Tipos de coeficiente</a></li>
    <li><a href="RelTipoSuperficieWindow.html">Tipos de superficie</a></li>
    <li><a href="../../Modulos.html">Módulos</a></li>
    <li><a href="../../UsoGeneral.html">Uso general</a></li>
  </ul>
</aside>

## Cómo se abre

Desde la cinta de opciones de la [ficha de entidad](EntidadWindow.html#utilidades-relacionadas) o de la [lista de entidades](RelEntidadWindow.html#utilidades), botón <img src="../../Media/EntidadRpt.png" alt="Informe de entidades" height="20"> **Informe de entidades**.

> La aplicación recuerda, por usuario, los últimos parámetros utilizados: la próxima vez que abras la ventana los encontrarás ya rellenados.

---

## Cabecera

| Campo | Descripción |
| --- | --- |
| **Empresa** | Empresa de las entidades. *Obligatoria.* |
| **Referencia** | Promoción de la que se informa. *Obligatoria.* |
| **Código informe** | [Configuración de informe](RelEntidadRptWindow.html) a utilizar. Se indica mediante buscador. |
| **Vigencia superficies** | Fecha a la que se toman las superficies de las entidades. |
| **Vigencia coeficientes** | Fecha a la que se toman los coeficientes de las entidades. |

Dos botones de opción alternan el modo de la ventana entre **Ejecutar** (generar el informe) e **Importar** (actualizar datos desde un Excel).

---

## Ejecutar: generar el informe

Elige el destino del libro Excel con una de estas tres opciones:

| Opción | Descripción |
| --- | --- |
| **Nuevo libro** | Genera un libro Excel nuevo desde cero. |
| **Plantilla** | Genera el libro a partir de una plantilla Excel existente. *Debes indicar la plantilla.* |
| **Actualiza archivo** | Actualiza un libro Excel ya existente en disco. *Debes indicar el archivo.* |

Puedes además añadir a la lista de **[Coeficientes](RelTipoCoefParticipWindow.html)** y **[Superficies](RelTipoSuperficieWindow.html)** los tipos que quieras que aparezcan en el informe, con los botones de añadir (mediante buscador) y quitar.

---

## El libro Excel generado

El libro resultante tiene cuatro hojas:

| Hoja | Contenido |
| --- | --- |
| **Entidades** | Una fila por entidad: código, identidad, descripción, tipos de entidad, estado del contrato activo, precio vigente, dirección completa, forma de pago, orden DH, finca registral y catastral, dimensión Navision, comentario, y un vínculo a la carpeta documental de la entidad. |
| **Coeficientes** | Una fila por entidad, con una columna por cada tipo de coeficiente incluido, según la vigencia indicada. |
| **Superficies** | Una fila por entidad, con una columna por cada tipo de superficie incluido, según la vigencia indicada. |
| **Precios** | Precios de venta al público vigentes de cada entidad. |

Al terminar, el libro se abre automáticamente en Excel.

---

## Importar: actualizar desde Excel

Indica el **Archivo de importación** (y, opcionalmente, una **Entidad precedente** de referencia) y pulsa el botón de proceso. La aplicación lee el libro y actualiza o crea, según corresponda, entidades, superficies, coeficientes y precios.

> La empresa y la promoción indicadas en el archivo deben coincidir con las indicadas en la cabecera de esta ventana.
>
> Las celdas de superficie, coeficiente o precio que están vacías o a cero se ignoran: no se crean registros con valor cero.
>
> No se puede actualizar la superficie, el coeficiente o el precio de una entidad en una fecha de vigencia que ya se esté usando en algún contrato.
>
> Si alguna entidad tiene un contrato de tipo **Planificación**, la importación puede recalcular automáticamente sus periodos de facturación.

---

## Avisos habituales

| Aviso | Causa |
| --- | --- |
| *"Debe establecerse el código de empresa." / "Debe establecerse el código de referencia de las entidades."* | Falta la empresa o la referencia en la cabecera. |
| *"Configuración de informe no definida (ConfigRpt)."* | Falta el código de informe. |
| *"No se ha introducido la plantilla a utilizar." / "No se encontró el archivo de plantilla Excel."* | Falta la plantilla, o el archivo indicado no existe, con la opción Plantilla. |
| *"No se ha introducido el archivo a actualizar." / "No se encontró el archivo a actualizar ({archivo})."* | Falta el archivo, o no existe, con la opción Actualiza archivo. |
| *"Generación de informe cancelada debido a un error: {mensaje}"* | Error inesperado durante la generación del informe. |
| *"La empresa indicada en el archivo de importación ({empresa}) no corresponde con la configurada para importar ({empresa})."* | La empresa del Excel no coincide con la de la cabecera. |
| *"La promoción indicada en el archivo de importación ({referencia}) no corresponde con la configurada para importar ({referencia})."* | La promoción del Excel no coincide con la de la cabecera. |
| *"La empresa no tiene definida una serie de numeración de entidades inmobiliarias. Revisa la ficha de empresa."* | Falta configurar la serie de codificación de entidades al importar entidades nuevas. |
| *"Error al guardar los datos de entidades. Asegurate de que existen los códigos tipo de entidad, de forma de pago y código postal.{detalle}"* | Algún código referenciado en el Excel no existe en la aplicación. |
| *"No se pudo actualizar superficie, entidad inexistente ({entidad})." / "...precio, entidad inexistente..." / "...el coeficiente, entidad inexistente..."* | Una fila de superficie, precio o coeficiente hace referencia a una entidad que no existe. |
| *"No se pudo actualizar la superficie de la entidad {entidad}, tipo {tipo} vigente a {fecha} por estar siendo utilizada en algún contrato." / "...el precio de la entidad..." / "...el coeficiente de la entidad..."* | Se intentó modificar un valor con vigencia ya utilizada en un contrato. |
| *"No se pudo establecer los vínculos a la documentación de las entidades:\n   {mensaje}"* | Error al generar los vínculos a la carpeta documental en el Excel exportado. |

---

[Arriba](#top)
