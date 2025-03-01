<template>
  <div class="home">
    <!-- Hero Section -->
    <section class="section hero">
      <div class="container">
        <div class="hero__content">
          <h1 class="hero__title animate-fade-in">
            ¿Y si tus propiedades se vendieran solas?
          </h1>
          
          <!-- Large Demo Frame -->
          <div class="hero__demo-large animate-fade-in">
            <div class="demo-frame full-width">
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
    
    <!-- Why Choose Maia Section -->
    <section class="section" id="features">
      <div class="container">
        <div class="section__header">
          <h2 class="section__title">¿Por qué elegir Maia?</h2>
          <p class="section__subtitle">
            Descubre cómo nuestra tecnología está transformando la forma de vender propiedades
          </p>
        </div>
        
        <!-- Stats moved from hero section to here -->
        <div class="stats-container">
          <div class="stat">
            <span class="stat__number">92%</span>
            <span class="stat__label">Tasa de rebote en webs inmobiliarias tradicionales</span>
          </div>
          <div class="stat">
            <span class="stat__number">72%</span>
            <span class="stat__label">Más conversiones con Maia</span>
          </div>
          <div class="stat">
            <span class="stat__number">3.5x</span>
            <span class="stat__label">Mayor engagement</span>
          </div>
          <div class="stat">
            <span class="stat__number">40%</span>
            <span class="stat__label">Ventas más rápidas</span>
          </div>
        </div>
        
        <div class="features-grid">
          <div class="feature-item">
            <div class="feature-image">
              <img src="https://images.unsplash.com/photo-1573164713988-8665fc963095?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=80" alt="Automatización Inteligente" />
            </div>
            <div class="feature-content">
              <h3>Automatización Inteligente</h3>
              <p>
                Maia analiza las preferencias de cada cliente en tiempo real, destacando las características de 
                la propiedad que más le interesan y adaptando el recorrido para maximizar el impacto.
              </p>
            </div>
          </div>
          
          <div class="feature-item reverse">
            <div class="feature-content">
              <h3>Datos y Análisis Avanzados</h3>
              <p>
                Obtén insights valiosos sobre el comportamiento de tus clientes. Maia registra qué características 
                generan más interés y te ayuda a ajustar tus estrategias de venta en base a datos reales.
              </p>
            </div>
            <div class="feature-image">
              <img src="https://images.unsplash.com/photo-1506784983877-45594efa4cbe?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=80" alt="Datos y Análisis Avanzados" />
            </div>
          </div>
          
          <div class="feature-item">
            <div class="feature-image">
              <img src="https://images.unsplash.com/photo-1563986768609-322da13575f3?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=80" alt="Integración Sin Esfuerzo" />
            </div>
            <div class="feature-content">
              <h3>Integración Sin Esfuerzo</h3>
              <p>
                Implementa Maia en tu sitio web y propiedades en minutos, sin necesidad de conocimientos técnicos. 
                Nuestra plataforma se integra perfectamente con las herramientas que ya utilizas.
              </p>
            </div>
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
    <section class="section" id="team">
      <div class="container">
        <div class="section__header">
          <h2 class="section__title">Conoce al Equipo</h2>
          <p class="section__subtitle">
            Un grupo apasionado de profesionales dedicados a revolucionar el sector inmobiliario
          </p>
        </div>
        
        <div class="team-grid">
          <div class="team-card">
            <div class="team-card__image">
              <img src="https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&auto=format&fit=crop&w=300&q=80" alt="Manuel Fernández" />
            </div>
            <div class="team-card__content">
              <h3>Manuel Fernández</h3>
              <p class="team-card__title">CEO & Co-Fundador</p>
              <p class="team-card__bio">
                Arquitecto, experto en VR y modelado 3D, profesor universitario. Lidera la visión del producto y el diseño de experiencia.
              </p>
              <div class="team-card__social">
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
            <div class="team-card__image">
              <img src="https://images.unsplash.com/photo-1560250097-0b93528c311a?ixlib=rb-1.2.1&auto=format&fit=crop&w=300&q=80" alt="Juan Pablo Rojas" />
            </div>
            <div class="team-card__content">
              <h3>Juan Pablo Rojas</h3>
              <p class="team-card__title">CTO & Co-Fundador</p>
              <p class="team-card__bio">
                10+ años en desarrollo de software, diseñó sistemas escalables para startups. Responsable de la arquitectura técnica y desarrollo de IA.
              </p>
              <div class="team-card__social">
                <a href="https://www.linkedin.com/in/juan-pablo-rojas-416157195/" target="_blank" class="social-link" aria-label="LinkedIn">
                  <i class="fab fa-linkedin-in"></i>
                </a>
              </div>
            </div>
          </div>
          
          <div class="team-card">
            <div class="team-card__image">
              <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&auto=format&fit=crop&w=300&q=80" alt="Federico Antunovic" />
            </div>
            <div class="team-card__content">
              <h3>Federico Antunovic</h3>
              <p class="team-card__title">CCO & Co-Fundador</p>
              <p class="team-card__bio">
                MBA, 8+ años en ventas B2B, experiencia en consultoría inmobiliaria. Dirige las estrategias comerciales y relaciones con clientes.
              </p>
              <div class="team-card__social">
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
.hero {
  background-color: white;
  padding-top: $spacing-4xl;
  padding-bottom: $spacing-2xl;
  
  &__content {
    max-width: 1000px;
    margin: 0 auto;
    text-align: center;
  }
  
  &__title {
    font-size: 3.5rem;
    font-weight: $font-weight-bold;
    margin-bottom: $spacing-xl;
    color: $dark;
    line-height: 1.2;
    
    @media (max-width: $breakpoint-md) {
      font-size: 2.5rem;
    }
    
    @media (max-width: $breakpoint-sm) {
      font-size: 2rem;
    }
  }
  
  &__demo-large {
    margin: $spacing-2xl auto;
    max-width: 1000px;
    border-radius: $border-radius-enhanced;
    overflow: hidden;
    box-shadow: $shadow-lg;
  }
  
  &__subtitle {
    font-size: 1.2rem;
    color: $gray-600;
    margin-bottom: $spacing-xl;
    max-width: 800px;
    margin-left: auto;
    margin-right: auto;
    line-height: 1.6;
  }
  
  &__actions {
    display: flex;
    justify-content: center;
    gap: $spacing-md;
    margin-bottom: $spacing-2xl;
    
    @media (max-width: $breakpoint-sm) {
      flex-direction: column;
      gap: $spacing-sm;
      align-items: center;
    }
  }
}

// Demo Frame
.demo-frame {
  position: relative;
  width: 100%;
  height: 0;
  padding-bottom: 56.25%; // 16:9 aspect ratio
  background-color: $gray-800;
  border-radius: $border-radius-enhanced; 
  overflow: hidden;
  box-shadow: $shadow;
  
  &.full-width {
    padding-bottom: 56.25%; // 16:9 aspect ratio
  }
  
  .demo-iframe {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    border: none;
  }
}

// Action buttons
.btn {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  padding: $spacing-sm $spacing-lg;
  border-radius: $border-radius-enhanced;
  font-weight: $font-weight-semibold;
  font-size: 1rem;
  text-decoration: none;
  transition: $transition-base;
  cursor: pointer;
  border: none;
  
  &--primary {
    background-color: $primary;
    color: white;
    
    &:hover {
      background-color: darken($primary, 5%);
      transform: translateY(-2px);
    }
  }
  
  &--white {
    background-color: white;
    color: $dark;
    box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
    
    &:hover {
      box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
      transform: translateY(-2px);
    }
  }
  
  &--gradient {
    background: $primary-gradient;
    color: white;
    
    &:hover {
      opacity: 0.9;
      transform: translateY(-2px);
    }
  }
  
  &--lg {
    padding: $spacing-md $spacing-xl;
    font-size: 1.1rem;
  }
}

// Stats and Features
.stats-container {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  gap: $spacing-xl;
  margin-bottom: $spacing-2xl;
  
  .stat {
    flex: 1;
    min-width: 200px;
    max-width: 250px;
    text-align: center;
    background-color: white;
    padding: $spacing-lg;
    border-radius: $border-radius-enhanced;
    box-shadow: $shadow;
    transition: transform 0.3s ease;
    
    &:hover {
      transform: translateY(-5px);
    }
    
    &__number {
      display: block;
      font-size: 2.5rem;
      font-weight: $font-weight-bold;
      color: $primary;
      margin-bottom: $spacing-xs;
    }
    
    &__label {
      color: $gray-600;
      font-size: 0.95rem;
    }
  }
}

// Features Grid
.features-grid {
  display: flex;
  flex-direction: column;
  gap: $spacing-3xl;
  margin-top: $spacing-3xl;
  
  .feature-item {
    display: flex;
    flex-direction: column;
    gap: $spacing-lg;
    
    @media (min-width: $breakpoint-md) {
      flex-direction: row;
      align-items: center;
      
      &.reverse {
        flex-direction: row-reverse;
      }
    }
    
    .feature-image {
      flex: 1;
      
      img {
        width: 100%;
        height: auto;
        border-radius: $border-radius-enhanced;
        box-shadow: $shadow;
        transition: transform 0.3s ease;
        
        &:hover {
          transform: scale(1.02);
        }
      }
    }
    
    .feature-content {
      flex: 1;
      padding: $spacing-lg;
      
      h3 {
        font-size: 1.8rem;
        font-weight: $font-weight-bold;
        margin-bottom: $spacing-md;
        color: $dark;
      }
      
      p {
        font-size: 1.1rem;
        color: $gray-600;
        line-height: 1.6;
      }
    }
  }
}

// Pricing Cards
.pricing {
  margin-top: $spacing-2xl;
  
  &-cards {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: $spacing-lg;
    max-width: 1200px;
    margin: 0 auto;
  }
  
  &-card {
    background-color: white;
    border-radius: $border-radius-enhanced;
    box-shadow: $shadow;
    overflow: hidden;
    transition: $transition-base;
    position: relative;
    padding: $spacing-lg;
    
    &:hover {
      transform: translateY(-10px);
      box-shadow: $shadow-lg;
    }
    
    &--featured {
      border: 2px solid $primary;
      transform: scale(1.05);
      
      @media (max-width: $breakpoint-md) {
        transform: scale(1);
      }
      
      &:hover {
        transform: translateY(-10px) scale(1.05);
        
        @media (max-width: $breakpoint-md) {
          transform: translateY(-10px);
        }
      }
    }
    
    &__header {
      text-align: center;
      padding: $spacing-lg;
      border-bottom: 1px solid $gray-200;
      margin-bottom: $spacing-lg;
      
      .card__icon {
        width: 60px;
        height: 60px;
        background: rgba($primary, 0.1);
        color: $primary;
        display: flex;
        align-items: center;
        justify-content: center;
        border-radius: 50%;
        margin: 0 auto $spacing-md;
        font-size: 1.5rem;
      }
      
      .card__title {
        font-size: 1.5rem;
        font-weight: $font-weight-bold;
        margin-bottom: $spacing-md;
        color: $dark;
      }
    }
    
    &__price {
      .price-value {
        font-size: 2.5rem;
        font-weight: $font-weight-bold;
        color: $dark;
      }
      
      .price-period {
        font-size: 1rem;
        color: $gray-500;
      }
    }
    
    &__features {
      padding: 0 $spacing-md $spacing-lg;
      
      .feature-item {
        display: flex;
        align-items: center;
        margin-bottom: $spacing-sm;
        padding: $spacing-xs 0;
        
        .feature-check {
          color: $primary;
          margin-right: $spacing-sm;
          font-size: 0.9rem;
        }
        
        .feature-text {
          color: $gray-700;
        }
      }
    }
    
    &__action {
      text-align: center;
      padding: $spacing-lg;
      
      .btn {
        width: 100%;
      }
    }
    
    .card__badge {
      position: absolute;
      top: 10px;
      right: 10px;
      background: $primary-gradient;
      color: white;
      padding: 5px 10px;
      font-size: 0.8rem;
      font-weight: $font-weight-bold;
      border-radius: $border-radius-pill;
    }
  }
}

// Testimonials
.testimonials-wrapper {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: $spacing-lg;
  margin-top: $spacing-2xl;
  
  .testimonial-card {
    background-color: white;
    border-radius: $border-radius-enhanced;
    box-shadow: $shadow;
    padding: $spacing-lg;
    transition: $transition-base;
    
    &:hover {
      transform: translateY(-5px);
      box-shadow: $shadow-lg;
    }
    
    .quote-icon {
      font-size: 1.5rem;
      color: rgba($primary, 0.2);
      margin-bottom: $spacing-sm;
    }
    
    .testimonial__content {
      margin-bottom: $spacing-lg;
      
      p {
        font-size: 1.05rem;
        color: $gray-700;
        line-height: 1.6;
      }
    }
    
    .testimonial__author {
      display: flex;
      align-items: center;
      
      img {
        width: 50px;
        height: 50px;
        border-radius: 50%;
        object-fit: cover;
        margin-right: $spacing-sm;
      }
      
      div {
        h4 {
          font-size: 1.1rem;
          font-weight: $font-weight-semibold;
          margin: 0;
          color: $dark;
        }
        
        p {
          font-size: 0.9rem;
          color: $gray-500;
          margin: 0;
        }
      }
    }
  }
}

// Team Grid
.team-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: $spacing-xl;
  margin-top: $spacing-2xl;
  
  .team-card {
    background-color: white;
    border-radius: $border-radius-enhanced;
    overflow: hidden;
    box-shadow: $shadow;
    transition: $transition-base;
    
    &:hover {
      transform: translateY(-10px);
      box-shadow: $shadow-lg;
    }
    
    &__image {
      width: 100%;
      height: 0;
      padding-bottom: 75%;
      position: relative;
      overflow: hidden;
      
      img {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        object-fit: cover;
        transition: transform 0.5s ease;
      }
      
      &:hover img {
        transform: scale(1.05);
      }
    }
    
    &__content {
      padding: $spacing-lg;
      text-align: center;
      
      h3 {
        font-size: 1.5rem;
        font-weight: $font-weight-bold;
        margin-bottom: $spacing-xs;
        color: $dark;
      }
      
      .team-card__title {
        color: $primary;
        font-weight: $font-weight-semibold;
        margin-bottom: $spacing-md;
      }
      
      .team-card__bio {
        color: $gray-600;
        font-size: 0.95rem;
        line-height: 1.5;
        margin-bottom: $spacing-lg;
      }
      
      .team-card__social {
        display: flex;
        justify-content: center;
        gap: $spacing-sm;
        
        .social-link {
          display: flex;
          align-items: center;
          justify-content: center;
          width: 36px;
          height: 36px;
          background-color: rgba($primary, 0.1);
          color: $primary;
          border-radius: 50%;
          transition: all 0.2s ease;
          
          &:hover {
            background-color: $primary;
            color: white;
            transform: translateY(-2px);
          }
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