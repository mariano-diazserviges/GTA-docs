# <a id="top"></a> <img src="../../../Media/LogoGTA.png" alt="LogoGTA" height="30"> Ficha de movimiento de accionista

Un **movimiento de accionista** registra la adquisición o la transmisión de un rango de acciones o participaciones por parte de un [accionista](AccionistaWindow.html), dentro de una [operación de capital](OperacionCapitalWindow.html) concreta.

---

<aside class="doc-sidebar">
  <p>En esta página</p>
  <ul>
    <li><a href="#cómo-se-abre">Cómo se abre</a></li>
    <li><a href="#cabecera">Cabecera</a></li>
    <li><a href="#datos-del-movimiento">Datos del movimiento</a></li>
    <li><a href="#avisos-habituales">Avisos habituales</a></li>
  </ul>
  <p>Relacionado</p>
  <ul>
    <li><a href="RelMovAccionistaWindow.html">Lista de movimientos de accionista</a></li>
    <li><a href="AccionistaWindow.html">Ficha de accionista</a></li>
    <li><a href="OperacionCapitalWindow.html">Ficha de operación de capital</a></li>
    <li><a href="../../../Modulos.html">Módulos</a></li>
    <li><a href="../../../UsoGeneral.html">Uso general</a></li>
  </ul>
</aside>

## Cómo se abre

Desde la [lista de movimientos de accionista](RelMovAccionistaWindow.html): doble clic, `Intro` o **Editar** sobre una fila abre su ficha; **Nuevo** crea un movimiento en blanco para el accionista indicado en la cabecera de la lista.

> Para poder crear un movimiento nuevo, primero debes indicar el accionista en la cabecera de la lista. 
>
> Si la empresa del accionista no tiene ninguna operación de capital registrada todavía, no se pueden crear movimientos.

---

## Cabecera

| Campo | Descripción |
| --- | --- |
| **Empresa** | Empresa del accionista. Solo lectura. |
| **Nombre Accionista** | Accionista al que pertenece el movimiento. Solo lectura. |

---

## Datos del movimiento

| Campo | Descripción |
| --- | --- |
| **Operación de capital** | Operación de capital a la que pertenece el movimiento. *Obligatoria.* Se elige de las operaciones de la empresa del accionista. |
| **Fecha** | Fecha del movimiento. |
| **Tipo de movimiento** | **Adquisición** o **Transmisión**. *Obligatorio.* |
| **Tipo de titularidad** | Pleno dominio, nuda propiedad, usufructo vitalicio o usufructo temporal. *Obligatorio.* |
| **Nº acción desde** / **Nº acción hasta** | Rango de acciones o participaciones del movimiento. Ambos deben ser mayores que cero, y "desde" no puede ser mayor que "hasta". |
| **Nº de acciones** | Número total de acciones del movimiento. Debe coincidir con la diferencia entre "hasta" y "desde" más uno. |
| **Precio** | Precio del movimiento. No puede ser negativo. |
| **Observaciones** | Texto libre. |

> Para registrar una **Transmisión** (venta), el accionista debe tener registrada previamente una **Adquisición** en esa misma operación de capital que cubra el rango de acciones que se transmite.
>
> No puedes registrar dos movimientos con rangos de acciones que se solapen en la misma fecha.

Al guardar un movimiento, la aplicación **recalcula automáticamente las [fechas de alta y baja](AccionistaWindow.html#fechas-de-alta-y-baja) del accionista**.

---

## Avisos habituales

| Aviso | Causa |
| --- | --- |
| *"Tipo de movimiento obligatorio."* / *"Tipo de titularidad obligatorio"* | Falta alguno de estos dos datos. |
| *"El precio no puede ser negativo."* | El precio introducido es negativo. |
| *"La fecha no puede ser anterior a 01-01-1900"* | La fecha introducida es anterior al mínimo admitido. |
| *"Nº de acciones desde no puede cero o negativo." / "Nº de acciones hasta no puede ser cero o negativo."* | El rango de acciones introducido es incorrecto. |
| *"Nº de acciones desde no puede ser superior a Nº de acciones hasta."* | El rango de acciones está invertido. |
| *"El núm. de acciones debe ser la diferncia entre nº desde y nº hasta"* | El número de acciones no coincide con el rango indicado. |
| *"Ya existen movimientos en {fecha} con ese rango de acciones/participaciones."* | El rango de acciones se solapa con otro movimiento en la misma fecha. |
| *"El accionista no tiene una compra previa que cubra ese rango de acciones/participaciones en esta operación de capital."* | Se intentó registrar una transmisión sin una adquisición previa que cubra el rango. |

---

[Arriba](#top)
