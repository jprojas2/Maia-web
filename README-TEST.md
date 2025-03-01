# Guía de Prueba para Maia AI

Esta guía te ayudará a probar la aplicación Maia AI en tu entorno local.

## Requisitos Previos

Antes de comenzar, asegúrate de tener instalado:

- [Node.js](https://nodejs.org/) (versión 14 o superior)
- npm (normalmente viene con Node.js)

## Pasos para Probar la Aplicación

### 1. Método Rápido (Recomendado)

Simplemente ejecuta el script de instalación incluido:

```bash
./setup.sh
```

Este script instalará todas las dependencias y iniciará el servidor de desarrollo automáticamente.

### 2. Método Manual

Si prefieres hacerlo manualmente, sigue estos pasos:

1. Instala las dependencias:
   ```bash
   npm install
   ```

2. Inicia el servidor de desarrollo:
   ```bash
   npm run dev
   ```

### 3. Acceder a la Aplicación

Una vez que el servidor esté en funcionamiento:

- Abre tu navegador y ve a: [http://localhost:5173](http://localhost:5173)
- Alternativamente, puedes abrir el archivo `test.html` incluido en este proyecto, que te redirigirá automáticamente al servidor de desarrollo.

## Estructura de la Aplicación

La aplicación está organizada de la siguiente manera:

- **Página Principal**: Muestra la landing page con todas las secciones (Hero, Demo, Características, Testimonios, Equipo).
- **Widget de Chat**: Disponible en todas las páginas, puedes interactuar con el asistente virtual Maia.
- **Navegación**: Utiliza los enlaces en el encabezado para navegar entre las diferentes secciones.

## Funcionalidades para Probar

### 1. Widget de Chat con IA

- Haz clic en el botón flotante "Chat con Maia" en la esquina inferior derecha.
- Prueba a enviar mensajes como:
  - "Hola"
  - "¿Cómo funciona Maia?"
  - "¿Cuáles son los precios?"
  - "¿Cómo puedo integrar Maia en mi inmobiliaria?"
- Observa cómo el chat muestra indicadores de escritura y responde contextualmente.

### 2. Navegación Responsive

- Redimensiona la ventana del navegador para ver cómo la interfaz se adapta a diferentes tamaños de pantalla.
- En dispositivos móviles (o ventanas pequeñas), prueba el menú hamburguesa.

### 3. Sección de Demo

- Navega hasta la sección "Demo" y haz clic en "Comenzar Demo" para ver el recorrido virtual.

### 4. Carrusel de Testimonios

- Navega hasta la sección de testimonios y prueba los controles de navegación.
- Observa cómo funciona el autoplay del carrusel.

## Solución de Problemas

### El servidor no inicia

Si encuentras problemas al iniciar el servidor:

1. Asegúrate de que no haya otro proceso usando el puerto 5173.
2. Verifica que todas las dependencias se hayan instalado correctamente.
3. Consulta la consola para ver mensajes de error específicos.

### Problemas de visualización

Si la aplicación no se ve correctamente:

1. Asegúrate de estar usando un navegador moderno (Chrome, Firefox, Safari, Edge).
2. Limpia la caché del navegador.
3. Verifica que todas las dependencias de CSS y JavaScript se estén cargando correctamente (revisa la consola del navegador).

## Contacto para Soporte

Si encuentras algún problema o tienes preguntas, contacta a:

- **Email**: info@maiavr.cl
- **Desarrollador**: Juan Pablo Rojas (CTO) - jp@maiavr.cl 