# <a id="top"></a> <img src="../../../Media/LibroSocios.png" alt="LibroSocios" height="30"> Libro de socios (TAXOR)

**Libro de socios (TAXOR)** es un visor en árbol que muestra, para las empresas seleccionadas, quiénes son sus socios y qué porcentaje de participación tienen, calculado a la fecha indicada en la cabecera, a partir de los datos de TAXOR.

> Este visor es independiente del sistema de [Accionistas](../LibroSocios/RelAccionistaWindow.html), [Operaciones de Capital](../LibroSocios/RelOperacionCapitalWindow.html) y [Movimientos de accionista](../LibroSocios/RelMovAccionistaWindow.html) alimentado por el procesamiento IA de escrituras: aquí los datos se obtienen desde TAXOR, no desde esas tablas.

---

<aside class="doc-sidebar">
  <p>En esta página</p>
  <ul>
    <li><a href="#cómo-se-abre">Cómo se abre</a></li>
    <li><a href="#modo-de-visualización">Modo de visualización</a></li>
    <li><a href="#actualizar-el-libro-de-socios">Actualizar el libro de socios</a></li>
    <li><a href="#el-árbol">El árbol</a></li>
    <li><a href="#buscar-en-el-árbol">Buscar en el árbol</a></li>
    <li><a href="#exportar-a-excel">Exportar a Excel</a></li>
    <li><a href="#titularidad-real">Titularidad real</a></li>
    <li><a href="#avisos-habituales">Avisos habituales</a></li>
  </ul>
  <p>Relacionado</p>
  <ul>
    <li><a href="LibroSociosRMercantilWindow.html">Emisión libro de socios (Registro Mercantil)</a></li>
    <li><a href="RelTaxorLiqResumenWindow.html">Resumen de liquidaciones periódicas</a></li>
    <li><a href="../../../Modulos.html">Módulos</a></li>
    <li><a href="../../../UsoGeneral.html">Uso general</a></li>
  </ul>
</aside>

## Cómo se abre

Desde la ventana principal, pestaña **Financiero**, grupo **TAXOR**, botón <img src="../../../Media/LibroSocios.png" alt="Libro de socios" height="20"> **Libro de socios**.

---

## Modo de visualización

Dos opciones controlan cómo se organiza el árbol:

| Modo | Descripción |
| --- | --- |
| **Sociedades y sus socios** | Cada sociedad aparece con sus socios directos. |
| **Socios y sus participadas** | Cada socio aparece con las sociedades en las que participa. |

En el modo **Sociedades y sus socios**, la casilla **Mostrar socios sin participaciones** permite incluir en el árbol también los socios que ya no tienen participaciones vigentes, de acuerdo con la echa especificada en la cabecera.

---

## Actualizar el libro de socios

Los datos que se muestran son un cálculo para tu usuario, a partir de los datos de TAXOR. Se debe atualizar cada vez que se haya realizado algún cambio en TAXOR, quieras incluir más empresas o cambien la fecha de cálculo. Para actualizar:

1. Indica la empresa o empresas TAXOR con el botón **Seleccionar cliente TAXOR**.
2. Indica la **Fecha de informe**: la fecha de corte hasta la que se calculan las participaciones.
3. Pulsa **Ejecutar procedimiento TAXOR**. La aplicación pide confirmación: *"Se va a actualizar el Libro de socios a {fecha}\n\n¿Confirmas la actualización?"* y, al terminar, confirma: *"Libro de socios actualizado"*.

> Si cambias la **Fecha de informe** directamente, la aplicación te pregunta si quieres recalcular: *"¿Deseas recalcular el libro de socios?"*
>
> Antes de realizar el cálculo, se deben **seleccionar las empresas TAXOR** que quieras incluir.

---

## El árbol

Cada sociedad muestra su NIF, nombre, y la lista de sus socios con su número de participaciones, su **% de participación** (calculado sobre el total de participaciones vivas de la sociedad) y su **titularidad real** (que tiene en cuenta las cadenas de sociedades participadas entre sí). Al expandir un socio se muestra el detalle de sus movimientos: fecha, tipo de operación, tipo de movimiento, rango de participaciones (desde/hasta), número de participaciones, nominal, % de participación y observaciones.

> Si el nombre de una sociedad o socio no está dado de alta como tercero en GTA, se muestra el texto **"No localizado en tabla terceros"**.
>
> Si una sociedad no tiene configurado en TAXOR "Datos constitución sociedad", se muestra el aviso **"Revisa movimientos socios"**.
>
> Si el árbol detecta un ciclo de participaciones cruzadas entre sociedades (una participa en la otra y viceversa), se señala con el aviso **"Ciclo por participaciones recíprocas"**.

Haz clic derecho sobre un nodo para **Expandir todo el nivel** o **Contraer todo el nivel** (todos los nodos del mismo nivel que el seleccionado).

---

## Buscar en el árbol

El control de búsqueda incremental permite localizar una sociedad o socio por su nombre. No está disponible en el modo **Socios y sus participadas**.

> Si no hay resultados, la aplicación avisa: *"No se encontraron coincidencias."* o, si ya estás en el último resultado encontrado, *"No se encontraron más coincidencias"*.

---

## Exportar a Excel

Cada nodo del árbol tiene un botón para exportar a Excel el detalle de movimientos de esa sociedad (o de todo el árbol, si se exporta desde la raíz), con los totales de operaciones, participaciones, nominal y precio de compra.

---

## Titularidad real

El botón **Titularidad real** (disponible solo en el modo **Sociedades y sus socios**) genera un informe Excel independiente con la titularidad real de cada socio: su porcentaje efectivo de participación teniendo en cuenta las cadenas de sociedades participadas, junto con sus datos personales (nacionalidad, residencia, fecha de nacimiento) y los datos registrales de cada sociedad.

---

## Avisos habituales

| Aviso | Causa |
| --- | --- |
| *"¿Deseas recalcular el libro de socios?"* | Se cambió la fecha de informe. |
| *"Se va a actualizar el Libro de socios"* | Confirmación antes de ejecutar el procedimiento TAXOR. |
| *"No se han seleccionado empresas TAXOR para el procedimiento"* | Se ejecutó el procedimiento sin seleccionar antes ninguna empresa. |
| *"Espera a que termine la ejecución anterior."* | Se intentó actualizar mientras ya había una actualización en curso. |
| *"Se está actualizando el arbol, espera a que termine"* | Se intentó refrescar el árbol mientras se estaba recalculando. |
| *"No se encontraron coincidencias." / "No se encontraron más coincidencias"* | El texto buscado no se encontró en el árbol. |

---

[Arriba](#top)
