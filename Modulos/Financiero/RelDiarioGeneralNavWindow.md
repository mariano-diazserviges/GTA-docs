# <a id="top"></a> <img src="../../Media/DiarioGeneral.png" alt="DiarioGeneral" height="40"> Diario general (Navision)

**Diario general** es la ventana donde se preparan y editan las líneas de un diario general de Navision/Business Central antes de contabilizarlas. A diferencia de la mayoría de ventanas de la aplicación, aquí **se edita directamente la tabla de líneas de diario de Navision**: los cambios que hagas se escriben de inmediato en Business Central, no en una copia intermedia de GTA.

---

<aside class="doc-sidebar">
  <p>En esta página</p>
  <ul>
    <li><a href="#cómo-se-abre">Cómo se abre</a></li>
    <li><a href="#cabecera">Cabecera</a></li>
    <li><a href="#la-rejilla-de-líneas">La rejilla de líneas</a></li>
    <li><a href="#totales">Totales</a></li>
    <li><a href="#pegar-movimientos">Pegar movimientos</a></li>
    <li><a href="#exportar-a-excel">Exportar a Excel</a></li>
    <li><a href="#ir-a-navision">Ir a Navision</a></li>
    <li><a href="#ventanas-relacionadas">Ventanas relacionadas</a></li>
    <li><a href="#avisos-habituales">Avisos habituales</a></li>
  </ul>
  <p>Relacionado</p>
  <ul>
    <li><a href="LaborContaWindow.html">Contabilización de nóminas LABOR</a></li>
    <li><a href="RelLaborTotalizadorWindow.html">Config. totalizadores nómina</a></li>
    <li><a href="../../Modulos.html">Módulos</a></li>
    <li><a href="../../UsoGeneral.html">Uso general</a></li>
  </ul>
</aside>

## Cómo se abre

Desde la ventana principal, pestaña **Financiero**, grupo **Navision**, botón <img src="../../Media/DiarioGeneral.png" alt="Diario general" height="20"> **Diario general**.

---

## Cabecera

| Campo | Descripción |
| --- | --- |
| **Empresa** | Empresa cuyo diario se está editando. |
| **Libro diario** | Libro diario (`JournalTemplateName`) de Navision. |
| **Sección diario** | Sección del libro diario (`JournalBatchName`). |
| **Tipo documento** | Tipo de documento por defecto para las nuevas líneas. |
| **Tipo cuenta** / **Nº cuenta** | Cuenta contable por defecto, usada al pegar movimientos. |
| **Tipo cuenta contrapartida** / **Nº cuenta contrapartida** | Cuenta contable de contrapartida por defecto, usada al pegar movimientos. |

---

## La rejilla de líneas

| Columna | Descripción |
| --- | --- |
| **Tipo documento** / **Nº documento** | Identificación del documento contable. |
| **Naturaleza** | Naturaleza contable de la línea. |
| **Descripción** | Descripción de la línea. |
| **Fecha contabilización** | Fecha de la línea. |
| **Tipo cuenta** / **Nº cuenta** | Cuenta contable de la línea. |
| **Importe debe** / **Importe haber** | Importes de la línea. |
| **Tipo cuenta contrapartida** / **Nº cuenta contrapartida** | Cuenta de contrapartida, si se usa. |
| **Nº proyecto** / **Nº tarea proyecto** / **Cantidad proyecto** | Imputación a proyecto/tarea, si aplica. |

> Si informas un proyecto o tarea de proyecto, la **cantidad proyecto** no puede quedar en cero, y viceversa: solo puede tener un valor distinto de cero si el proyecto o la tarea están informados.

---

## Totales

Debajo de la rejilla de líneas, un panel de solo lectura recalcula automáticamente los totales cada vez que añades, editas o refrescas una línea: un subtotal por cada número de documento, y una fila final con la suma global del Debe y el Haber de todo lo mostrado.

---

## Pegar movimientos

El botón **Pegar movimientos** de la cinta de opciones toma datos con formato CSV del portapapeles (por ejemplo, copiados desde Excel) y los inserta como nuevas líneas del diario, resolviendo automáticamente cliente/proveedor/banco/cuenta según el tipo de cuenta, las dimensiones por defecto y la numeración de documentos.

> Antes de pegar, comprueba que el portapapeles contenga datos con el formato esperado y que todas las columnas necesarias estén presentes. Si algo falta o no tiene el formato correcto, la aplicación te lo indica en lugar de pegar los datos (ver [Avisos habituales](#avisos-habituales)).

---

## Exportar a Excel

Desde el menú de la aplicación puedes exportar el contenido de la rejilla a un libro Excel.

---

## Ir a Navision

El botón **Navegar** abre directamente en Business Central la página del diario general, filtrada por el libro y la sección activos.

> La contabilización definitiva ("posting") del diario se realiza en Business Central, no desde esta ventana: GTA solo prepara y edita las líneas.

---

## Ventanas relacionadas

Desde la cinta de opciones de esta ventana se puede acceder a:

| Botón | Descripción |
| --- | --- |
| <img src="../../Media/LaborConta.png" alt="LaborConta" height="30"> [**Importar nóminas LABOR**](LaborContaWindow.html) | Genera en este diario los asientos de las nóminas calculadas en LABOR. |
| <img src="../../Media/LaborTotalizador.png" alt="Config. totalizadores nómina" height="30"> [**Totalizadores nómina**](RelLaborTotalizadorWindow.html) | Configura a qué cuenta contable se imputa cada concepto o totalizador de nómina, usada por el proceso anterior. |

---

## Avisos habituales

| Aviso | Causa |
| --- | --- |
| *"Faltan parámetros de importación."* / *"No se ha establecido la lista de campos a importar."* | Configuración incompleta del pegado de movimientos. |
| *"El usuario no tiene permisos de escritura en Navision."* | No tienes permiso para escribir en Business Central. |
| *"El portapapeles está vacío."* / *"El portapapeles no contiene datos."* | No hay nada copiado al pulsar Pegar movimientos. |
| *"Los datos del portapapeles no tienen un formato válido."* | El contenido copiado no es un CSV válido. |
| *"Falta columna ..."* | Falta una columna obligatoria en los datos pegados. |
| *"Línea {n}: El tipo de datos de la columna '...' tiene que ser Fecha/hora"* (o "Numérico") | El valor de esa columna no tiene el tipo esperado. |
| *"Falta empresa."* | No se ha indicado la empresa antes de pegar movimientos. |
| *"Falta nº cuenta movimiento por defecto en cabecera de importación."* | Falta la cuenta contable por defecto en la cabecera. |
| *"Falta sección diario."* / *"La sección del diario no tiene definida una serie de numeración de documentos."* | La sección del diario indicada no está completa. |
| *"Cantidad proyecto no puede ser cero si se informa proyecto o tarea proyecto."* / *"Cantidad proyecto solo puede tener un valor distinto de cero si se informa proyecto o tarea proyecto."* | Incoherencia entre la imputación a proyecto/tarea y la cantidad. |

---

[Arriba](#top)
