# <a id="top"></a> <img src="../../Media/GeneraPeriodoCtoInmob.png" alt="GeneraPeriodoCtoInmob" height="30"> Generación de periodos de facturación

**Generación de periodos** crea, a partir del plan de pagos de un contrato, los [periodos de facturación](RelEntidadContratoPerWindow.html) reales, para un rango de periodos y un rango de fechas que tú eliges.

---

<aside class="doc-sidebar">
  <p>En esta página</p>
  <ul>
    <li><a href="#cómo-se-abre">Cómo se abre</a></li>
    <li><a href="#cabecera">Cabecera</a></li>
    <li><a href="#generar">Generar</a></li>
    <li><a href="#cómo-se-generan-los-periodos">Cómo se generan los periodos</a></li>
    <li><a href="#ver-factura">Ver factura</a></li>
    <li><a href="#avisos-habituales">Avisos habituales</a></li>
  </ul>
  <p>Relacionado</p>
  <ul>
    <li><a href="EntidadContratoWindow.html">Ficha de contrato inmobiliario</a></li>
    <li><a href="RelEntidadContratoPerWindow.html">Periodos de facturación</a></li>
    <li><a href="../../Modulos.html">Módulos</a></li>
    <li><a href="../../UsoGeneral.html">Uso general</a></li>
  </ul>
</aside>

## Cómo se abre

Desde la sección [Pago](EntidadContratoWindow.html#pago-y-plan) de la [ficha de contrato](EntidadContratoWindow.html), botón <img src="../../Media/GeneraPeriodoCtoInmob.png" alt="Generar periodos" height="20"> **Generar periodos**.

> Necesitas el permiso de ejecución de esta ventana. El botón no está disponible si el contrato está en estado Escritura o Anulado, o no está activo, ni mientras hay una edición pendiente en la sección Pago.
>
> Si el total de los pagos previstos no coincide con el precio del contrato, la aplicación no abre la ventana y avisa: *"Existen una diferencia de {importe}€ entre el precio del contrato y el total de pagos previstos.\n\nNo se pueden generar periodos de pago"*.

---

## Cabecera

| Campo | Descripción |
| --- | --- |
| **Empresa** / **Contrato** / **Referencia** | Solo lectura, heredados del contrato desde el que se abrió la ventana. |
| **Periodo inicial** / **Periodo final** | Rango de números de periodo a generar. *Ambos obligatorios; el periodo final debe ser mayor o igual que el inicial.* Por defecto ambos son 1: para generar más de un periodo debes ampliar el periodo final. |
| **Fecha inicial** | Fecha desde la que se calculan las fechas de los periodos generados. *No puede ser anterior al 1 de enero de 2000.* |
| **Generar factura** | Sí/No. Solo se puede activar si la empresa está vinculada a Navision y tienes permiso de alta en esta ventana; si no, permanece en No. |

---

## Generar

El botón **Generar** crea los periodos del rango indicado.

> Si ya existe algún periodo de facturación en el rango indicado (del contrato o de sus adendas), la generación se rechaza por completo: *"Ya existen periodos de facturación en el rango indicado para el contrato y sus adendas."* Esta ventana no sustituye periodos ya existentes; para regenerarlos usa el botón **Generar periodos** de la sección [Plan](EntidadContratoWindow.html#pago-y-plan), que regenera siempre desde las fechas de planificación de los pagos.

Al terminar, un aviso confirma cuántos periodos se generaron: *"Se generaron {n} periodo(s)."*

---

## Cómo se generan los periodos

Cada tramo del plan de pagos que quede dentro del rango de periodos indicado genera una línea de periodo por cada uno de sus plazos:

- El **importe** de cada plazo es el importe fijo del tramo, o el porcentaje indicado sobre el precio del contrato.
- Ese importe se reparte a partes iguales entre los plazos del tramo (base, IVA y IRPF, estos dos últimos solo si el [tipo de pago](RelTipoPagoEntidadWindow.html) factura). Cada parte se redondea a dos decimales; el **último periodo generado de cada tramo absorbe la diferencia de redondeo** acumulada, para que la suma cuadre exactamente con el importe del tramo.
- La **fecha** de cada periodo avanza respecto a la anterior según la periodicidad del tramo (anual, semestral, cuatrimestral, trimestral, bimestral, mensual, quincenal, semanal o diario). Si la fecha inicial cae en el último día de su mes, todas las fechas generadas se ajustan también al último día de su mes correspondiente.
- Los periodos generados desde una adenda se registran siempre bajo el **contrato padre**.

> No se pueden solapar dos tramos del mismo tipo de pago en el mismo periodo.

Si activaste **Generar factura**, al terminar de crear los periodos la aplicación intenta generar directamente sus facturas en Navision.

---

## Ver factura

El botón **Ver factura** abre la lista de [periodos de facturación](RelEntidadContratoPerWindow.html) del contrato, para consultar los periodos ya generados.

---

## Avisos habituales

| Aviso | Causa |
| --- | --- |
| *"No se han establecido parámetros de generación." / "No se ha establecido la empresa." / "No se ha establecido el código de contrato." / "No se localizó el contrato {contrato}."* | Falta algún dato básico, o el contrato ya no existe. |
| *"El periodo inicial debe ser mayor que 0."* | Periodo inicial incorrecto. |
| *"El periodo final debe ser mayor o igual que el periodo inicial."* | Rango de periodos incoherente. |
| *"La fecha inicial de generación de periodo no puede ser anterior a {fecha}."* | Fecha inicial anterior al 1 de enero de 2000. |
| *"No se pueden solapar tipos de pago en el mismo periodo. Línea:{línea}, tipo pago={tipo de pago}"* | Dos tramos del mismo tipo de pago se solapan en el mismo periodo. |
| *"Ya existen periodos de facturación en el rango indicado para el contrato y sus adendas."* | Ya hay periodos generados en ese rango; esta ventana no los sustituye. |
| *"Se generaron {n} periodo(s)."* | Confirmación al terminar de generar. |
| *"La generación de facturas no está disponible para GTA Nativo."* | Se activó Generar factura en una empresa sin vínculo con Navision. |
| *"No se han establecido todos los parámetros de facturación para la entidad {identidad}-{entidad} del contrato {contrato}."* | Falta algún dato de facturación de una entidad del contrato. |
| *"No se ha definido cliente de facturación en el contrato/adenda {contrato}"* | Falta el cliente de facturación del contrato. |
| *"El cliente {tercero} no tiene definido código cliente en NAVISION"* | El cliente de facturación no está dado de alta en Navision. |
| *"El tipo de pago {tipo} del periodo {periodo} no está configurado para generar factura."* | El tipo de pago del periodo no tiene marcada la opción de facturar. |
| *"El pago de contrato {tipo} {descripción} no tiene configurada tarea" / "...no tiene configurada la descripción"* | Falta la tarea o la descripción de facturación del tipo de pago. |
| *"No se pueden generar facturas porque hay pagos que no tienen definida la tarea o descripción de la línea. No se generó ningún periodo."* | Igual que el aviso anterior, pero bloquea toda la generación. |
| *"No se pueden generar facturas, el cliente {tercero} no tiene establecido el cliente Navision." / "...hay {n} clientes que no tienen establecido el cliente Navision."* | Uno o varios clientes de facturación no están vinculados a Navision. |
| *"El usuario no tiene permisos de escritura en Navision"* | Tu usuario no puede generar documentos en Navision. |
| *"Se ha generado una factura. Revisa las facturas pendientes de registrar en NAVISION" / "Se han generado {n} facturas..."* | Confirmación tras generar las facturas. |
| *"No se generaron facturas en NAVISION"* | La generación de facturas no produjo ningún documento. |

---

[Arriba](#top)
