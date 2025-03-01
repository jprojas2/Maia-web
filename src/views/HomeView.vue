<template>
  <div class="home">
    <!-- Hero Section -->
    <section class="section hero-section">
      <div class="container">
        <div class="hero__content">
          <h1 class="hero__title animate-fade-in">
            ¿Y si tus propiedades se vendieran solas?
          </h1>
          
          <!-- Demo Frame - Made smaller -->
          <div class="hero__demo animate-fade-in">
            <div class="demo-frame">
              <iframe 
                src="https://maiavr.s3.sa-east-1.amazonaws.com/demo.html" 
                frameborder="0" 
                allowfullscreen 
                allow="xr-spatial-tracking"
                class="demo-iframe">
              </iframe>
            </div>
          </div>
          
          <p class="hero__subtitle animate-slide-in-up">
            Maia transforma tus recorridos virtuales en experiencias de venta guiadas por inteligencia artificial, 
            analizando el comportamiento de tus clientes para destacar lo que realmente les importa.
          </p>
          
          <div class="hero__actions animate-slide-in-up">
            <a href="#pricing" class="btn btn--primary btn--lg">Ver Planes</a>
            <a href="#contact" class="btn btn--white btn--lg">Comenzar Ahora</a>
          </div>
        </div>
      </div>
    </section>
    
    <!-- Pricing Section -->
    <section class="section section--light" id="pricing">
      <div class="container">
        <div class="section__header">
          <h2 class="section__title">Planes y Precios</h2>
          <p class="section__subtitle">
            Elige el plan perfecto para tu negocio, desde pequeñas inmobiliarias hasta grandes corporaciones
          </p>
        </div>
        
        <div class="pricing">
          <div class="pricing-cards">
            <div class="pricing-card">
              <div class="pricing-card__header">
                <div class="card__icon">
                  <i class="fas fa-home"></i>
                </div>
                <h3 class="card__title">Básico</h3>
                <div class="pricing-card__price">
                  <span class="price-value">$40</span>
                  <span class="price-period">/mes</span>
                </div>
              </div>
              
              <div class="pricing-card__features">
                <div class="feature-item">
                  <span class="feature-check"><i class="fas fa-check"></i></span>
                  <span class="feature-text">5 propiedades activas</span>
                </div>
                <div class="feature-item">
                  <span class="feature-check"><i class="fas fa-check"></i></span>
                  <span class="feature-text">Chat con IA básico</span>
                </div>
                <div class="feature-item">
                  <span class="feature-check"><i class="fas fa-check"></i></span>
                  <span class="feature-text">Tours virtuales estándar</span>
                </div>
                <div class="feature-item">
                  <span class="feature-check"><i class="fas fa-check"></i></span>
                  <span class="feature-text">Soporte por email</span>
                </div>
              </div>
              
              <div class="pricing-card__action">
                <button class="btn btn--primary">Empezar Gratis</button>
              </div>
            </div>
            
            <div class="pricing-card pricing-card--featured">
              <div class="card__badge">Popular</div>
              <div class="pricing-card__header">
                <div class="card__icon">
                  <i class="fas fa-building"></i>
                </div>
                <h3 class="card__title">Profesional</h3>
                <div class="pricing-card__price">
                  <span class="price-value">$120</span>
                  <span class="price-period">/mes</span>
                </div>
              </div>
              
              <div class="pricing-card__features">
                <div class="feature-item">
                  <span class="feature-check"><i class="fas fa-check"></i></span>
                  <span class="feature-text">20 propiedades activas</span>
                </div>
                <div class="feature-item">
                  <span class="feature-check"><i class="fas fa-check"></i></span>
                  <span class="feature-text">Chat con IA avanzado con aprendizaje</span>
                </div>
                <div class="feature-item">
                  <span class="feature-check"><i class="fas fa-check"></i></span>
                  <span class="feature-text">Tours virtuales personalizados</span>
                </div>
                <div class="feature-item">
                  <span class="feature-check"><i class="fas fa-check"></i></span>
                  <span class="feature-text">Calificación de leads</span>
                </div>
                <div class="feature-item">
                  <span class="feature-check"><i class="fas fa-check"></i></span>
                  <span class="feature-text">Soporte prioritario</span>
                </div>
              </div>
              
              <div class="pricing-card__action">
                <button class="btn btn--gradient">Comenzar Ahora</button>
              </div>
            </div>
            
            <div class="pricing-card">
              <div class="pricing-card__header">
                <div class="card__icon">
                  <i class="fas fa-city"></i>
                </div>
                <h3 class="card__title">Empresarial</h3>
                <div class="pricing-card__price">
                  <span class="price-value">$200</span>
                  <span class="price-period">/mes</span>
                </div>
              </div>
              
              <div class="pricing-card__features">
                <div class="feature-item">
                  <span class="feature-check"><i class="fas fa-check"></i></span>
                  <span class="feature-text">Propiedades ilimitadas</span>
                </div>
                <div class="feature-item">
                  <span class="feature-check"><i class="fas fa-check"></i></span>
                  <span class="feature-text">Todas las características premium</span>
                </div>
                <div class="feature-item">
                  <span class="feature-check"><i class="fas fa-check"></i></span>
                  <span class="feature-text">API para integración con sistemas propios</span>
                </div>
                <div class="feature-item">
                  <span class="feature-check"><i class="fas fa-check"></i></span>
                  <span class="feature-text">Personalización de marca</span>
                </div>
                <div class="feature-item">
                  <span class="feature-check"><i class="fas fa-check"></i></span>
                  <span class="feature-text">Soporte dedicado 24/7</span>
                </div>
              </div>
              
              <div class="pricing-card__action">
                <button class="btn btn--primary">Contactar Ventas</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <!-- Features and Why Choose Us Section -->
    <section class="section section--light" id="features">
      <div class="container">
        <div class="section__header">
          <h2 class="section__title">¿Por Qué Elegir Maia?</h2>
          <p class="section__subtitle">
            Transforma la manera en que vendes propiedades con nuestra tecnología revolucionaria
          </p>
        </div>
        
        <!-- Stats Row - All stats included -->
        <div class="stats-container">
          <div class="stat-item">
            <span class="stat-number">92%</span>
            <span class="stat-label">Tasa de rebote en webs inmobiliarias tradicionales</span>
          </div>
          <div class="stat-item">
            <span class="stat-number">72%</span>
            <span class="stat-label">Más conversiones con Maia</span>
          </div>
          <div class="stat-item">
            <span class="stat-number">3.5x</span>
            <span class="stat-label">Mayor engagement</span>
          </div>
          <div class="stat-item">
            <span class="stat-number">40%</span>
            <span class="stat-label">Ventas más rápidas</span>
          </div>
        </div>
        
        <!-- Features with improved layout -->
        <div class="features-grid">
          <div class="feature-card">
            <div class="feature-icon">
              <i class="fas fa-robot"></i>
            </div>
            <h3 class="feature-title">Inteligencia Artificial</h3>
            <p class="feature-desc">
              Algoritmos avanzados que aprenden de cada interacción para ofrecer experiencias cada vez más personalizadas a tus clientes.
            </p>
          </div>
          
          <div class="feature-card">
            <div class="feature-icon">
              <i class="fas fa-chart-line"></i>
            </div>
            <h3 class="feature-title">Datos y Análisis</h3>
            <p class="feature-desc">
              Comprende qué características de tus propiedades generan más interés y ajusta tus estrategias de venta en base a datos reales.
            </p>
          </div>
          
          <div class="feature-card">
            <div class="feature-icon">
              <i class="fas fa-vr-cardboard"></i>
            </div>
            <h3 class="feature-title">Tours Virtuales 3D</h3>
            <p class="feature-desc">
              Recorridos inmersivos que permiten a los compradores explorar cada detalle de la propiedad como si estuvieran allí.
            </p>
          </div>
          
          <div class="feature-card">
            <div class="feature-icon">
              <i class="fas fa-plug"></i>
            </div>
            <h3 class="feature-title">Integración Sin Esfuerzo</h3>
            <p class="feature-desc">
              Implementa Maia en tu sitio web en minutos, sin necesidad de conocimientos técnicos. Se integra con tus herramientas actuales.
            </p>
          </div>
        </div>
      </div>
    </section>
    
    <!-- Testimonials Section -->
    <section class="section section--light">
      <div class="container">
        <div class="section__header">
          <h2 class="section__title">Lo que dicen nuestros clientes</h2>
          <p class="section__subtitle">
            Descubre cómo Maia está transformando la industria inmobiliaria para agentes y corredores en todo el país
          </p>
        </div>
        
        <div class="testimonials-wrapper">
          <div class="testimonial-card">
            <div class="testimonial__content">
              <i class="fas fa-quote-left quote-icon"></i>
              <p>"Desde que implementamos Maia en nuestro sitio web, las consultas por propiedades han aumentado en un 72%. Los clientes valoran la experiencia personalizada y nosotros apreciamos la calificación automática de leads."</p>
            </div>
            <div class="testimonial__author">
              <img src="https://images.unsplash.com/photo-1573497019940-1c28c88b4f3e?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=80" alt="Carolina Méndez" />
              <div>
                <h4>Carolina Méndez</h4>
                <p>Directora de Ventas, Inmobiliaria Futuro</p>
              </div>
            </div>
          </div>
          
          <div class="testimonial-card">
            <div class="testimonial__content">
              <i class="fas fa-quote-left quote-icon"></i>
              <p>"La integración de Maia en nuestra plataforma fue rápida y sin complicaciones. El equipo de soporte estuvo disponible en cada paso y los resultados han superado nuestras expectativas."</p>
            </div>
            <div class="testimonial__author">
              <img src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=80" alt="Roberto Fuentes" />
              <div>
                <h4>Roberto Fuentes</h4>
                <p>CEO, Propiedades Élite</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <!-- Team Section -->
    <section class="section team-section">
      <div class="container">
        <div class="section__header">
          <h2 class="section__title">Conoce al Equipo</h2>
          <p class="section__subtitle">
            Un grupo apasionado de profesionales dedicados a revolucionar el sector inmobiliario
          </p>
        </div>
        
        <div class="team-container">
          <div class="team-card">
            <div class="team-image">
              <img src="https://media.licdn.com/dms/image/v2/D4E03AQFi2QfyPeH3sQ/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1700504903894?e=1746057600&v=beta&t=T2CmNrKmIqp0Rn1Vd3TLguv87GMRzwZbgf8iDDiblYw" alt="Manuel Fernández" />
            </div>
            <div class="team-content">
              <h3>Manuel Fernández</h3>
              <h4>CEO & Co-Fundador</h4>
              <p>
                Arquitecto, experto en VR y modelado 3D, profesor universitario. Lidera la visión del producto y el diseño de experiencia.
              </p>
              <div class="team-social">
                <a href="https://www.linkedin.com/in/manjofer/" target="_blank" class="social-link" aria-label="LinkedIn">
                  <i class="fab fa-linkedin-in"></i>
                </a>
                <a href="mailto:manuel@maiavr.cl" class="social-link" aria-label="Email">
                  <i class="fas fa-envelope"></i>
                </a>
              </div>
            </div>
          </div>
          
          <div class="team-card">
            <div class="team-image">
              <img src="https://media.licdn.com/dms/image/v2/D4E03AQH2qkZrHLTaaA/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1706107499432?e=1746057600&v=beta&t=6TegZvoxBvFsN6uPjrwrqY-Zhb-Ra3mrIby415f14i4" alt="Juan Pablo Rojas" />
            </div>
            <div class="team-content">
              <h3>Juan Pablo Rojas</h3>
              <h4>CTO & Co-Fundador</h4>
              <p>
                10+ años en desarrollo de software, diseñó sistemas escalables para startups. Responsable de la arquitectura técnica y desarrollo de IA.
              </p>
              <div class="team-social">
                <a href="https://www.linkedin.com/in/juan-pablo-rojas-416157195/" target="_blank" class="social-link" aria-label="LinkedIn">
                  <i class="fab fa-linkedin-in"></i>
                </a>
              </div>
            </div>
          </div>
          
          <div class="team-card">
            <div class="team-image">
              <img src="https://media.licdn.com/dms/image/v2/C4D03AQExEzpf2qxawQ/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1635413934306?e=1746057600&v=beta&t=DZsUsWBp3D5yciGIHNtxFH15bROc2GTBmQOzZ9ikR00" alt="Federico Antunovic" />
            </div>
            <div class="team-content">
              <h3>Federico Antunovic</h3>
              <h4>CCO & Co-Fundador</h4>
              <p>
                MBA, 8+ años en ventas B2B, experiencia en consultoría inmobiliaria. Dirige las estrategias comerciales y relaciones con clientes.
              </p>
              <div class="team-social">
                <a href="https://www.linkedin.com/in/fantunovic/" target="_blank" class="social-link" aria-label="LinkedIn">
                  <i class="fab fa-linkedin-in"></i>
                </a>
                <a href="mailto:fede@maiavr.cl" class="social-link" aria-label="Email">
                  <i class="fas fa-envelope"></i>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <!-- CTA Section -->
    <section class="section section--gradient">
      <div class="container">
        <div class="cta">
          <h2 class="cta__title">¿Listo para transformar tu negocio inmobiliario?</h2>
          <p class="cta__subtitle">
            Únete a cientos de inmobiliarias que están aumentando sus ventas con Maia
          </p>
          <div class="cta__actions">
            <a href="#pricing" class="btn btn--white btn--lg">Ver Planes</a>
            <a href="#contact" class="btn btn--outline-white btn--lg">Solicitar Demo</a>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
export default {
  name: 'HomeView',
}
</script>

<style lang="scss" scoped>
@import "@/styles/variables.scss";

// Variables for the page
$primary-gradient: linear-gradient(135deg, $primary 0%, lighten($primary, 15%) 100%);
$section-spacing: $spacing-4xl;
$border-radius-enhanced: 20px; // Increased for more rounded corners

// General section styling
.section {
  padding: $section-spacing 0;
  position: relative;
  overflow: hidden;

  &--light {
    background-color: $light;
  }
  
  &__header {
    text-align: center;
    max-width: 800px;
    margin: 0 auto $spacing-2xl;
  }
  
  &__title {
    font-size: 2.5rem;
    margin-bottom: $spacing-md;
    color: $dark;
    font-weight: $font-weight-bold;
    
    @media (max-width: $breakpoint-md) {
      font-size: 2rem;
    }
  }
  
  &__subtitle {
    font-size: 1.1rem;
    color: $gray-600;
    line-height: 1.5;
  }
}

// Container
.container {
  max-width: $container-max-width;
  margin: 0 auto;
  padding: 0 $spacing-lg;
  width: 100%;
}

// Hero Section
.hero-section {
  padding-top: 150px;
  padding-bottom: $spacing-4xl;
  background-color: $light;
  text-align: center;
  
  .hero__content {
    max-width: 1000px;
    margin: 0 auto;
    display: flex;
    flex-direction: column;
    align-items: center;
  }
  
  .hero__title {
    font-size: 2.5rem;
    font-weight: $font-weight-bold;
    color: $dark;
    margin-bottom: $spacing-xl;
    line-height: 1.2;
    
    @media (max-width: $breakpoint-md) {
      font-size: 2rem;
    }
  }
  
  .hero__demo {
    width: 80%;
    margin: 0 auto $spacing-2xl;
    
    .demo-frame {
      position: relative;
      width: 100%;
      padding-bottom: 56.25%; // 16:9 aspect ratio
      height: 0;
      overflow: hidden;
      border-radius: $border-radius-enhanced;
      box-shadow: $shadow-lg;
      
      .demo-iframe {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        border: none;
      }
    }
  }
  
  .hero__subtitle {
    font-size: 1.5rem;
    font-weight: $font-weight-normal;
    color: $gray-700;
    margin-bottom: $spacing-xl;
    max-width: 800px;
    line-height: 1.5;
    
    @media (max-width: $breakpoint-md) {
      font-size: 1.2rem;
    }
  }
  
  .hero__actions {
    display: flex;
    gap: $spacing-md;
    margin-top: $spacing-lg;
    
    @media (max-width: $breakpoint-sm) {
      flex-direction: column;
      width: 100%;
      max-width: 300px;
      gap: $spacing-sm;
    }
  }
}

// Stats layout
.stats-container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  gap: $spacing-lg;
  margin: $spacing-2xl 0;
  
  @media (max-width: $breakpoint-md) {
    grid-template-columns: repeat(2, 1fr);
  }
  
  @media (max-width: $breakpoint-sm) {
    grid-template-columns: 1fr;
  }
  
  .stat-item {
    background-color: white;
    border-radius: $border-radius;
    padding: $spacing-lg;
    text-align: center;
    box-shadow: $shadow-sm;
    transition: $transition-base;
    
    &:hover {
      transform: translateY(-5px);
      box-shadow: $shadow;
    }
    
    .stat-number {
      display: block;
      font-size: 2.5rem;
      font-weight: $font-weight-bold;
      color: $primary;
      margin-bottom: $spacing-sm;
    }
    
    .stat-label {
      font-size: 1rem;
      color: $gray-700;
      line-height: 1.4;
    }
  }
}

// Features grid
.features-grid {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: $spacing-xl;
  margin-top: $spacing-2xl;
  
  @media (max-width: $breakpoint-md) {
    grid-template-columns: 1fr;
  }
  
  .feature-card {
    background-color: white;
    border-radius: $border-radius;
    padding: $spacing-xl;
    box-shadow: $shadow-sm;
    transition: $transition-base;
    
    &:hover {
      transform: translateY(-5px);
      box-shadow: $shadow;
    }
    
    .feature-icon {
      font-size: 2.5rem;
      color: $primary;
      margin-bottom: $spacing-md;
    }
    
    .feature-title {
      font-size: 1.5rem;
      font-weight: $font-weight-semibold;
      color: $dark;
      margin-bottom: $spacing-md;
    }
    
    .feature-desc {
      color: $gray-700;
      line-height: 1.6;
    }
  }
}

// Team section
.team-section {
  background-color: $light;
}

.team-container {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: $spacing-xl;
  margin-top: $spacing-2xl;
  
  @media (max-width: $breakpoint-lg) {
    grid-template-columns: repeat(2, 1fr);
  }
  
  @media (max-width: $breakpoint-sm) {
    grid-template-columns: 1fr;
  }
}

.team-card {
  background-color: white;
  border-radius: $border-radius;
  overflow: hidden;
  box-shadow: $shadow-sm;
  transition: $transition-base;
  
  &:hover {
    transform: translateY(-5px);
    box-shadow: $shadow;
  }
  
  .team-image {
    height: 250px;
    overflow: hidden;
    
    img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: $transition-base;
    }
  }
  
  .team-content {
    padding: $spacing-lg;
    
    h3 {
      font-size: 1.3rem;
      font-weight: $font-weight-semibold;
      margin-bottom: $spacing-xs;
      color: $dark;
    }
    
    h4 {
      font-size: 1rem;
      font-weight: $font-weight-medium;
      color: $primary;
      margin-bottom: $spacing-md;
    }
    
    p {
      color: $gray-700;
      font-size: 0.95rem;
      line-height: 1.5;
      margin-bottom: $spacing-md;
    }
    
    .team-social {
      display: flex;
      gap: $spacing-sm;
      
      .social-link {
        display: flex;
        align-items: center;
        justify-content: center;
        width: 36px;
        height: 36px;
        border-radius: 50%;
        background-color: $gray-200;
        color: $dark;
        transition: $transition-base;
        
        &:hover {
          background-color: $primary;
          color: white;
        }
      }
    }
  }
}

// CTA Section
.cta-section {
  text-align: center;
  padding: $spacing-3xl 0;
  background: $primary-gradient;
  border-radius: $border-radius-enhanced;
  margin: $spacing-3xl auto;
  max-width: 1000px;
  
  h2 {
    color: white;
    font-size: 2.5rem;
    font-weight: $font-weight-bold;
    margin-bottom: $spacing-md;
    
    @media (max-width: $breakpoint-md) {
      font-size: 2rem;
    }
  }
  
  p {
    color: rgba(white, 0.9);
    font-size: 1.2rem;
    max-width: 600px;
    margin: 0 auto $spacing-xl;
    line-height: 1.6;
  }
  
  .cta-buttons {
    display: flex;
    justify-content: center;
    gap: $spacing-md;
    
    @media (max-width: $breakpoint-sm) {
      flex-direction: column;
      align-items: center;
      gap: $spacing-sm;
    }
  }
}

// Animation classes
.animate-fade-in {
  opacity: 0;
  animation: fadeIn 1s forwards;
}

.animate-slide-in-up {
  opacity: 0;
  transform: translateY(30px);
  animation: slideInUp 1s forwards;
}

@keyframes fadeIn {
  from { opacity: 0; }
  to { opacity: 1; }
}

@keyframes slideInUp {
  from { 
    opacity: 0;
    transform: translateY(30px);
  }
  to { 
    opacity: 1;
    transform: translateY(0);
  }
}
</style> 