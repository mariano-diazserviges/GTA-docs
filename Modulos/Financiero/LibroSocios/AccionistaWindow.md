# <a id="top"></a> <img src="../../../Media/LogoGTA.png" alt="LogoGTA" height="30"> Ficha de accionista

La **ficha de accionista** reúne los datos de un socio o accionista de una empresa: su identificación fiscal, su domicilio, y las fechas en que estuvo o está de alta como titular de acciones o participaciones.

---

<aside class="doc-sidebar">
  <p>En esta página</p>
  <ul>
    <li><a href="#cómo-se-abre">Cómo se abre</a></li>
    <li><a href="#cabecera">Cabecera</a></li>
    <li><a href="#datos-fiscales">Datos fiscales</a></li>
    <li><a href="#fechas-de-alta-y-baja">Fechas de alta y baja</a></li>
    <li><a href="#representación">Representación</a></li>
    <li><a href="#domicilio">Domicilio</a></li>
    <li><a href="#avisos-habituales">Avisos habituales</a></li>
  </ul>
  <p>Relacionado</p>
  <ul>
    <li><a href="RelAccionistaWindow.html">Lista de accionistas</a></li>
    <li><a href="RelOperacionCapitalWindow.html">Lista de operaciones de capital</a></li>
    <li><a href="MovAccionistaWindow.html">Ficha de movimiento de accionista</a></li>
    <li><a href="../../../Modulos.html">Módulos</a></li>
    <li><a href="../../../UsoGeneral.html">Uso general</a></li>
  </ul>
</aside>

## Cómo se abre

Desde la [lista de accionistas](RelAccionistaWindow.html): doble clic, `Intro` o **Editar** sobre una fila abre su ficha; **Nuevo** crea un accionista en blanco.

---

## Cabecera

| Campo | Descripción |
| --- | --- |
| **Empresa** | Empresa a la que pertenece el accionista. Solo lectura. |
| **Denominación** | Apellidos o razón social del socio o accionista. *Obligatoria.* |
| **Nombre** | Nombre, si es una persona física. |

---

## Datos fiscales

| Campo | Descripción |
| --- | --- |
| **Tipo Id. fiscal** | Tipo de identificación fiscal (NIF, CIF, NIE, pasaporte...). |
| **Id. fiscal** | Número de identificación fiscal. *Obligatorio y único por empresa.* Se valida su formato según el tipo elegido. |
| **Persona** | Física, jurídica, otro o participada. |
| **Extranjero** | Casilla que indica si el accionista no reside en España. |
| **Tipo de residencia** | Residente o no residente. |
| **País de nacionalidad** | País de nacionalidad del accionista. `ES - España` por defecto. |

> Solo se admite un tipo de identificación fiscal concreto para terceros residentes en España.

---

## Fechas de alta y baja

| Campo | Descripción |
| --- | --- |
| **Fecha de alta** | Fecha en que el accionista pasó a tener acciones o participaciones. Solo lectura. |
| **Fecha de baja** | Fecha en que dejó de tenerlas, si procede. Solo lectura. |

Estas dos fechas se calculan automáticamente a partir de los [movimientos de accionista](MovAccionistaWindow.html) registrados: la fecha de alta es la de la primera adquisición, y la fecha de baja es la del último movimiento si, tras sumar todas las adquisiciones y restar todas las transmisiones, el accionista se queda sin acciones; en caso contrario, se considera que sigue de alta.

Pulsa el botón **Actualizar fechas** para forzar este recálculo manualmente. La aplicación confirma: *"Fecha de alta y baja actualizadas."*

---

## Representación

| Campo | Descripción |
| --- | --- |
| **Sin derecho a voto** | Casilla que indica si las acciones del accionista no tienen derecho de voto. |
| **Es representante** | Casilla que indica si el accionista actúa como representante. |
| **Cargo** | Cargo que ostenta el representante. |
| **Notario** | Notario ante el que se formalizó el nombramiento. Se selecciona mediante buscador. |
| **Protocolo nombramiento** | Número de protocolo del nombramiento. |
| **Vencimiento del cargo** | Fecha de vencimiento del cargo, si lo tiene. |

> Estos datos son meramente **informativos**.

---

## Domicilio

Bloque completo de dirección postal: tipo de vía, nombre de la vía, número, calificador de número, bloque, portal, escalera, planta, puerta, dato complementario, municipio, código postal, provincia y país de domicilio.

---

## Avisos habituales

| Aviso | Causa |
| --- | --- |
| *"No se ha establecido la empresa del accionista."* | Falta la empresa del accionista. |
| *"No se ha establecido la Id. fiscal del accionista."* | Falta el identificador fiscal. |
| *"Ya existe un accionista con el mismo Id. fiscal en la empresa."* | El identificador fiscal introducido ya está en uso por otro accionista de la misma empresa. |
| *"Tipo CIF/NIF incorrecto. Sólo es posible el valor especificado para terceros residentes en España."* | El tipo de identificación fiscal no es compatible con un accionista residente en España. |

---

[Arriba](#top)
