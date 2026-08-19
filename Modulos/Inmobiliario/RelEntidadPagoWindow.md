# <a id="top"></a> <img src="../../Media/FormaPago.png" alt="FormaPago" height="30"> Formas de pago de entidades inmobiliarias

**Formas de pago** es el catálogo de plantillas de plan de pagos que se pueden aplicar a un contrato inmobiliario, para no tener que definir los plazos de cada contrato desde cero.

> Este catálogo es global: no está filtrado por empresa.

---

<aside class="doc-sidebar">
  <p>En esta página</p>
  <ul>
    <li><a href="#cómo-se-abre">Cómo se abre</a></li>
    <li><a href="#la-lista-de-formas-de-pago">La lista de formas de pago</a></li>
    <li><a href="#líneas-de-la-forma-de-pago">Líneas de la forma de pago</a></li>
    <li><a href="#usar-una-forma-de-pago-en-un-contrato">Usar una forma de pago en un contrato</a></li>
    <li><a href="#avisos-habituales">Avisos habituales</a></li>
  </ul>
  <p>Relacionado</p>
  <ul>
    <li><a href="EntidadContratoWindow.html">Ficha de contrato inmobiliario</a></li>
    <li><a href="RelTipoPagoEntidadWindow.html">Tipos de pago</a></li>
    <li><a href="../../Modulos.html">Módulos</a></li>
    <li><a href="../../UsoGeneral.html">Uso general</a></li>
  </ul>
</aside>

## Cómo se abre

Desde la ventana principal, pestaña **Inmobiliario**, menú **Tablas**, opción **Formas de pago**.

---

## La lista de formas de pago

| Columna | Descripción |
| --- | --- |
| **Código** | Código de la forma de pago. |
| **Forma de pago** | Descripción. |

---

## Líneas de la forma de pago

Cada forma de pago se compone de una o varias líneas, con los tramos del plan de pagos:

| Columna | Descripción |
| --- | --- |
| **Tipo de pago** | [Tipo de pago](RelTipoPagoEntidadWindow.html) del tramo. |
| **Facturar** | Indica si este tipo de pago genera factura (se calcula a partir del tipo de pago, no es un dato propio de la línea). |
| **Nº plazos** | Número de plazos del tramo. |
| **Tipo de plazo** | Periodicidad de los plazos. |
| **% Precio contrato** / **Importe fijo** | Importe del tramo, como porcentaje del precio del contrato o como importe fijo. Son excluyentes: si informas uno, el otro se pone a cero. |
| **Periodo inicio** | Periodo en que empieza el tramo. Se calcula automáticamente a continuación del tramo anterior. |

---

## Usar una forma de pago en un contrato

Desde la sección de pago de la [ficha de contrato](EntidadContratoWindow.html), el botón **Forma de pago** permite importar todas las líneas de una de estas plantillas al plan de pagos del contrato activo.

> Si el contrato ya tiene líneas de pago, no se puede importar una forma de pago: *"Ya existen líneas en la forma de pago del contrato."* Primero hay que vaciar el plan de pagos del contrato.

---

## Avisos habituales

| Aviso | Causa |
| --- | --- |
| *"Ya existen líneas en la forma de pago del contrato."* | Se intentó importar una forma de pago sobre un contrato que ya tiene líneas de pago. |

---

[Arriba](#top)
