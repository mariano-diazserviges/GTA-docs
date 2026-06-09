# Filtrado de datos

---

← [Índice](Index.md) · [Uso general](UsoGeneral.md) · [Módulos →](Modulos.md)

---

La cabecera de todas las ventanas tipo lista incluye el control **Filtrar por**, que permite reducir los registros mostrados aplicando una o varias condiciones simultáneas.

> Cada ventana de relación guarda sus configuraciones de forma independiente. Los filtros guardados en una ventana no afectan a otras.

---

## Añadir un filtro

1. Haz clic en cualquier celda de la columna por la que quieres filtrar. Aparece una nueva fila de filtro.

    > No hagas click en la cabecera de la columna. Esto hará que los datos se ordene por esa columna.

2. Elige el **operador** en el desplegable de la fila (véase [Operadores disponibles](#operadores-disponibles)).
3. Escribe el **valor** en el cuadro de texto. La lista se actualiza automáticamente mientras escribes, sin necesidad de pulsar ningún botón.

Para el operador **Entre**, aparece un segundo cuadro de texto etiquetado **hasta** donde se introduce el límite superior del rango.

## Activar y desactivar filtros temporalmente

Cada fila de filtro tiene una casilla a la izquierda. Desmárcala para suspender ese filtro sin eliminarlo; vuelve a marcarla para reaplicarlo. Esto es útil para comparar la lista con y sin una condición sin perder los valores introducidos.

## Limpiar filtros

- **Un filtro concreto** — pulsa el botón <img src="./images/Delete.png" alt="eliminar" height="25" width="25"/> que se encuentra a la derecha del filtro
- **Todos los filtros a la vez** — pulsa <img src="./images/FilterDelete.png" alt="EliminarTodos" height="25" width="25"/> situado junto a la etiqueta **Filtrar por**.

## Operadores disponibles

Los operadores que aparecen en el desplegable dependen del tipo de dato de la columna:

| Tipo de campo | Operadores disponibles |
| --- | --- |
| Texto | Contiene · No contiene · Igual a · Distinto de · Empieza por · No empieza por · Termina en · No termina en |
| Numérico | Igual a · Distinto de · Mayor que · Mayor o igual que · Menor que · Menor o igual que · Entre |
| Fecha | Igual a · Distinto de · Posterior a · Posterior o igual a · Anterior a · Anterior o igual a · Entre |

Cuando un valor de fecha o número no tiene el formato esperado, el cuadro de texto muestra un borde rojo con un aviso. El filtro no se aplica hasta que el valor sea válido.

Los filtros activos se combinan con lógica **Y** (AND): solo se muestran los registros que cumplen todas las condiciones a la vez.

## Guardar y reutilizar configuraciones de filtro

El panel **Gestión filtros** (desplegable en el extremo izquierdo del control) permite guardar con un nombre el estado actual de los filtros y el tamaño / posición de las columnas, para reutilizarlo en sesiones futuras.
   > Gestión filtros no está disponible en todas las pantallas

**Crear una nueva configuración:**

1. Establece los filtros que quieras guardar.
2. Despliega **Gestión filtros** y pulsa el botón <img src="./images/Add.png" alt="añadir" height="25" width="25"/>. Se crea una configuración con el nombre automático *Filtros 1*, *Filtros 2*, etc.
3. Edita el nombre directamente en el desplegable si quieres personalizarlo y confirma con `Intro`.

**Actualizar una configuración existente:**

1. Selecciona la configuración en el desplegable.
2. Modifica los filtros.
3. Pulsa el botón <img src="./images/Save.png" alt="guardar" height="25" strech="Uniform"/>. Los cambios quedan registrados en esa configuración.

**Cargar una configuración:**

Selecciona su nombre en el desplegable de **Gestión filtros**. Los filtros se aplican de inmediato.

**Eliminar una configuración:**

Selecciónala en el desplegable y pulsa el botón de papelera. La vista predeterminada no se puede eliminar.

---

← [Índice](Index.md) · [Uso general](UsoGeneral.md) · [Módulos →](Modulos.md)