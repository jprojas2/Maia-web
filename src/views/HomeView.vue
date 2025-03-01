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
          
          <div class="hero__stats animate-fade-in">
            <div class="stat">
              <span class="stat__number">72%</span>
              <span class="stat__label">Más conversiones</span>
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
                  <i class="fas fa-check"></i> 5 propiedades activas
                </div>
                <div class="feature-item">
                  <i class="fas fa-check"></i> Chat con IA básico
                </div>
                <div class="feature-item">
                  <i class="fas fa-check"></i> Tours virtuales estándar
                </div>
                <div class="feature-item">
                  <i class="fas fa-check"></i> Soporte por email
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
                  <i class="fas fa-check"></i> 20 propiedades activas
                </div>
                <div class="feature-item">
                  <i class="fas fa-check"></i> Chat con IA avanzado con aprendizaje
                </div>
                <div class="feature-item">
                  <i class="fas fa-check"></i> Tours virtuales personalizados
                </div>
                <div class="feature-item">
                  <i class="fas fa-check"></i> Calificación de leads
                </div>
                <div class="feature-item">
                  <i class="fas fa-check"></i> Soporte prioritario
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
                  <i class="fas fa-check"></i> Propiedades ilimitadas
                </div>
                <div class="feature-item">
                  <i class="fas fa-check"></i> Todas las características premium
                </div>
                <div class="feature-item">
                  <i class="fas fa-check"></i> API para integración con sistemas propios
                </div>
                <div class="feature-item">
                  <i class="fas fa-check"></i> Personalización de marca
                </div>
                <div class="feature-item">
                  <i class="fas fa-check"></i> Soporte dedicado 24/7
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

// Define variables
$light-blue-bg: #f0f8ff;
$primary-gradient: linear-gradient(135deg, $primary 0%, lighten($primary, 15%) 100%);

.home {
  width: 100%;
}

// General section styling
.section {
  padding: $spacing-4xl 0;
  
  &--light {
    background-color: $light-blue-bg;
  }
  
  &--gradient {
    background: $primary-gradient;
    color: white;
  }
  
  &__header {
    text-align: center;
    max-width: 800px;
    margin: 0 auto $spacing-2xl;
  }
  
  &__title {
    font-size: 2.5rem;
    font-weight: $font-weight-bold;
    margin-bottom: $spacing-md;
    color: $dark;
  }
  
  &__subtitle {
    font-size: 1.1rem;
    color: $gray-700;
  }
}

// Hero section with larger demo
.hero {
  padding: $spacing-3xl 0;
  position: relative;
  overflow: hidden;
  background-color: $light;
  
  &__content {
    max-width: 100%;
    text-align: center;
    margin: 0 auto;
  }
  
  &__title {
    font-size: 2.8rem;
    font-weight: $font-weight-bold;
    margin-bottom: $spacing-lg;
    color: $dark;
    
    @media (min-width: $breakpoint-md) {
      font-size: 3.5rem;
    }
    
    .highlight {
      color: $primary;
    }
  }
  
  &__subtitle {
    font-size: 1.1rem;
    color: $gray-700;
    margin-bottom: $spacing-lg;
    max-width: 800px;
    margin-left: auto;
    margin-right: auto;
    
    @media (min-width: $breakpoint-md) {
      font-size: 1.25rem;
    }
  }
  
  &__demo-large {
    width: 100%;
    margin: $spacing-lg auto;
    
    .demo-frame {
      position: relative;
      width: 100%;
      height: 0;
      padding-bottom: 56.25%; // 16:9 aspect ratio
      border-radius: $border-radius-lg;
      overflow: hidden;
      box-shadow: $shadow-lg;
      
      &.full-width {
        width: 90%;
        max-width: 1200px;
        margin: 0 auto;
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
  }
  
  &__actions {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: $spacing-md;
    margin-bottom: $spacing-xl;
    
    .btn {
      min-width: 150px;
    }
  }
  
  &__stats {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: $spacing-xl;
    margin-top: $spacing-lg;
    
    .stat {
      text-align: center;
      
      &__number {
        display: block;
        font-size: 2.5rem;
        font-weight: $font-weight-bold;
        color: $primary;
      }
      
      &__label {
        display: block;
        color: $gray-700;
        font-size: 1rem;
      }
    }
  }
}

// Pricing cards
.pricing {
  margin-top: $spacing-2xl;
  
  &-cards {
    display: grid;
    grid-template-columns: 1fr;
    gap: $spacing-xl;
    
    @media (min-width: $breakpoint-md) {
      grid-template-columns: repeat(3, 1fr);
    }
  }
  
  &-card {
    background-color: white;
    border-radius: $border-radius-lg;
    box-shadow: $shadow;
    overflow: hidden;
    transition: $transition-base;
    position: relative;
    
    &:hover {
      transform: translateY(-10px);
      box-shadow: $shadow-lg;
    }
    
    &--featured {
      transform: scale(1.05);
      border: 2px solid $primary;
      
      &:hover {
        transform: translateY(-10px) scale(1.05);
      }
      
      .pricing-card__header {
        background: $primary-gradient;
        
        .card__title, .pricing-card__price {
          color: white;
        }
      }
    }
    
    &__header {
      padding: $spacing-xl $spacing-lg;
      text-align: center;
      border-bottom: 1px solid $gray-200;
      
      .card__icon {
        font-size: 2.5rem;
        color: $primary;
        margin-bottom: $spacing-sm;
      }
      
      .card__title {
        font-size: 1.5rem;
        font-weight: $font-weight-bold;
        margin-bottom: $spacing-sm;
      }
    }
    
    &__price {
      margin-top: $spacing-md;
      
      .price-value {
        font-size: 2.5rem;
        font-weight: $font-weight-bold;
      }
      
      .price-period {
        font-size: 1rem;
        color: $gray-600;
      }
    }
    
    &__features {
      padding: $spacing-xl $spacing-lg;
      
      .feature-item {
        display: flex;
        align-items: flex-start;
        margin-bottom: $spacing-md;
        font-size: 1rem;
        color: $gray-700;
        
        i {
          color: $primary;
          margin-right: $spacing-sm;
          font-size: 0.9rem;
        }
      }
    }
    
    &__action {
      padding: 0 $spacing-lg $spacing-xl;
      text-align: center;
      
      .btn {
        width: 100%;
      }
    }
    
    .card__badge {
      position: absolute;
      top: $spacing-md;
      right: $spacing-md;
      background-color: $primary;
      color: white;
      padding: $spacing-xs $spacing-sm;
      border-radius: $border-radius-pill;
      font-size: 0.8rem;
      font-weight: $font-weight-semibold;
    }
  }
}

// Features section with side-by-side layout
.features-grid {
  display: grid;
  grid-template-columns: 1fr;
  gap: $spacing-3xl;
  margin-top: $spacing-2xl;
  
  .feature-item {
    display: grid;
    grid-template-columns: 1fr;
    gap: $spacing-lg;
    
    @media (min-width: $breakpoint-md) {
      grid-template-columns: 1fr 1fr;
      align-items: center;
      
      &.reverse {
        .feature-content {
          order: 1;
        }
        .feature-image {
          order: 2;
        }
      }
    }
    
    .feature-image {
      img {
        width: 100%;
        border-radius: $border-radius-lg;
        box-shadow: $shadow;
      }
    }
    
    .feature-content {
      padding: $spacing-lg;
      
      h3 {
        font-size: 1.8rem;
        margin-bottom: $spacing-md;
        color: $dark;
      }
      
      p {
        font-size: 1.1rem;
        color: $gray-700;
        margin: 0;
      }
    }
  }
}

// Testimonials
.testimonials-wrapper {
  display: grid;
  grid-template-columns: 1fr;
  gap: $spacing-xl;
  margin-top: $spacing-2xl;
  
  @media (min-width: $breakpoint-md) {
    grid-template-columns: repeat(2, 1fr);
  }
  
  .testimonial-card {
    background-color: white;
    border-radius: $border-radius-lg;
    box-shadow: $shadow;
    padding: $spacing-xl;
    transition: $transition-base;
    
    &:hover {
      transform: translateY(-5px);
      box-shadow: $shadow-lg;
    }
    
    .testimonial__content {
      margin-bottom: $spacing-lg;
      position: relative;
      
      .quote-icon {
        font-size: 2rem;
        color: rgba($primary, 0.2);
        position: absolute;
        top: -$spacing-md;
        left: -$spacing-md;
      }
      
      p {
        position: relative;
        font-size: 1.1rem;
        line-height: 1.6;
        color: $gray-700;
        z-index: 1;
      }
    }
    
    .testimonial__author {
      display: flex;
      align-items: center;
      
      img {
        width: 50px;
        height: 50px;
        border-radius: 50%;
        margin-right: $spacing-md;
        object-fit: cover;
      }
      
      div {
        h4 {
          font-size: 1.1rem;
          margin: 0 0 $spacing-xs;
          color: $dark;
        }
        
        p {
          margin: 0;
          font-size: 0.9rem;
          color: $gray-600;
        }
      }
    }
  }
}

// Team Cards
.team-grid {
  display: grid;
  grid-template-columns: 1fr;
  gap: $spacing-xl;
  margin-top: $spacing-2xl;
  
  @media (min-width: $breakpoint-sm) {
    grid-template-columns: repeat(2, 1fr);
  }
  
  @media (min-width: $breakpoint-lg) {
    grid-template-columns: repeat(3, 1fr);
  }
  
  .team-card {
    background-color: white;
    border-radius: $border-radius-lg;
    box-shadow: $shadow;
    overflow: hidden;
    transition: $transition-base;
    
    &:hover {
      transform: translateY(-10px);
      box-shadow: $shadow-lg;
      
      .team-card__image img {
        transform: scale(1.05);
      }
    }
    
    &__image {
      height: 250px;
      overflow: hidden;
      
      img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        transition: transform 0.5s ease;
      }
    }
    
    &__content {
      padding: $spacing-lg;
      text-align: center;
      
      h3 {
        font-size: 1.4rem;
        margin-bottom: $spacing-xs;
        color: $dark;
      }
    }
    
    &__title {
      font-size: 1rem;
      color: $primary;
      font-weight: $font-weight-semibold;
      margin-bottom: $spacing-md;
    }
    
    &__bio {
      font-size: 0.95rem;
      color: $gray-700;
      margin-bottom: $spacing-lg;
    }
    
    &__social {
      display: flex;
      justify-content: center;
      gap: $spacing-sm;
      
      .social-link {
        display: flex;
        align-items: center;
        justify-content: center;
        width: 36px;
        height: 36px;
        border-radius: 50%;
        background-color: rgba($primary, 0.1);
        color: $primary;
        transition: $transition-base;
        
        &:hover {
          background-color: $primary;
          color: white;
          transform: translateY(-3px);
        }
      }
    }
  }
}

// Call to Action
.cta {
  text-align: center;
  padding: $spacing-xl 0;
  
  &__title {
    font-size: 2.5rem;
    font-weight: $font-weight-bold;
    margin-bottom: $spacing-md;
  }
  
  &__subtitle {
    font-size: 1.2rem;
    margin-bottom: $spacing-xl;
    opacity: 0.9;
  }
  
  &__actions {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: $spacing-md;
    
    .btn {
      min-width: 180px;
    }
  }
}

// Animation classes
.animate-fade-in {
  animation: fadeIn 1s ease forwards;
}

.animate-slide-in-up {
  animation: slideInUp 0.8s ease forwards;
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