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
          <div class="row">
            <div class="col">
              <div class="card pricing-card">
                <div class="card__icon">
                  <i class="fas fa-home"></i>
                </div>
                <h3 class="card__title">Básico</h3>
                <div class="pricing-card__price">
                  <span class="price-value">$40</span>
                  <span class="price-period">/mes</span>
                </div>
                <ul class="pricing-card__features">
                  <li>5 propiedades activas</li>
                  <li>Chat con IA básico</li>
                  <li>Tours virtuales estándar</li>
                  <li>Soporte por email</li>
                </ul>
                <div class="pricing-card__action">
                  <button class="btn btn--primary">Empezar Gratis</button>
                </div>
              </div>
            </div>
            
            <div class="col">
              <div class="card pricing-card pricing-card--featured">
                <div class="card__badge">Popular</div>
                <div class="card__icon">
                  <i class="fas fa-building"></i>
                </div>
                <h3 class="card__title">Profesional</h3>
                <div class="pricing-card__price">
                  <span class="price-value">$120</span>
                  <span class="price-period">/mes</span>
                </div>
                <ul class="pricing-card__features">
                  <li>20 propiedades activas</li>
                  <li>Chat con IA avanzado con aprendizaje</li>
                  <li>Tours virtuales personalizados</li>
                  <li>Calificación de leads</li>
                  <li>Soporte prioritario</li>
                </ul>
                <div class="pricing-card__action">
                  <button class="btn btn--gradient">Comenzar Ahora</button>
                </div>
              </div>
            </div>
            
            <div class="col">
              <div class="card pricing-card">
                <div class="card__icon">
                  <i class="fas fa-city"></i>
                </div>
                <h3 class="card__title">Empresarial</h3>
                <div class="pricing-card__price">
                  <span class="price-value">$200</span>
                  <span class="price-period">/mes</span>
                </div>
                <ul class="pricing-card__features">
                  <li>Propiedades ilimitadas</li>
                  <li>Todas las características premium</li>
                  <li>API para integración con sistemas propios</li>
                  <li>Personalización de marca</li>
                  <li>Soporte dedicado 24/7</li>
                </ul>
                <div class="pricing-card__action">
                  <button class="btn btn--primary">Contactar Ventas</button>
                </div>
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
        
        <div class="features-container">
          <div class="feature-col">
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
          
          <div class="feature-col reverse">
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
          
          <div class="feature-col">
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
        
        <div class="testimonials">
          <div class="row">
            <div class="col">
              <div class="testimonial">
                <div class="testimonial__content">
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
            </div>
            
            <div class="col">
              <div class="testimonial">
                <div class="testimonial__content">
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
        
        <div class="team">
          <div class="team-member">
            <div class="team-member__image">
              <img src="https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&auto=format&fit=crop&w=300&q=80" alt="Manuel Fernández" />
            </div>
            <h3 class="team-member__name">Manuel Fernández</h3>
            <p class="team-member__title">CEO & Co-Fundador</p>
            <p class="team-member__bio">
              Arquitecto, experto en VR y modelado 3D, profesor universitario. Lidera la visión del producto y el diseño de experiencia.
            </p>
            <div class="team-member__social">
              <a href="https://www.linkedin.com/in/manjofer/" target="_blank" aria-label="LinkedIn">
                <i class="fab fa-linkedin-in"></i>
              </a>
              <a href="mailto:manuel@maiavr.cl" aria-label="Email">
                <i class="fas fa-envelope"></i>
              </a>
            </div>
          </div>
          
          <div class="team-member">
            <div class="team-member__image">
              <img src="https://images.unsplash.com/photo-1560250097-0b93528c311a?ixlib=rb-1.2.1&auto=format&fit=crop&w=300&q=80" alt="Juan Pablo Rojas" />
            </div>
            <h3 class="team-member__name">Juan Pablo Rojas</h3>
            <p class="team-member__title">CTO & Co-Fundador</p>
            <p class="team-member__bio">
              10+ años en desarrollo de software, diseñó sistemas escalables para startups. Responsable de la arquitectura técnica y desarrollo de IA.
            </p>
            <div class="team-member__social">
              <a href="https://www.linkedin.com/in/juan-pablo-rojas-416157195/" target="_blank" aria-label="LinkedIn">
                <i class="fab fa-linkedin-in"></i>
              </a>
            </div>
          </div>
          
          <div class="team-member">
            <div class="team-member__image">
              <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&auto=format&fit=crop&w=300&q=80" alt="Federico Antunovic" />
            </div>
            <h3 class="team-member__name">Federico Antunovic</h3>
            <p class="team-member__title">CCO & Co-Fundador</p>
            <p class="team-member__bio">
              MBA, 8+ años en ventas B2B, experiencia en consultoría inmobiliaria. Dirige las estrategias comerciales y relaciones con clientes.
            </p>
            <div class="team-member__social">
              <a href="https://www.linkedin.com/in/fantunovic/" target="_blank" aria-label="LinkedIn">
                <i class="fab fa-linkedin-in"></i>
              </a>
              <a href="mailto:fede@maiavr.cl" aria-label="Email">
                <i class="fas fa-envelope"></i>
              </a>
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

// Features section with vertical columns
.features-container {
  display: flex;
  flex-direction: column;
  gap: $spacing-3xl;
  margin-top: $spacing-2xl;
  
  @media (min-width: $breakpoint-md) {
    gap: $spacing-4xl;
  }
  
  .feature-col {
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
        border-radius: $border-radius-lg;
        box-shadow: $shadow;
      }
    }
    
    .feature-content {
      flex: 1;
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

// Keep other styles as they are, just removed the demo section CSS
</style> 