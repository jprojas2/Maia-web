# Maia AI - Transformando la venta inmobiliaria con IA

![Maia AI](https://images.unsplash.com/photo-1560518883-ce09059eeffa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=80)

## Descripción

Maia es una herramienta innovadora para la venta inmobiliaria guiada por IA. Transformamos la venta de propiedades en una experiencia de compra digital única, interactiva, personalizada y simple, acelerando la toma de decisiones y eliminando fricciones en el proceso de compra.

## Tecnologías Utilizadas

- **Vue.js 3**: Utilizamos la Composition API para una mejor organización del código y reactividad
- **Vite**: Sistema de construcción rápido para desarrollo y producción optimizada
- **SCSS**: Preprocesador CSS con variables, mixins y funciones para un estilo consistente
- **Vue Router**: Enrutamiento del lado del cliente con carga diferida para mejor rendimiento
- **VueUse**: Colección de utilidades de composición para Vue.js

## Estructura del Proyecto

```
maia-ai/
├── public/
│   └── favicon.ico
├── src/
│   ├── assets/
│   │   └── logomaia.png
│   ├── components/
│   │   ├── layout/
│   │   │   ├── AppHeader.vue       # Encabezado de la aplicación con navegación
│   │   │   └── AppFooter.vue       # Pie de página con enlaces y contacto
│   │   ├── ui/
│   │   │   └── AiChatWidget.vue    # Widget de chat con IA interactivo
│   │   └── sections/               # Componentes de sección para las vistas
│   ├── router/
│   │   └── index.js                # Configuración de rutas de la aplicación
│   ├── styles/
│   │   ├── main.scss               # Estilos globales de la aplicación
│   │   └── variables.scss          # Variables SCSS para diseño consistente
│   ├── views/
│   │   ├── HomeView.vue            # Vista principal con secciones de landing
│   │   ├── PricingView.vue         # Vista de planes y precios
│   │   └── ContactView.vue         # Vista de formulario de contacto
│   ├── App.vue                     # Componente raíz de la aplicación
│   └── main.js                     # Punto de entrada de la aplicación
├── index.html                      # Plantilla HTML principal
├── package.json                    # Dependencias y scripts del proyecto
├── vite.config.js                  # Configuración de Vite
├── setup.sh                        # Script de instalación y ejecución
└── README.md                       # Documentación del proyecto
```

## Instalación

1. Clona el repositorio:
   ```bash
   git clone https://github.com/tu-usuario/maia-ai.git
   cd maia-ai
   ```

2. Instala las dependencias:
   ```bash
   npm install
   ```

3. Inicia el servidor de desarrollo:
   ```bash
   npm run dev
   ```

4. Para construir para producción:
   ```bash
   npm run build
   ```

5. Alternativamente, puedes usar el script de instalación:
   ```bash
   ./setup.sh
   ```

## Características Principales

### IA Conversacional
- Interacción en lenguaje natural con los compradores
- Respuestas contextuales basadas en las preguntas del usuario
- Sugerencias de consultas para facilitar la interacción
- Indicadores de escritura para una experiencia más natural

### Tours Virtuales 3D
- Recorridos inmersivos guiados por IA
- Navegación intuitiva por las propiedades
- Información detallada sobre características y espacios
- Experiencia personalizada según intereses del comprador

### Calificación de Leads
- Segmentación automática de clientes basada en interacciones
- Análisis de comportamiento y preferencias
- Priorización de leads según probabilidad de compra
- Integración con CRM para seguimiento efectivo

### Gestión de Agendamientos
- Programación automática de visitas presenciales
- Sincronización con calendarios de agentes inmobiliarios
- Recordatorios y confirmaciones automáticas
- Seguimiento post-visita

### Simulación de Financiamiento
- Cálculos en tiempo real de opciones hipotecarias
- Personalización según perfil financiero del cliente
- Comparación de diferentes escenarios de financiamiento
- Información completa para toma de decisiones informadas

## Implementación Técnica

### Componentes Principales

#### AiChatWidget
- Widget de chat flotante accesible desde cualquier página
- Simulación de respuestas de IA con tiempos de espera realistas
- Historial de conversación persistente durante la sesión
- Interfaz adaptable a dispositivos móviles y escritorio

#### AppHeader
- Navegación principal con enlaces a secciones clave
- Comportamiento responsive con menú móvil
- Efectos visuales al hacer scroll
- Integración con Vue Router para navegación fluida

#### HomeView
- Secciones modulares para presentación del producto
- Carrusel de testimonios con autoplay y controles
- Demo interactivo con iframe para recorrido virtual
- Presentación del equipo con información de contacto

### Optimizaciones de Rendimiento

- Carga diferida de componentes de vista para reducir el tiempo de carga inicial
- Transiciones suaves entre rutas para mejorar la experiencia de usuario
- Estilos modularizados con SCSS para reducir la duplicación
- Imágenes optimizadas para carga rápida

## Planes y Precios

- **Básico**: $40/mes
  - 5 propiedades activas
  - Chat con IA básico
  - Tours virtuales estándar
  - Soporte por email

- **Profesional**: $120/mes
  - 20 propiedades activas
  - Chat con IA avanzado con aprendizaje
  - Tours virtuales personalizados
  - Calificación de leads
  - Soporte prioritario

- **Empresarial**: $200/mes
  - Propiedades ilimitadas
  - Todas las características premium
  - API para integración con sistemas propios
  - Personalización de marca
  - Soporte dedicado 24/7

## Acerca del Equipo

Somos un equipo de tres fundadores con experiencia en tecnología, arquitectura y ventas:

- **Manuel Fernández (CEO)**: Arquitecto, experto en VR y modelado 3D, profesor universitario. Lidera la visión del producto y el diseño de experiencia.

- **Juan Pablo Rojas (CTO)**: 10+ años en desarrollo de software, diseñó sistemas escalables para startups. Responsable de la arquitectura técnica y desarrollo de IA.

- **Federico Antunovic (CCO)**: MBA, 8+ años en ventas B2B, experiencia en consultoría inmobiliaria. Dirige las estrategias comerciales y relaciones con clientes.

## Próximas Funcionalidades

- Integración con plataformas inmobiliarias populares
- Análisis avanzado de datos para propietarios
- Personalización de recorridos según historial de usuario
- Aplicación móvil nativa para iOS y Android
- Soporte para múltiples idiomas

## Contacto

- **Email**: info@maiavr.cl
- **Sitio Web**: [https://www.maiavr.cl](https://www.maiavr.cl)
- **Ubicación**: Santiago, Chile
- **Agendar Demo**: [Calendario](https://calendar.app.google/CjKqkYmZtZNg2jFb8)

## Licencia

© 2024 Maia AI. Todos los derechos reservados. 