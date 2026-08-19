# <a id="top"></a> <img src="../../Media/EntidadRpt.png" alt="EntidadRpt" height="30"> Configuraciones informes de entidades

**Configuraciones informes de entidades** es el catálogo de códigos de informe que puedes elegir en [Informe de entidades](EntidadRptWindow.html), y desde donde se asocia opcionalmente una plantilla Excel a cada uno. Qué coeficientes y superficies incluye cada código se configura desde el propio [Informe de entidades](EntidadRptWindow.html#ejecutar-generar-el-informe), no desde esta ventana.

> Este catálogo es global: no está filtrado por empresa.

---

<aside class="doc-sidebar">
  <p>En esta página</p>
  <ul>
    <li><a href="#cómo-se-abre">Cómo se abre</a></li>
    <li><a href="#la-lista">La lista</a></li>
    <li><a href="#eliminar-una-configuración">Eliminar una configuración</a></li>
    <li><a href="#avisos-habituales">Avisos habituales</a></li>
  </ul>
  <p>Relacionado</p>
  <ul>
    <li><a href="EntidadRptWindow.html">Informe de entidades</a></li>
    <li><a href="EntidadWindow.html">Ficha de entidad inmobiliaria</a></li>
    <li><a href="RelEntidadWindow.html">Lista de entidades inmobiliarias</a></li>
    <li><a href="../../Modulos.html">Módulos</a></li>
    <li><a href="../../UsoGeneral.html">Uso general</a></li>
  </ul>
</aside>

## Cómo se abre

Desde la ventana principal, pestaña **Inmobiliario**, menú **Tablas**, opción **Configuraciones informes de entidades**.

También se abre en modo de selección (buscador) al indicar el **Código informe** en [Informe de entidades](EntidadRptWindow.html#cabecera).

---

## La lista

| Columna | Descripción |
| --- | --- |
| **Código** | Código de la configuración. *Obligatorio,* en mayúsculas, sin espacios en blanco, y solo con letras, números, puntos, guiones y barras. |
| **Descripción** | Descripción de la configuración. *Obligatoria.* |
| **Plantilla** | Plantilla Excel que se usará para generar el informe con este código, si se indica una (se elige mediante buscador). Si no se indica, el informe genera siempre un libro nuevo. |

> Al crear una configuración nueva, la aplicación muestra el aviso *"Código duplicado."* aunque el código no esté repetido: es un aviso que aparece siempre al dar de alta una fila, no una comprobación real de duplicados. Puedes ignorarlo si el código que has introducido es efectivamente nuevo.

---

## Eliminar una configuración

No se puede eliminar una configuración mientras tenga coeficientes o superficies asociados en algún informe: primero hay que quitarlos desde [Informe de entidades](EntidadRptWindow.html#ejecutar-generar-el-informe).

---

## Avisos habituales

| Aviso | Causa |
| --- | --- |
| *"Código duplicado."* | Aparece siempre al dar de alta una configuración nueva; no indica necesariamente que el código ya exista (ver nota anterior). |
| *"El código debe tener valor."* | Falta el código. |
| *"El código no puede tener espacios en blanco."* | El código contiene espacios. |
| *"El código solo puede tener caracteres [A-Z], [0-9], '.', '-' y '/'."* | El código contiene caracteres no admitidos. |
| *"Descripción obligatoria."* | Falta la descripción. |

---

[Arriba](#top)
