# 📟 Matriz de LEDs 8x8 con PIC16F887

Este repositorio contiene el código fuente y la simulación para controlar una matriz de LEDs de 8x8 utilizando el microcontrolador **PIC16F887**. El proyecto implementa la técnica de **multiplexación** para mostrar un mensaje de texto con desplazamiento ("scroll") horizontal.

## 🚀 Características del Proyecto
* **Microcontrolador:** PIC16F887.
* **Lenguaje:** C (Compilado en MikroC PRO for PIC).
* **Visualización:** Matriz de LEDs 8x8 (Cátodo Común).
* **Técnica:** Multiplexación por barrido de columnas y persistencia de la visión.
* **Optimización:** Uso de memoria de programa (`const`) para almacenar cadenas de texto largas y optimizar la RAM.

## 🛠️ Hardware Utilizado
* PIC16F887.
* Matriz de LEDs 8x8.
* Resistencias de protección.
* Fuente de 5V.
* *(Opcional: Transistores NPN para el manejo de corriente en columnas).*

## 💻 Explicación del Código
El sistema utiliza un barrido de columnas a alta velocidad.
1.  **Memoria:** El mensaje "BLACKPINK IN YOUR AREA" se almacena en la memoria ROM para no saturar la RAM del PIC.
2.  **Barrido:** Se activa una columna a la vez (Puerto D) y se envían los datos de esa fila (Puerto C).
3.  **Scroll:** Un bucle principal desplaza el puntero del mensaje para crear el efecto de movimiento.

## 📸 Capturas
*(Aquí puedes subir la imagen de tu simulación en Proteus que me mostraste)*

## 👨‍💻 Autor
**Jhonatan Jazael Ontañon Ortiz**
*Estudiante de Ingeniería en Sistemas Computacionales | P.T.B en Informática*
*Entusiasta de la tecnología y la programación embebida.*

---
*"La ingeniería es la poesía de la lógica."* 🖤💖
