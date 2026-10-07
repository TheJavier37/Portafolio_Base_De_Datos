# Aprendizaje Autónomo

## 📋 Información General

| Campo | Detalle |
| :--- | :--- |
| **Facultad:** | Facultad de la Energía, las Industrias y los Recursos Naturales no Renovables|
| **Carrera:** | Ingeniería en Ciencias de la Computación |
| **Semestre y Paralelo:** | Tercer Ciclo "A"|
| **Periodo Académico:** | *Septiembre 2026 - Febrero 2027* |
| **Estudiante:** | *Javier Guarnizo Vega* |
| **Materia:** | Base de Datos|
| **Docente Encargado:** | Ing. Rene Guaman |

---

## 📝 Instrucciones
Agregar la evidencia correspondiente para cada uno de los siguientes ejercicios.

---

## 📌 Ejemplos

### Ejemplo 1: Sistema de Biblioteca
Una biblioteca registra libros y autores. Un libro puede tener varios autores y un autor varios libros. Los socios toman libros prestados; de cada préstamo interesan la fecha de retiro y la de devolución.

> **Evidencia Diagrama Entidad-Relación:**  
> `<img width="631" height="482" alt="image" src="https://github.com/user-attachments/assets/6038c6af-f37d-4bae-8110-d05974854069" />


---

### Ejemplo 2: Pedidos de Restaurante
Los clientes realizan pedidos que contienen varios platos con distinta cantidad. Los platos se agrupan en categorías. Cada pedido lo atiende un único mesero. El precio del plato debe registrarse tal como estaba al momento del pedido, aunque luego cambie.

> **Evidencia Diagrama Entidad-Relación:**
> `![Diagrama Ejemplo 2](ruta/a/tu/imagen-ejemplo2.png)`

---

### Ejemplo 3: Clínica Médica
Los pacientes solicitan citas; cada cita la atiende un médico a un paciente en fecha, hora y consultorio. De algunas citas se genera una receta que incluye medicamentos con dosis y duración. Cada médico pertenece a una especialidad.

> **Evidencia Diagrama Entidad-Relación:**
> `![Diagrama Ejemplo 3](ruta/a/tu/imagen-ejemplo3.png)`

---

### Ejemplo 4: Sistema de Aerolínea
Una aerolínea opera vuelos (cada uno con número, fecha, origen y destino), cada vuelo lo realiza un avión. Los pasajeros realizan reservas para un vuelo específico, indicando asiento y tarifa pagada en el momento de la reserva.

> **Evidencia Diagrama Entidad-Relación:**
> `![Diagrama Ejemplo 4](ruta/a/tu/imagen-ejemplo4.png)`

---

## 🏋️ Ejercicios Propuestos

### Ejercicio 5: Empresa Discográfica
Una empresa discográfica necesita modelar los datos sobre sus diferentes recursos según las siguientes características:

* **Manager:** De cada mánager se almacena un identificador de manager y su nombre. Un manager representa a una serie de artistas.
* **Artista:** Un artista es representado por un manager. De los artistas se almacena su nombre completo (usando un único atributo) y su NIF.
* **Evento de Promoción:** Los artistas participan en eventos de promoción para dar a conocer sus trabajos. En un evento de promoción pueden participar varios artistas. De un evento se almacena un identificador único, la fecha de celebración y el número de asistentes.

> **Evidencia Diagrama Entidad-Relación:**
> `![Diagrama Ejercicio 5](ruta/a/tu/imagen-ejercicio5.png)`

---

### Ejercicio 6: Tienda Informática
Se desea crear una aplicación para la gestión de una tienda informática:

* **Productos e Inventario:** La tienda dispone de una serie de productos que se venden a los clientes. De cada producto informático se desea guardar el código, descripción, precio y número de existencias.
* **Clientes:** De cada cliente se desea guardar el código, nombre, apellidos, dirección y número telefónico. Un cliente puede comprar varios productos en la tienda y un mismo producto puede ser comprado por varios clientes.
* **Compras:** Cada vez que se compre un artículo quedará registrada la compra en la base de datos junto con la fecha en la que se compró el artículo.
* **Proveedores:** La tienda tiene contactos con varios proveedores que son los que suministran los productos. Un mismo producto puede ser suministrado por varios proveedores. De cada proveedor se desea guardar el código, nombres, apellidos, dirección, provincia y número de teléfono.

> **Evidencia Diagrama Entidad-Relación:**
> `![Diagrama Ejercicio 6](ruta/a/tu/imagen-ejercicio6.png)`

---

### Ejercicio 7: Discos Musicales
* La tienda vende discos de diferentes géneros musicales y cantantes.
* Cada género musical tiene un identificador.
* Cada disco tiene título, género musical, precio y cantante.
* De un cantante se registra el nombre y su país. Todo disco pertenece a un cantante y un cantante puede tener muchos discos.
* Además, un disco tiene un conjunto de canciones (identificador y título). Un disco tiene muchas canciones y una canción puede estar en varios discos. Interesa conocer la posición de una canción en un determinado disco.

> **Evidencia Diagrama Entidad-Relación:**
> `![Diagrama Ejercicio 7](ruta/a/tu/imagen-ejercicio7.png)`

---

### Ejercicio 8: Camiones
Se desea informatizar la gestión de una empresa de transporte que reparte paquetes por toda España:

* **Camioneros:** Los encargados de llevar los paquetes son los camioneros, de los que se quiere guardar la cédula, nombre, teléfono, dirección, salario y población en que vive.
* **Paquetes:** De los paquetes transportados interesa conocer el código del paquete, descripción, destinatario y dirección del destinatario. Un camionero distribuye muchos paquetes, y un paquete sólo puede ser distribuido por un camionero.
* **Provincias:** De las provincias a las que llegan los paquetes interesa guardar el código de provincia y el nombre. Un paquete sólo puede llegar a una provincia. Sin embargo, a una provincia pueden llegar varios paquetes.
* **Camiones:** De los camiones que llevan los camioneros, interesa conocer la matrícula, modelo, tipo y potencia. Un camionero puede conducir diferentes camiones en fechas diferentes, y un camión puede ser conducido por varios camioneros.

> **Evidencia Diagrama Entidad-Relación:**
> `![Diagrama Ejercicio 8](ruta/a/tu/imagen-ejercicio8.png)`

---

### Ejercicio 9: Veterinaria
* **Propietarios:** Cédula, apellidos, nombres, dirección y teléfonos.
* **Mascotas:** Identificador, nombre, fecha de nacimiento y tipo. Un propietario puede llevar una o varias mascotas, y una mascota la lleva uno y solo un propietario.
* **Personal de la Clínica:** Se almacena código, cédula y nombre. Se distingue entre:
  * **Veterinario:** Se guarda además su fecha de alta y especialidad.
  * **Auxiliares:** Interesa su base de cotización.
* **Consultas:** Las mascotas pasan consulta con los veterinarios:
  * Un veterinario puede pasar consulta a ninguna o a varias mascotas.
  * Una misma mascota de la clínica ha pasado consulta una o más veces en fechas diferentes con varios veterinarios.
  * Al pasar consulta se realiza un diagnóstico.
* **Contacto de Emergencia:** Cada propietario tiene un familiar de contacto para casos de emergencia (cédula, nombre y teléfono). Si el propietario se da de alta en la clínica veterinaria, el familiar ya no interesa. El familiar es contacto de un solo propietario.

> **Evidencia Diagrama Entidad-Relación:**
> `![Diagrama Ejercicio 9](ruta/a/tu/imagen-ejercicio9.png)`
