# <img src="../../Media/LogoGTA.png" alt="HorasParte" height="30"> Manual usuario GTA - Ficha de Contrato de Compras

La **Ficha de Contrato** es la ventana central de la gestión de la contratación de compras. Permite registrar y mantener todos los datos de una contratación, sus anexos, hitos, planificación económica, condiciones de pago y la documentación asociada.

← [Módulos](../../Modulos.md) · [Índice](../../index.md)

---

## Modalidades de contratación

La contratación de compras tiene las siguientes modalidades que la clasifican de acuerdo con su nivel de obligaciones contractuales:

- **Contrato**. Requiere un contrato formal con cláusulas y condiciones específicas de la compra.
- **Contrato suministro**. Similar al anterior, la compra se refiere específicamente a un suministro de material.
- **Presupuesto**. La contratación se realiza mediante una oferta o presupuesto aceptado con un clausulado general.
- **Genérico**. Mediante esta modalidad, se permiten contabilizar facturas de diversos proveedores y se reducen las validaciones, permitiendo, por ejemplo, no utilizar presupuesto.

## Cabecera

La parte superior de la ventana muestra los campos de identificación del contrato, visibles siempre independientemente de qué sección esté expandida.

| Campo | Descripción |
| --- | --- |
| **Código contrato** | Identificador único del contrato padre. Se genera automáticamente a partir de la serie configurada para la empresa si se deja en blanco al guardar. |
| **Código anexo** | Visible solo cuando el contrato activo es un anexo. Muestra su código en color azul junto al código del contrato padre. |
| **Empresa** | Empresa propietaria del contrato. Solo lectura. |
| **Referencia** | Proyecto o referencia asociada al contrato. Solo lectura. |
| **Título del contrato** | Nombre descriptivo del contrato. Es editable mientras el contrato esté en estado de redacción. |

### Panel de estado (derecha de la cabecera)

Muestra la progresión de estados del contrato en una tabla expandible. Cada fila representa un estado del ciclo de vida:

| Columna | Descripción |
| --- | --- |
| **Estado** | Nombre del estado (ej. Preparación, Formalizado, En ejecución...). |
| **Fecha** | Fecha en que se alcanzó ese estado. Se puede establecer o borrar pulsando el botón de la celda. El estado *Preparación* siempre lleva fecha. |
| **Observaciones** | Texto libre para anotar información sobre el cambio de estado. |

#### Estados de un contrato

Los estados de una ficha de contratación ayudan a gestionar la validación por las partes implicadas. Los estados son genéricos, su uso para las distintas modalidades de contratación debe ser adaptado.

- **Preparación**: Es el estado inicial, por defecto. La ficha se inicia con una descripción y la fecha de contratación, que, normalmente, determina la codificación del contrato. Es en este estado cuando se cumplimentan todos los datos del contrato.

- **Redactado**: Todos los datos de la ficha se encuentran cumplimentados y el documento contrato, de haberlo, está generado y preparado para la firma.

- **Firma contrata**: El documento se encuentra enviado a la contrata (o proveedor), a la espera de su firma.

- **Firmado**: El documento se encuentra firmado por ambas partes, por lo que se considera totalmente validado.

> Al cambiar de estado se ejecutan validaciones automáticas. Si falta algún dato obligatorio, aparece una notificación con un enlace directo al campo a completar (ver sección [Validaciones de estado](#validaciones-de-estado)).

---

## Secciones expandibles

La parte central de la ventana está organizada en secciones que se pueden expandir o colapsar. Cada sección recuerda su estado expandido/colapsado entre sesiones. El encabezado de cada sección colapsa muestra un resumen de los datos más relevantes.

---

### Redacción

Datos fundamentales del contrato.

| Campo | Descripción |
| --- | --- |
| **Tipo contrato** | Clasificación del contrato (obra, suministro, servicios, anexo...). |
| **Fecha contrato** | Fecha de firma o formalización. Campo obligatorio. |
| **Fecha fin contrato** | Fecha prevista de finalización. No disponible en anexos. |
| **Fecha anulación** | Fecha en que se anuló el contrato. Solo editable cuando el contrato **no** está en redacción (campo inverso al bloqueo de redacción). |
| **Contrata** | Empresa contratista. Se selecciona mediante buscador (tecla **F4** o escribiendo parte del código). |
| **Proveedor NAV** | Proveedor en Navision/Business Central. Solo visible en empresas con integración Navision. Se selecciona mediante buscador. |
| **Objeto** | Descripción detallada del objeto del contrato. Campo de texto multilínea. |

#### Apoderados

Tabla de las personas físicas que firman el contrato en representación de las partes. Además de aportar información de la contratación, esta tabla se utiliza para la redacción del documento.

| Columna | Descripción |
| --- | --- |
| **Tipo NIF** | Tipo de documento identificativo (NIF, NIE, pasaporte...). |
| **NIF** | Número de identificación fiscal. |
| **Nombre** | Nombre y apellidos del apoderado. |
| **Poder** | Referencia al poder notarial que le habilita para firmar. |

> Los apoderados solo se pueden añadir cuando el contrato está en estado **Preparación**. Una vez formalizado el contrato, no se permiten nuevos registros.

---

### Anexos

Muestra todos los anexos asociados al contrato padre (contratos del mismo grupo que no son hitos). Es una vista de **solo lectura**.

Para navegar a un anexo concreto, selecciónalo en la tabla y pulsa el botón **Activar** — la ventana se recargará mostrando ese anexo como contrato activo.

Para **crear un nuevo anexo** del contrato activo, usa el botón de la cinta de opciones **Nuevo anexo**. El sistema creará un nuevo contrato vinculado al contrato padre.

> No es posible añadir anexos a contratos anulados.

---

### Hitos

Los hitos son divisiones funcionales o económicas del contrato principal. Su función principal es desglosar el importe del contrato, permitiendo asignar facturas al hito para facilitar su seguimiento presupuestario.

| Columna | Descripción |
| --- | --- |
| **Código** | Identificador del hito, generado automáticamente. |
| **Título** | Descripción del hito. |
| **Precio contrato** | Importe asignado al hito. |
| **Precio real** | Importe ejecutado o facturado. |

El encabezado de la sección muestra el **total de hitos** y si la suma coincide con el precio del contrato principal.

Cuando la suma de los hitos excede el precio del contrato, aparece un aviso de **exceso**. Si queda importe sin asignar a hitos, se indica el **pendiente de hito**.

Cada fila tiene un botón para abrir los **documentos de compra** (facturas) asociados a ese hito.

> Los cambios en *Fecha fin contrato* y *Fecha anulación* del contrato principal se propagan automáticamente a todos sus hitos.

---

### Condiciones

Son los parámetros económicos y legales del contrato. Estos datos se propagan a las facturas generadas desde la ficha de contratación, facilitando así su contabilización.

| Campo | Descripción |
| --- | --- |
| **Grupo registro IVA** | Código de grupo de producto IVA en Navision. |
| **Grupo IRPF** | Retención de IRPF aplicable. Seleccionable mediante buscador. |
| **Método de pago** | Código de método de pago en Navision. |
| **Términos de pago** | Código de términos de pago en Navision. |
| **Devolución garantía** | Porcentaje o modalidad de devolución de la garantía. |
| **% Retención** | Porcentaje de retención de garantía aplicado a cada factura. Editable solo si *Garantía aval* no está marcada y *Devolución garantía* no es la opción que la anula. |
| **Garantía aval** | Indica si la garantía se instrumenta mediante aval bancario. Si está activa, deshabilita el campo *% Retención*. |
| **Fecha inicio garantía** | Fecha desde la que empieza el cómputo del plazo de garantía. |

---

### Precio

Resumen económico del contrato con sus desviaciones.

| Campo | Descripción |
| --- | --- |
| **Precio contrato** | Importe acordado en el contrato. |
| **Precio objetivo** | Importe objetivo estimado previa a la contratación para el seguimiento del coste. |
| **Precio real** | Importe ejecutado/facturado hasta la fecha. Se puede actualizar manualmente con el botón **Actualizar precio real**. |
| **Desv. Obj/Cto** | Diferencia entre precio objetivo y precio de contrato. |
| **Desv. Cto/Real** | Diferencia entre precio de contrato y precio real. |

#### Totales con anexos

Si el contrato tiene anexos, se muestran columnas adicionales con los **totales acumulados** (contrato + todos sus anexos):

| Campo | Descripción |
| --- | --- |
| **Total precio contrato** | Suma de precios de contrato del principal y sus anexos. |
| **Total precio objetivo** | Suma de precios objetivo. |
| **Total precio real** | Suma de precios reales. |
| **Total desv. Obj/Real** | Desviación objetivo vs. real en el total. |
| **Total desv. Cto/Real** | Desviación contrato vs. real en el total. |

#### Detalle del precio de contrato

El botón **Detalle precio** abre un panel sobre el campo *Precio contrato* que permite desglosar el precio en varios conceptos. Al cerrar el panel, el precio total se actualiza automáticamente.

> El botón **Actualizar precio real** recalcula los importes realizados consultando los documentos de compra vinculados al contrato y a todos sus hitos, y guarda los cambios.

---

### Planificación

Calendario de pagos y ejecución previsto para el contrato. **Solo visible en contratos padre** (no en anexos).

| Columna | Descripción |
| --- | --- |
| **Tarea** | Tarea del proyecto asociada a esta línea de planificación. Se selecciona mediante buscador (solo tareas de tipo auxiliar). |
| **Fecha ejecución** | Fecha prevista de ejecución del trabajo. |
| **Importe ejecución** | Importe previsto de ejecución para esa fecha. |
| **Fecha pago** | Calculada automáticamente según los términos de pago del contrato. |
| **Importe pago** | Importe previsto de pago. |
| **Importe ejec. real** | Importe realmente ejecutado. |
| **Importe pago real** | Importe realmente pagado. |

La fila de **totales** muestra la suma de todos los importes. Si el total planificado difiere del precio de contrato, aparece un aviso con la diferencia.

> No se permite añadir dos líneas con la misma tarea y fecha de ejecución.

---

### Oficios

Categorías profesionales o especialidades que intervienen en el contrato. **Solo visible en contratos padre**. Los oficios permiten categorizar los contratos de cara a informes más detallados.

| Columna | Descripción |
| --- | --- |
| **Oficio** | Categoría profesional principal. Se selecciona mediante buscador. |
| **Suboficio** | Especialidad dentro del oficio. El buscador se filtra automáticamente por el oficio seleccionado. |

---

### Documentación

Registro de documentos vinculados al contrato (borradores, versiones finales, anexos documentales...).

| Columna | Descripción |
| --- | --- |
| **Orden** | Número de orden asignado automáticamente. |
| **Tipo** | Tipo de documento contractual. |
| **Borrador** | Indica si es un borrador. |
| **Documento** | Referencia al archivo generado. |

#### Acciones sobre documentos

| Acción | Descripción |
| --- | --- |
| **Generar documento** | Genera un borrador a partir de una plantilla Word. Si el registro ya tiene borrador, solicita confirmación para sustituirlo. Abre un selector de plantillas disponibles. |
| **Regenerar documento** | Sustituye el borrador existente por uno nuevo generado desde la misma plantilla. |
| **Fusionar borradores** | Combina todos los borradores del contrato en un único documento PDF. Si ya existe una fusión previa, solicita confirmación para reemplazarla. |

> Los documentos se almacenan en la carpeta documental del contrato. La carpeta se genera automáticamente con el nombre `{Cód. contrato} {Tipo contrato} {Título}`. Se puede deshabilitar la creación automática de carpeta marcando **Omitir carpeta docum** en el contrato.

---

## Acciones de la cinta de opciones

| Botón | Descripción |
| --- | --- |
| **Nuevo** | Crea un nuevo contrato. |
| **Editar** | Activa el modo edición del contrato activo. |
| **Guardar** | Guarda los cambios. |
| **Cancelar** | Descarta los cambios en curso. |
| **Nuevo anexo** | Crea un nuevo anexo del contrato activo. Deshabilitado si el contrato está anulado o si el usuario no tiene permisos de inserción. |
| **Actualizar precio real** | Recalcula el precio realizado a partir de los documentos de compra vinculados. |
| **Anotaciones** | Abre la ventana de anotaciones documentales del contrato (notas internas, comunicaciones, etc.). |

---

## Validaciones de estado

Al cambiar el estado del contrato, el sistema verifica que estén cubiertos los campos obligatorios para ese estado. Si falta alguno, aparece una notificación en el panel inferior con un botón **Ir a** que lleva directamente al campo:

| Validación | Campo a completar |
| --- | --- |
| Título del contrato | Campo *Contrato* en la cabecera |
| Objeto del contrato | Campo *Objeto* en la sección Redacción |
| Contrata | Campo *Contrata* en la sección Redacción |
| Proveedor Navision | Campo *Proveedor NAV* en la sección Redacción |
| Precio de contrato | Campo *Precio contrato* en la sección Precio |
| Precio objetivo | Campo *Precio objetivo* en la sección Precio |
| Grupo IVA / Grupo registro IVA | Sección Condiciones |
| Forma de pago / Método de pago | Sección Condiciones |
| % Retención / Devolución garantía | Sección Condiciones |
| Garantía aval | Sección Condiciones |
| Fecha inicio garantía | Sección Condiciones |

El cambio de estado se cancela hasta que todas las validaciones sean correctas.

---

## Comportamientos automáticos

- **Propagación de contrata y proveedor NAV**: al guardar el contrato principal, los valores de *Contrata* y *Proveedor NAV* se replican automáticamente en todos sus anexos e hitos.
- **Propagación de fechas a hitos**: los cambios en *Fecha fin contrato* y *Fecha anulación* del contrato padre se replican en sus hitos.
- **Actualización de precios en el padre**: al guardar un anexo que cambia su precio de contrato u objetivo, el contrato padre recalcula sus totales acumulados de anexos.
- **Carpeta documental**: al guardar un contrato padre, se crea o actualiza la carpeta documental. Los cambios se propagan automáticamente a todos los anexos e hitos vinculados.
- **Previsiones de tarea**: si se modifican campos fiscales o de pago con previsiones de tarea activas (en revisión o sin revisar), las previsiones se actualizan automáticamente.
- **Redirección de hitos**: si se abre la ventana con el código de un hito, la ventana carga automáticamente el contrato padre correspondiente.

---

← [Módulos](../../Modulos.md) · [Índice](../../overview.md)
