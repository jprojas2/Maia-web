# Maia AI - Guía de Inicio Rápido

Esta guía te ayudará a poner en marcha rápidamente la aplicación Maia AI para pruebas.

## Inicio Rápido (3 Opciones)

### Opción 1: Asistente Interactivo (Recomendado)

Ejecuta el asistente interactivo que te guiará paso a paso:

```bash
./start-maia.sh
```

Este script te proporcionará un menú con todas las opciones necesarias para probar la aplicación.

### Opción 2: Instalación Automática

Si prefieres un enfoque directo, simplemente ejecuta:

```bash
./setup.sh
```

Este script instalará todas las dependencias y iniciará el servidor de desarrollo automáticamente.

### Opción 3: Instalación Manual

Si prefieres hacerlo manualmente:

1. Instala las dependencias:
   ```bash
   npm install
   ```

2. Inicia el servidor de desarrollo:
   ```bash
   npm run dev
   ```

## Acceso a la Aplicación

Una vez que el servidor esté en funcionamiento:

- Abre tu navegador y ve a: [http://localhost:5173](http://localhost:5173)
- Alternativamente, abre el archivo `test.html` incluido en este proyecto

## Verificación de Requisitos

Si encuentras problemas, puedes verificar que todos los archivos necesarios estén presentes:

```bash
./check-setup.sh
```

## Funcionalidades para Probar

- **Widget de Chat con IA**: Haz clic en el botón flotante "Chat con Maia" en la esquina inferior derecha.
- **Navegación Responsive**: Redimensiona la ventana para ver la adaptación a diferentes tamaños.
- **Sección de Demo**: Prueba el recorrido virtual en la sección Demo.
- **Carrusel de Testimonios**: Navega por los testimonios de clientes.

## Documentación Adicional

Para información más detallada, consulta:

- `README.md`: Documentación completa del proyecto
- `README-TEST.md`: Guía detallada de pruebas
- `SUMMARY.md`: Resumen técnico del proyecto

---

© 2024 Maia AI 