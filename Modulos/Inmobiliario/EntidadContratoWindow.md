# <a id="top"></a> <img src="../../Media/EntidadContrato.png" alt="EntidadContrato" height="30"> Ficha de contrato inmobiliario

La **ficha de contrato** gestiona un contrato de venta o alquiler de una o varias entidades inmobiliarias: sus datos generales, la transmisión notarial, las entidades incluidas, los clientes, el plan de pagos, la anulación y la documentación asociada.

---

<aside class="doc-sidebar">
  <p>En esta página</p>
  <ul>
    <li><a href="#cómo-se-abre">Cómo se abre</a></li>
    <li><a href="#contrato">Contrato</a></li>
    <li><a href="#estados-del-contrato">Estados del contrato</a></li>
    <li><a href="#transmisión">Transmisión</a></li>
    <li><a href="#entidad">Entidad</a></li>
    <li><a href="#cliente">Cliente</a></li>
    <li><a href="#pago-y-plan">Pago y Plan</a></li>
    <li><a href="#anulación">Anulación</a></li>
    <li><a href="#documentos">Documentos</a></li>
    <li><a href="#adendas">Adendas</a></li>
    <li><a href="#avisos-habituales">Avisos habituales</a></li>
  </ul>
  <p>Relacionado</p>
  <ul>
    <li><a href="RelEntidadContratoWindow.html">Contratos inmobiliarios</a></li>
    <li><a href="RelEntidadContratoCliWindow.html">Clientes con contrato</a></li>
    <li><a href="RelEntidadContratoPerWindow.html">Periodos de facturación</a></li>
    <li><a href="EntidadContratoGenPerWindow.html">Generación de periodos</a></li>
    <li><a href="RelEntidadPagoWindow.html">Formas de pago</a></li>
    <li><a href="RelTipoPagoEntidadWindow.html">Tipos de pago</a></li>
    <li><a href="RelEntidadContratoDocCompWindow.html">Composición de documento</a></li>
    <li><a href="EntidadWindow.html">Ficha de entidad inmobiliaria</a></li>
    <li><a href="../../Modulos.html">Módulos</a></li>
    <li><a href="../../UsoGeneral.html">Uso general</a></li>
  </ul>
</aside>

## Cómo se abre

Desde la [lista de contratos](RelEntidadContratoWindow.html): doble clic, **Editar** sobre una fila, o **Nuevo** para crear un contrato en blanco.

---

## Contrato

| Campo | Descripción |
| --- | --- |
| **Código contrato** | Se genera automáticamente según la serie de la empresa si se deja en blanco. |
| **Contrato** | Descripción del contrato. *Obligatoria.* |
| **Tipo de contrato** | Venta, Alquiler, Anexo o Planificación. *Obligatorio.* Solo se puede cambiar mientras el contrato está en estado **Preparación**. |
| **Empresa** / **Referencia** | Solo lectura. |
| **Fecha de reserva** / **Fecha de contrato** / **Fecha de escritura** | Fechas del ciclo de vida del contrato; cada una solo es editable en los estados que le corresponden (ver [Estados del contrato](#estados-del-contrato)). |
| **Precio** | Suma de los precios de venta al público de las entidades incluidas en el contrato. Solo lectura. |
| **Observaciones** | Texto libre. |

> Un contrato de tipo **Planificación** no admite clientes ni documentos.

---

## Estados del contrato

| Estado | Significado |
| --- | --- |
| **Preparación** | Estado inicial. Es el único estado en el que se puede cambiar el **Tipo de contrato**. |
| **Reserva** | El contrato tiene ya clientes con sus porcentajes de participación y facturación. |
| **Contrato** | El contrato está formalizado con fecha de contrato. |
| **Escritura** | La transmisión está formalizada ante notario. |
| **Anulado** | El contrato se anuló. |
| **Planificación** | Estado exclusivo de los contratos de tipo Planificación; se asigna automáticamente y no se puede cambiar manualmente desde el menú de estado. |

> Los nombres exactos que se muestran en pantalla para cada estado pueden variar ligeramente respecto a esta tabla, ya que se configuran en la propia aplicación.

Al avanzar de estado, la aplicación exige progresivamente más datos completos: para pasar a **Reserva** hace falta al menos un cliente cuyos porcentajes de participación y de facturación sumen el 100 %; para pasar a **Contrato** hace falta la fecha de contrato y que la titularidad de los clientes sea coherente (nuda propiedad/usufructo); para pasar a **Escritura** hace falta la fecha de escritura, el notario y el número de protocolo.

> No se puede cambiar el estado si hay errores de validación pendientes en el contrato.
>
> El botón **Calcular usufructo** de la sección Cliente solo está disponible en los estados Preparación y Reserva.

---

## Transmisión

Esta sección solo aparece en contratos de tipo **Venta**, y solo en los estados **Contrato** o **Escritura**.

| Campo | Descripción |
| --- | --- |
| **Fecha de escritura** | Fecha de la escritura o título de transmisión. |
| **Tipo de título de transmisión** | Tipo de título (documento público, privado...). |
| **% Transmisión** | Porcentaje transmitido, por defecto 100 %. |
| **Notario** / **Nº protocolo** | Solo se muestran si el tipo de título es documento público (escritura notarial). |
| **Documentación** | Documentos de la escritura o título de venta. |

El botón **Actualizar titularidad de fincas** traslada estos datos (fecha, notario, protocolo, porcentaje) a los titulares de las fincas registrales y catastrales de las entidades del contrato.

> Este botón exige que el contrato sea de tipo Venta, que esté en estado Contrato o Escritura, que tenga fecha de escritura, y que sus entidades tengan finca registral o catastral asociada.

---

## Entidad

Rejilla con las entidades incluidas en el contrato. Cada línea muestra la entidad y su precio de venta al público; puedes elegir un precio del histórico de la entidad para aplicarlo a esa línea.

---

## Cliente

Rejilla de clientes o cotitulares del contrato:

| Columna | Descripción |
| --- | --- |
| **Cliente** | Tercero relacionado. |
| **% Participación** / **% Facturación** | Porcentajes del cliente sobre el contrato. Entre todos los clientes deben sumar el 100 % (salvo los marcados como Depósito). |
| **% Depósito** | Marca al cliente como depósito, no como titular real. Al marcarlo se resetean automáticamente la titularidad y los porcentajes de participación/facturación de esa línea. |
| **Tipo de titularidad** | Pleno dominio, nuda propiedad o usufructo. |
| **Estado civil** / **Régimen matrimonial** | El régimen solo se admite si el estado civil es Casado. |
| **Profesión** | Texto libre. |
| **Nº años usufructo** / **% Usufructo** / **Valor usufructo** / **Valor nuda propiedad** | Datos del usufructo, si aplica. |
| **Tratamiento** / **Género** | Datos de tratamiento del cliente. |
| **Observaciones** | Texto libre. |

El botón **Calcular usufructo** (disponible solo en Preparación/Reserva) calcula automáticamente los valores de usufructo y nuda propiedad de los clientes.

> Debes introducir al menos un cliente, y sus porcentajes de participación y de facturación deben sumar el 100 % antes de pasar el contrato a Reserva.
>
> Si algún cliente adquiere la nuda propiedad, debe haber otro u otros con el usufructo (y viceversa); el valor conjunto de usufructo y nuda propiedad debe igualar el valor del contrato.

---

## Pago y Plan

La sección **Pago** define el plan de pagos del contrato (tramos con su [tipo de pago](RelTipoPagoEntidadWindow.html), número de plazos, periodicidad, y un importe fijo o un porcentaje del precio del contrato, mutuamente excluyentes). Puedes importar un plan completo desde el catálogo de [Formas de pago](RelEntidadPagoWindow.html) en lugar de definirlo línea a línea. Su botón **Generar periodos** abre la ventana de [generación de periodos](EntidadContratoGenPerWindow.html), donde eliges el rango a generar.

La sección **Plan** muestra los periodos de facturación ya generados (consulta [Periodos de facturación](RelEntidadContratoPerWindow.html) para el detalle de cada uno). Su propio botón **Generar periodos** no abre ninguna ventana: regenera de una vez, a partir de las fechas de planificación de cada pago, todos los periodos que falten.

> Ambos botones de generación de periodos están disponibles salvo cuando el contrato está en estado Escritura o Anulado, o no está activo.
>
> Si el total de los pagos previstos no coincide con el precio del contrato, la aplicación avisa y no genera los periodos: *"Existen una diferencia de {importe}€ entre el precio del contrato y el total de pagos previstos.\n\nNo se pueden generar periodos de pago"*.

---

## Anulación

Esta sección solo aparece cuando el contrato está en estado **Anulado**:

| Campo | Descripción |
| --- | --- |
| **Texto registro anulación** | Texto de registro para los documentos de venta que anulan la facturación del contrato. |
| **Fecha registro anulación** | Fecha de ese registro. |
| **Tipo de pago anulación** | Tipo de pago de la línea del periodo de anulación. No puede ser un tipo de pago facturable. |

Al anular un contrato, la aplicación te ofrece reasignar sus entidades a un contrato de tipo **Planificación** ya existente: *"¿Quieres incluir las entidades del contrato ya anulado en el contrato de planificación existente?"*

---

## Documentos

| Columna | Descripción |
| --- | --- |
| **Línea** | Número de línea. |
| **Tipo de documento** | Clasificación del documento. |
| **Descripción** | Descripción del documento. |
| **Documento** | Archivo vinculado. Pulsa el icono de lista de vínculos para abrir su [composición](RelEntidadContratoDocCompWindow.html): con qué elementos y en qué orden se genera este documento. |

---

## Adendas

Un contrato puede tener adendas: contratos vinculados al principal (mismo `Código contrato padre`, distinto `Código contrato`), que se muestran en un listado lateral. El botón **Nueva adenda** crea una:

> *"La adición de una adenda bloqueará el contrato padre y adendas anteriores, que solo se mostrarán como histórico a efectos informativos.\n\n¿Confirmas la adición de una nueva adenda?"*
>
> Los [periodos de facturación](RelEntidadContratoPerWindow.html) siempre se muestran del **contrato padre**, aunque tengas activa una adenda.

---

## Avisos habituales

| Aviso | Causa |
| --- | --- |
| *"La descripción del contrato no puede quedar en blanco"* | Falta la descripción del contrato. |
| *"Es obligatorio indicar el tipo de contrato"* | Falta el tipo de contrato. |
| *"Solo se puede establecer el tipo cuando el contrato tiene estado 'Preparación'"* | Se intentó cambiar el tipo de contrato fuera de ese estado. |
| *"No se permiten clientes ni documentos en contratos de tipo Planificación"* | Se intentó añadir un cliente o documento a un contrato de planificación. |
| *"La fecha de reserva es obligatoria." / "Debe introducirse al menos un cliente." / "La participación de los clientes debe sumar 100%." / "el % de facturación de los clientes debe sumar 100%."* | Faltan datos para pasar el contrato a Reserva. |
| *"La fecha de contrato es obligatoria." / "La fecha de contrato no puede ser anterior a la de reserva."* | Fechas incompletas o incoherentes para pasar a Contrato. |
| *"Falta régimen matrimonial en el cliente..." / "No se permite régimen matrimonial con estado civil ... en el cliente..."* | Incoherencia entre estado civil y régimen matrimonial de un cliente. |
| *"Si algún cliente adquiere la nuda propiedad, debe establecerse otro u otros con el usufructo." / "Si algún cliente adquiere el usufructo, debe establecerse otro u otros con la nuda propiedad."* | Falta la contrapartida de titularidad entre los clientes. |
| *"El valor del usufructo más la nuda propiedad calculado para los clientes debe ser igual al valor del contrato."* | Los valores de titularidad no cuadran con el valor del contrato. |
| *"La fecha de escritura es obligatoria." / "La fecha de escritura no puede ser anterior a la fecha de contrato." / "Falta notario de la escritura." / "Debe introducirse el número de protocolo de la escritura."* | Faltan datos de Transmisión para pasar a Escritura. |
| *"No se puede cambiar el estado: hay entidades con contratos vigentes"* | Se intentó reactivar un contrato anulado cuyas entidades ya están en otro contrato activo. |
| *"No se permite cambiar el estado a {estado} porque el contrato tiene facturación"* | Se intentó volver a Preparación un contrato que ya tiene facturación generada. |
| *"No se ha introducido cliente de contrato" / "Debes introducir al menos un porcentaje, o marcar depósito."* | Falta información básica de una línea de cliente. |
| *"Si se marca 'Depósito' no se puede establecer la titularidad del cliente." / "Debe establecerse la titularidad del cliente." / "Debe indicarse el porcentaje de participación de la nuda propiedad." / "No se permite % de participación si el tipo de titularidad es usufructo temporal o vitalicio" / "Debe indicarse número de años si la titularidad es usufructo temporal."* | Incoherencias en los datos de titularidad de un cliente. |
| *"Ya existen líneas en la forma de pago del contrato."* | Se intentó importar una forma de pago sobre un plan que ya tiene líneas. |
| *"Existen una diferencia de {importe}€ entre el precio del contrato y el total de pagos previstos.\n\nNo se pueden generar periodos de pago"* | El plan de pagos no cuadra con el precio del contrato. |
| *"El tipo de pago para anulación de contrato no puede ser facturable."* | El tipo de pago elegido para la anulación es de un tipo que factura. |
| *"No se ha establecido el contrato a procesar." / "El contrato no es de venta y no puede generar cambios en la titularidad de las fincas." / "El estado del contrato tiene que ser Contrato ó Escritura." / "El contrato no tiene fecha de escritura." / "Las entidades del contrato no están asociadas a fincas registrales o catastrales."* | Condiciones no cumplidas para actualizar la titularidad de fincas. |

---

[Arriba](#top)
