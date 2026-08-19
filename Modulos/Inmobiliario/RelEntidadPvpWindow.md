# <a id="top"></a> <img src="../../Media/EntidadPVP.png" alt="EntidadPVP" height="30"> Precios (PVP) de una entidad

**Precios** es el histórico de precios de venta al público (PVP) de una entidad inmobiliaria a lo largo del tiempo.

---

<aside class="doc-sidebar">
  <p>En esta página</p>
  <ul>
    <li><a href="#cómo-se-abre">Cómo se abre</a></li>
    <li><a href="#la-lista">La lista</a></li>
    <li><a href="#actualización-automática-de-la-planificación">Actualización automática de la planificación</a></li>
    <li><a href="#avisos-habituales">Avisos habituales</a></li>
  </ul>
  <p>Relacionado</p>
  <ul>
    <li><a href="EntidadWindow.html">Ficha de entidad inmobiliaria</a></li>
    <li><a href="EntidadContratoWindow.html">Ficha de contrato inmobiliario</a></li>
    <li><a href="../../Modulos.html">Módulos</a></li>
    <li><a href="../../UsoGeneral.html">Uso general</a></li>
  </ul>
</aside>

## Cómo se abre

Desde la [ficha](EntidadWindow.html#utilidades-relacionadas) o la [lista](RelEntidadWindow.html) de entidades, botón <img src="../../Media/EntidadPVP.png" alt="Precios" height="20"> **Precios**.

> Esta ventana pertenece a la entidad, no al contrato: no está disponible desde `Contratos inmobiliarios`. Sí se usa internamente al elegir un precio histórico para una línea de un contrato, desde la propia ficha del contrato.

---

## La lista

| Columna | Descripción |
| --- | --- |
| **Fecha** | Fecha desde la que aplica este precio. *Obligatoria.* |
| **Precio de venta** | Importe del precio. No puede ser cero. |
| **% Descuento** / **Importe descuento** | Descuento aplicado sobre el precio. |
| **Observaciones** | Texto libre. |

> Antes de añadir un precio, la entidad y la empresa deben estar establecidas.
>
> No se puede modificar el importe de un precio que ya está vinculado a un contrato activo: la aplicación revierte el cambio y te avisa.

---

## Actualización automática de la planificación

Si modificas la fecha o el importe del **último** precio vigente de la entidad, y esa entidad está incluida en algún contrato de tipo **Planificación**, la aplicación actualiza automáticamente ese precio en la planificación del contrato. Al cerrar la ventana, te pregunta si quieres regenerar también los periodos de facturación afectados por ese cambio.

---

## Avisos habituales

| Aviso | Causa |
| --- | --- |
| *"Es necesario establecer la empresa antes de añadir precios." / "Es necesario establecer la entidad antes de añadir precios."* | Falta contexto al dar de alta un precio. |
| *"La fecha no puede ser anterior a 01-01-2000."* | Fecha fuera de rango. |
| *"El precio de venta no puede ser cero."* | Importe incorrecto. |
| *"No se puede cambiar importe, precio vinculado a un contrato activo ({contrato})"* | El precio ya está siendo usado por un contrato activo. |
| *"La modificación de precio de la entidad generó un cambio en la planificación.\n\n¿Quieres actualizar la planificación?"* | Se pregunta si se deben regenerar los periodos de facturación tras cambiar el precio. |

---

[Arriba](#top)
