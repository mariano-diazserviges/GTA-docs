# <a id="top"></a> <img src="../../Media/LaborTotalizador.png" alt="LaborTotalizador" height="40"> Config. totalizadores nómina

**Config. totalizadores nómina** es la ficha donde se configura a qué cuenta contable de Navision se imputa cada concepto salarial (o [totalizador](#concepto-o-totalizador) que agrupa varios conceptos) de una nómina de LABOR. Esta configuración es la que utiliza [Importar nóminas LABOR](LaborContaWindow.html) para generar los asientos contables de cada nómina.

---

<aside class="doc-sidebar">
  <p>En esta página</p>
  <ul>
    <li><a href="#cómo-se-abre">Cómo se abre</a></li>
    <li><a href="#cabecera-el-ámbito-de-configuración">Cabecera: el ámbito de configuración</a></li>
    <li><a href="#la-rejilla-de-totalizadores">La rejilla de totalizadores</a></li>
    <li><a href="#concepto-o-totalizador">Concepto o totalizador</a></li>
    <li><a href="#añadir-una-línea">Añadir una línea</a></li>
    <li><a href="#copiar-configuración-a-otro-ámbito">Copiar configuración a otro ámbito</a></li>
    <li><a href="#avisos-habituales">Avisos habituales</a></li>
  </ul>
  <p>Relacionado</p>
  <ul>
    <li><a href="LaborContaWindow.html">Importar nóminas LABOR</a></li>
    <li><a href="RelDiarioGeneralNavWindow.html">Diario general (Navision)</a></li>
    <li><a href="../../Modulos.html">Módulos</a></li>
    <li><a href="../../UsoGeneral.html">Uso general</a></li>
  </ul>
</aside>

## Cómo se abre

Desde el [Diario general (Navision)](RelDiarioGeneralNavWindow.html#ventanas-relacionadas) o desde [Importar nóminas LABOR](LaborContaWindow.html), botón <img src="../../Media/LaborTotalizador.png" alt="Totalizadores nómina" height="20"> **Totalizadores nómina** de la cinta de opciones.

> La ventana recuerda la empresa y el ámbito de configuración que consultaste la última vez que la abriste.

---

## Cabecera: el ámbito de configuración

La configuración se organiza en cuatro niveles, cada uno disponible solo si el anterior tiene un valor:

| Campo | Descripción |
| --- | --- |
| **Empresa** | Empresa a la que pertenece la configuración. *Obligatoria.* |
| **Nº patronal** | Código de cuenta de cotización a la Seguridad Social. Opcional. |
| **Centro de trabajo** | Centro de trabajo del número patronal indicado. Solo disponible si hay nº patronal. |
| **Categoría salarial** | Categoría del convenio del centro de trabajo indicado. Solo disponible si hay centro de trabajo. |

> Estos tres últimos campos no son filtros acumulativos: si dejas alguno en blanco, la rejilla muestra las líneas configuradas como **genéricas** para ese nivel (las que no tienen ese dato asignado), no la suma de todas las líneas existentes. En cada momento ves un único ámbito de configuración: el que define exactamente la combinación de campos de la cabecera.

---

## La rejilla de totalizadores

Cada fila imputa un concepto o totalizador de nómina a una cuenta contable:

| Columna | Descripción |
| --- | --- |
| **Concepto / Totalizador** | El [concepto salarial o el totalizador](#concepto-o-totalizador) que se imputa en esta línea. |
| **Convenio** | Convenio del concepto salarial. |
| **Tipo de cálculo** | Tipo de cálculo de nómina al que aplica la línea. |
| **Origen del importe** | Qué importe del concepto se toma para el asiento. |
| **Operación** | Operación de agregado a realizar sobre el importe. |
| **Cuenta contable** | Cuenta de Navision donde se contabiliza. Solo se admiten cuentas de tipo Auxiliar. |
| **Signo contable** | Debe o Haber. |
| **Nº proyecto** / **Nº tarea proyecto** | Imputación a proyecto y tarea, si aplica. |
| **% Importe** | Porcentaje del importe del concepto que se contabiliza en esta línea. |

> Salvo el **% Importe**, ninguno de estos campos se teclea directamente: todos se seleccionan mediante su buscador correspondiente.

---

## Concepto o totalizador

Cada línea debe imputar **uno de los dos, nunca ambos a la vez**:

- Un **concepto salarial** concreto de LABOR, o
- Un **totalizador** que agrupa varios conceptos bajo un mismo código (consulta disponible en el mantenimiento de totalizadores de LABOR, accesible desde la cinta de esta misma ventana).

---

## Añadir una línea

Pulsa <img src="../../Media/New.png" alt="Nuevo" height="20"> **Nueva fila** en la cinta de opciones. La nueva línea:

- Hereda automáticamente el nº patronal, centro de trabajo y categoría de la cabecera activa.
- Se precarga con los datos de la última línea que editaste o diste de alta (tipo de cálculo, convenio, cuenta, operación, origen del importe, signo contable, proyecto y tarea).
- Propone automáticamente el **% Importe** repartiendo el 100 % con la línea anterior: si la anterior tenía, por ejemplo, un 60 %, la nueva se propone con un 40 %.

> Es obligatorio haber seleccionado una empresa en la cabecera antes de añadir una línea.
>
> La aplicación no impide guardar un **% Importe** fuera del rango 0-100; revisa manualmente que las líneas de un mismo concepto sumen el porcentaje que corresponda.

---

## Copiar configuración a otro ámbito

Puedes copiar toda la configuración del ámbito activo (empresa/nº patronal/centro/categoría de la cabecera) a otro ámbito distinto, sin tener que rehacerla línea a línea:

1. Activa el interruptor **Copiar en**.
2. Indica el nº patronal, centro de trabajo y categoría de **destino**.
3. Pulsa el botón **Ok** del panel.

> **Esta operación sustituye por completo la configuración del destino.** Si el ámbito de destino ya tiene líneas configuradas, la aplicación pide confirmación antes de continuar. Si respondes que no, no se copia ni se elimina nada.
>
> El buscador de **Centro de trabajo** de destino puede no filtrar correctamente por el número patronal de destino indicado; si no encuentras el centro esperado, comprueba que el código sea el correcto.

Al terminar, la cabecera pasa automáticamente a mostrar el ámbito de destino con la configuración recién copiada.

---

## Avisos habituales

| Aviso | Causa |
| --- | --- |
| *"Debes seleccionar una empresa en la cabecera."* | Se intentó añadir una línea sin empresa en la cabecera. |
| *"La empresa no está asociada a Navision." / "La empresa no está asociada a LABOR."* | La empresa indicada no tiene la integración Navision / Labor configurada. |
| *"El convenio es obligatorio si se introduce un concepto salarial."* | Falta el convenio de una línea con concepto informado. |
| *"El convenio de la categoría salarial tiene que ser el mismo que el del concepto salarial."* | El convenio de la categoría de la cabecera no coincide con el del concepto de la línea. |
| *"Es obligatorio introducir un concepto salarial o un totalizador de nómina."* / *"Solo se puede introducir un concepto salarial o un totalizador de nómina."* | Ver [Concepto o totalizador](#concepto-o-totalizador). |
| *"Nº de cuenta contable obligatorio."* / *"La cuenta debe ser de tipo Auxiliar."* | Falta la cuenta contable, o la cuenta indicada no es de tipo Auxiliar en Navision. |
| *"Nº tarea de proyecto obligatorio."* / *"Nº de proyecto obligatorio."* | Se informó solo uno de los dos campos de proyecto/tarea. |
| *"No hay configuración de copia origen." / "No hay configuración de copia destino."* | Falta información al pulsar Copiar en. |
| *"El origen y destino de la copia son iguales."* | El ámbito de destino coincide exactamente con el de origen. |
| *"No se ha indicado empresa destino."* | Falta la empresa en el panel de copia. |
| *"Si se indica categoría destino, debe establecerse el centro de trabajo destino." / "Si se indica centro de trabajo destino, debe establecerse el número patronal destino."* | Los niveles del destino deben indicarse de forma progresiva, igual que en la cabecera. |
| *"No se localizó la empresa laboral asociada a la empresa." / "No se localizó el número patronal." / "No se localizó el centro de trabajo del número patronal."* | Alguno de los datos de destino no existe en LABOR. |

---

[Arriba](#top)
