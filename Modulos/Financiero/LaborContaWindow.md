# <a id="top"></a> <img src="../../Media/LaborConta.png" alt="LaborConta" height="40"> Importar nóminas LABOR

**Contabilización de nóminas LABOR** genera, en el [Diario general de Navision](RelDiarioGeneralNavWindow.html), los asientos contables correspondientes a las nóminas ya calculadas en el sistema externo **LABOR**.

---

<aside class="doc-sidebar">
  <p>En esta página</p>
  <ul>
    <li><a href="#cómo-se-abre">Cómo se abre</a></li>
    <li><a href="#parámetros">Parámetros</a></li>
    <li><a href="#contabilizar">Contabilizar</a></li>
    <li><a href="#configuración-de-cuentas-por-concepto">Configuración de cuentas por concepto</a></li>
    <li><a href="#avisos-habituales">Avisos habituales</a></li>
  </ul>
  <p>Relacionado</p>
  <ul>
    <li><a href="RelDiarioGeneralNavWindow.html">Diario general (Navision)</a></li>
    <li><a href="RelLaborTotalizadorWindow.html">Config. totalizadores nómina</a></li>
    <li><a href="../../Modulos.html">Módulos</a></li>
    <li><a href="../../UsoGeneral.html">Uso general</a></li>
  </ul>
</aside>

## Cómo se abre

Desde el [Diario general (Navision)](RelDiarioGeneralNavWindow.html#ventanas-relacionadas), botón <img src="../../Media/LaborConta.png" alt="LaborConta" height="20"> **Importar nóminas LABOR** de la cinta de opciones.

> Esta ventana solo se abre desde dentro del Diario general. Al abrirla, asigna la **Empresa**, el **Libro diario** y la **Sección diario** con los valores del diario desde el que la abriste.

---

## Parámetros

| Campo | Descripción |
| --- | --- |
| **Empresa** | Empresa cuyas nóminas se van a contabilizar. |
| **Año periodo** / **Mes periodo** | Periodo de nómina a contabilizar. |
| **Tipos de cálculo de nómina** | Uno o varios tipos de cálculo de nómina de LABOR a incluir. |
| **Libro diario** / **Sección diario** | Libro y sección del diario general de Navision donde se generarán los asientos. |
| **Nº documento** | Número de documento a asignar. Puedes marcar la casilla **Automático** para que la aplicación lo obtenga de la serie de numeración correspondiente. |

---

## Contabilizar

Al pulsar el botón <img src="../../Media/Ok.png" alt="Ok" height="30"> **Importar nóminas LABOR** de la cinta de opciones, la aplicación:

1. Recupera de LABOR las nóminas ya calculadas para la empresa, el año, el mes y los tipos de cálculo indicados.
2. Consulta la [configuración de cuentas por concepto](#configuración-de-cuentas-por-concepto) para saber a qué cuenta contable imputar cada concepto de nómina.
3. Genera las líneas del asiento en el libro y sección de diario indicados, agrupando importes por cuenta, signo contable y proyecto/tarea, y ajustando cualquier descuadre de redondeo en la última línea.
4. Si marcaste **Automático**, asigna el número de documento según la serie de numeración configurada.

> Al terminar con éxito, la aplicación muestra el [Diario general](RelDiarioGeneralNavWindow.html) con los asientos recién generados, para que los revises antes de contabilizarlos definitivamente en Navision.

---

## Configuración de cuentas por concepto

El mapeo de cada concepto de nómina a su cuenta contable se mantiene en la ficha [**Config. totalizadores nómina**](RelLaborTotalizadorWindow.html), accesible junto al botón <img src="../../Media/LaborConta.png" alt="LaborConta" height="20"> **Importar nóminas LABOR** en la cinta del Diario general.

---

## Avisos habituales

| Aviso | Causa |
| --- | --- |
| *"La empresa no está asociada a una empresa NAVISION."* | La empresa no tiene configurada su empresa Navision correspondiente. |
| *"El usuario no tiene permisos de escritura en NAVISION."* | No tienes permiso para escribir en Business Central. |
| *"No se ha introducido un año válido"* / *"El año periodo de la nómina debe estar comprendido entre 2000 y 2099."* | El año del periodo no es válido. |
| *"El mes periodo de nómina a calcular debe estar comprendido entre 1 y 12."* | El mes del periodo no es válido. |
| *"El valor de Tipos cálculo nómina no se corresponde con ningún tipo de cálculo de nómina en LABOR."* | El tipo de cálculo seleccionado no existe en LABOR. |
| *"El tipo de cálculo ... no tiene configuraciones para su contabilización."* | Falta la configuración de cuentas contables para ese tipo de cálculo. |
| *"No se encontraron transacciones históricas (nóminas) para el periodo."* | No hay nóminas calculadas en LABOR para ese periodo. |
| *"El nº de documento es obligatorio."* | No se indicó número de documento y tampoco se marcó Automático. |

---

[Arriba](#top)
