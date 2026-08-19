# <a id="top"></a> <img src="../../../Media/LogoGTA.png" alt="LogoGTA" height="30"> Ficha de operación de capital

Una **operación de capital** es un evento societario que crea o modifica el capital social de la empresa (constitución, ampliación, reducción, nueva emisión de acciones, disolución...). Cada operación genera un rango de acciones o participaciones que después se reparte entre los socios mediante [movimientos de accionista](../LibroSocios/MovAccionistaWindow.html).

---

<aside class="doc-sidebar">
  <p>En esta página</p>
  <ul>
    <li><a href="#cómo-se-abre">Cómo se abre</a></li>
    <li><a href="#cabecera">Cabecera</a></li>
    <li><a href="#datos-de-la-operación">Datos de la operación</a></li>
    <li><a href="#avisos-habituales">Avisos habituales</a></li>
  </ul>
  <p>Relacionado</p>
  <ul>
    <li><a href="RelOperacionCapitalWindow.html">Lista de operaciones de capital</a></li>
    <li><a href="AccionistaWindow.html">Ficha de accionista</a></li>
    <li><a href="MovAccionistaWindow.html">Ficha de movimiento de accionista</a></li>
    <li><a href="../EscrituraWindow.html">Ficha de escritura notarial</a></li>
    <li><a href="../../../Modulos.html">Módulos</a></li>
    <li><a href="../../../UsoGeneral.html">Uso general</a></li>
  </ul>
</aside>

## Cómo se abre

- Desde la [lista de operaciones de capital](RelOperacionCapitalWindow.html): doble clic, `Intro` o **Editar** sobre una fila abre su ficha; **Nuevo** crea una operación en blanco.
- Desde las fichas de [Accionista](AccionistaWindow.html) y [Movimiento de accionista](MovAccionistaWindow.html), el botón **Operaciones de Capital** de la cinta lleva a la lista de operaciones de la misma empresa.

---

## Cabecera

| Campo | Descripción |
| --- | --- |
| **Empresa** | Empresa a la que pertenece la operación. Solo lectura. |

---

## Datos de la operación

| Campo | Descripción |
| --- | --- |
| **Tipo de operación** | Constitución, Nueva emisión de acciones, Ampliación de acciones, Ampliación de valor nominal, Reducción de acciones, Reducción de valor nominal, o Disolución. *Obligatorio.* No puede haber dos operaciones del mismo tipo en la misma fecha para la misma empresa. |
| **Serie** | Serie de la operación, si aplica. |
| **Fecha operación** | Fecha en que se realiza la operación. |
| **Fecha documento** | Fecha del documento que la formaliza. |
| **Protocolo** | Número de protocolo notarial, si procede. |
| **Notario** | Notario ante el que se formalizó, si procede. Se selecciona mediante buscador. |
| **Naturaleza escritura** | Descripción libre de la naturaleza de la escritura asociada. |
| **Clase de acciones** | Clasificación de las acciones o participaciones de la operación. *Obligatoria.* |
| **Numeración de acciones** | Numeración asignada a las acciones o participaciones. |
| **Número de acciones** | Número de acciones o participaciones que genera la operación. Debe ser mayor que cero. |
| **Nominal por acción** | Valor nominal de cada acción o participación. No puede ser negativo. |
| **% Desembolso** | Porcentaje desembolsado. No puede ser negativo. |
| **Fecha tope desembolso** | Fecha límite para completar el desembolso. |
| **Prima de emisión** | Importe de la prima de emisión, si la hay. No puede ser negativa. |

---

## Avisos habituales

| Aviso | Causa |
| --- | --- |
| *"El tipo de operación es obligatorio"* | Falta el tipo de operación. |
| *"Ya existe una operación tipo {tipo} en la fecha indicada."* | Ya hay otra operación del mismo tipo en la misma fecha para esta empresa. |
| *"La clase de acciones/participaciones es obligatoria."* | Falta la clase de acciones. |
| *"El número de acciones/participaciones debe ser mayor que cero."* | El número de acciones introducido es cero o negativo. |
| *"El nominal de las acciones/participaciones no puede ser negativo."* | El valor nominal introducido es negativo. |
| *"El % de desembolso no puede ser negativo."* | El porcentaje de desembolso introducido es negativo. |
| *"La prima de emisión no puede ser negativa."* | El importe de la prima introducido es negativo. |

---

[Arriba](#top)
