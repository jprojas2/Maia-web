<template>
  <div class="home">
    <!-- Hero Section -->
    <section class="section hero">
      <div class="container">
        <div class="hero__content">
          <h1 class="hero__title animate-fade-in">
            La asistente virtual que <span class="highlight">revoluciona</span> la venta inmobiliaria
          </h1>
          <p class="hero__subtitle animate-slide-in-up">
            Maia transforma tus recorridos virtuales en experiencias de venta guiadas por inteligencia artificial, 
            analizando el comportamiento de tus clientes para destacar lo que realmente les importa.
          </p>
          <div class="hero__actions animate-slide-in-up">
            <button class="btn btn--primary btn--lg">Comenzar Demo</button>
            <button class="btn btn--white btn--lg">Ver Planes</button>
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
        
        <div class="hero__image animate-slide-in-right">
          <img src="@/assets/logomaia.png" alt="Maia AI en acción" />
        </div>
      </div>
    </section>
    
    <!-- Features Section -->
    <section class="section section--light">
      <div class="container">
        <div class="section__header">
          <h2 class="section__title">¿Por qué elegir Maia?</h2>
          <p class="section__subtitle">
            Nuestro asistente virtual inteligente potencia tus ventas inmobiliarias con tecnología de vanguardia
          </p>
        </div>
        
        <div class="features">
          <div class="feature-highlight">
            <div class="feature-highlight__image" style="background-image: url('@/assets/logomaia.png')"></div>
            <div class="feature-highlight__content">
              <h3 class="feature-highlight__title">Automatización Inteligente</h3>
              <p class="feature-highlight__description">
                Maia analiza las preferencias de cada cliente en tiempo real, destacando las características de 
                la propiedad que más le interesan y adaptando el recorrido para maximizar el impacto.
              </p>
              <button class="btn btn--primary">Descubre cómo funciona</button>
            </div>
          </div>
          
          <div class="feature-highlight">
            <div class="feature-highlight__content">
              <h3 class="feature-highlight__title">Datos y Análisis Avanzados</h3>
              <p class="feature-highlight__description">
                Obtén insights valiosos sobre el comportamiento de tus clientes. Maia registra qué características 
                generan más interés y te ayuda a ajustar tus estrategias de venta en base a datos reales.
              </p>
              <button class="btn btn--primary">Ver métricas disponibles</button>
            </div>
            <div class="feature-highlight__image" style="background-image: url('@/assets/logomaia.png')"></div>
          </div>
          
          <div class="feature-highlight">
            <div class="feature-highlight__image" style="background-image: url('@/assets/logomaia.png')"></div>
            <div class="feature-highlight__content">
              <h3 class="feature-highlight__title">Integración Sin Esfuerzo</h3>
              <p class="feature-highlight__description">
                Implementa Maia en tu sitio web y propiedades en minutos, sin necesidad de conocimientos técnicos. 
                Nuestra plataforma se integra perfectamente con las herramientas que ya utilizas.
              </p>
              <button class="btn btn--primary">Probar integración</button>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <!-- Testimonials Section -->
    <section class="section">
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
                  "Desde que implementamos Maia, nuestras conversiones han aumentado un 65%. Los clientes valoran la experiencia personalizada y nuestros agentes pueden enfocarse en los aspectos más importantes de cada propiedad."
                </div>
                <div class="testimonial__author">
                  <img src="@/assets/logomaia.png" alt="Carolina Méndez" />
                  <div>
                    <div class="testimonial__author-name">Carolina Méndez</div>
                    <div class="testimonial__author-title">Directora de Ventas, Inmobiliaria Futuro</div>
                  </div>
                </div>
              </div>
            </div>
            
            <div class="col">
              <div class="testimonial">
                <div class="testimonial__content">
                  "La integración de Maia en nuestra plataforma fue sorprendentemente rápida. En una semana ya estábamos viendo resultados. El soporte del equipo ha sido excepcional, siempre atentos a nuestras necesidades."
                </div>
                <div class="testimonial__author">
                  <img src="@/assets/logomaia.png" alt="Roberto Fuentes" />
                  <div>
                    <div class="testimonial__author-name">Roberto Fuentes</div>
                    <div class="testimonial__author-title">CEO, Propiedades Élite</div>
                  </div>
                </div>
              </div>
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
                <div class="pricing-price">
                  <span class="pricing-amount">$40</span>
                  <span class="pricing-period">/mes</span>
                </div>
                <ul class="pricing-features">
                  <li>5 propiedades activas</li>
                  <li>Asistente virtual estándar</li>
                  <li>Análisis básico de usuarios</li>
                  <li>Soporte por email</li>
                </ul>
                <button class="btn btn--primary btn--lg">Comenzar</button>
              </div>
            </div>
            
            <div class="col">
              <div class="card pricing-card pricing-card--featured">
                <div class="card__icon">
                  <i class="fas fa-building"></i>
                </div>
                <h3 class="card__title">Profesional</h3>
                <div class="pricing-price">
                  <span class="pricing-amount">$120</span>
                  <span class="pricing-period">/mes</span>
                </div>
                <ul class="pricing-features">
                  <li>20 propiedades activas</li>
                  <li>Asistente virtual personalizado</li>
                  <li>Análisis avanzado de usuarios</li>
                  <li>Integración con CRM</li>
                  <li>Soporte prioritario</li>
                </ul>
                <button class="btn btn--gradient btn--lg">Comenzar</button>
              </div>
            </div>
            
            <div class="col">
              <div class="card pricing-card">
                <div class="card__icon">
                  <i class="fas fa-city"></i>
                </div>
                <h3 class="card__title">Empresarial</h3>
                <div class="pricing-price">
                  <span class="pricing-amount">$200</span>
                  <span class="pricing-period">/mes</span>
                </div>
                <ul class="pricing-features">
                  <li>Propiedades ilimitadas</li>
                  <li>Asistente virtual totalmente personalizado</li>
                  <li>Análisis predictivo</li>
                  <li>Integraciones avanzadas</li>
                  <li>Gestor de cuenta dedicado</li>
                </ul>
                <button class="btn btn--primary btn--lg">Contactar</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <!-- CTA Section -->
    <section class="section section--gradient cta-section">
      <div class="container">
        <div class="cta-content">
          <h2 class="cta-title">¿Listo para revolucionar tu negocio inmobiliario?</h2>
          <p class="cta-text">
            Únete a las inmobiliarias que están marcando la diferencia con Maia.
          </p>
          <button class="btn btn--white btn--lg">Comenzar Ahora</button>
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

// Hero section
.hero {
  padding: $spacing-3xl 0;
  overflow: hidden;
  position: relative;
  
  @media (max-width: $breakpoint-md) {
    padding: $spacing-2xl 0;
  }
  
  .container {
    display: flex;
    align-items: center;
    gap: $spacing-3xl;
    
    @media (max-width: $breakpoint-lg) {
      flex-direction: column;
      gap: $spacing-2xl;
    }
  }
  
  &__content {
    flex: 1;
    max-width: 600px;
    
    @media (max-width: $breakpoint-lg) {
      text-align: center;
      max-width: 100%;
    }
  }
  
  &__title {
    font-size: 3.5rem;
    margin-bottom: $spacing-lg;
    line-height: 1.2;
    
    @media (max-width: $breakpoint-md) {
      font-size: 2.5rem;
    }
    
    .highlight {
      background: $primary-gradient;
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      position: relative;
      display: inline-block;
      
      &::after {
        content: '';
        position: absolute;
        bottom: 5px;
        left: 0;
        width: 100%;
        height: 8px;
        background: rgba($primary, 0.1);
        z-index: -1;
        border-radius: $border-radius-pill;
      }
    }
  }
  
  &__subtitle {
    font-size: 1.25rem;
    margin-bottom: $spacing-xl;
    color: rgba($dark, 0.7);
    line-height: 1.6;
  }
  
  &__actions {
    margin-bottom: $spacing-xl;
    display: flex;
    gap: $spacing-md;
    
    @media (max-width: $breakpoint-md) {
      flex-direction: column;
      align-items: center;
    }
  }
  
  &__image {
    flex: 1;
    text-align: center;
    
    img {
      max-width: 200px;
      border-radius: $border-radius-lg;
      box-shadow: 0 20px 40px rgba(0, 0, 0, 0.08);
    }
  }
  
  &__stats {
    display: flex;
    gap: $spacing-xl;
    margin-top: $spacing-2xl;
    
    @media (max-width: $breakpoint-md) {
      justify-content: center;
      flex-wrap: wrap;
      gap: $spacing-lg;
    }
  }
}

// Stats
.stat {
  display: flex;
  flex-direction: column;
  
  &__number {
    font-size: 2.5rem;
    font-weight: 700;
    color: $primary;
    line-height: 1;
  }
  
  &__label {
    font-size: 1rem;
    color: rgba($dark, 0.7);
    margin-top: 5px;
  }
}

// Features
.features {
  display: flex;
  flex-direction: column;
  gap: $spacing-2xl;
}

// Testimonials
.testimonials {
  .row {
    gap: $spacing-xl;
    
    @media (max-width: $breakpoint-md) {
      gap: $spacing-lg;
    }
  }
}

// Pricing cards
.pricing {
  .row {
    gap: $spacing-lg;
    
    @media (max-width: $breakpoint-lg) {
      gap: $spacing-xl;
    }
  }
}

.pricing-card {
  text-align: center;
  padding: $spacing-xl;
  height: auto;
  
  &--featured {
    transform: translateY(-20px);
    box-shadow: 0 15px 40px rgba(0, 0, 0, 0.1);
    border: 1px solid rgba($primary, 0.1);
    position: relative;
    
    &::before {
      content: 'Más popular';
      position: absolute;
      top: -12px;
      left: 50%;
      transform: translateX(-50%);
      background: $primary-gradient;
      color: white;
      padding: 5px 15px;
      border-radius: 30px;
      font-size: 0.8rem;
      font-weight: 600;
    }
    
    @media (max-width: $breakpoint-lg) {
      transform: none;
    }
  }
  
  .card__icon {
    margin: 0 auto $spacing-md;
  }
  
  .card__title {
    margin-bottom: $spacing-sm;
  }
}

.pricing-price {
  margin-bottom: $spacing-lg;
  
  .pricing-amount {
    font-size: 3rem;
    font-weight: 700;
    color: $primary;
  }
  
  .pricing-period {
    font-size: 1.1rem;
    color: rgba($dark, 0.6);
  }
}

.pricing-features {
  list-style: none;
  padding: 0;
  margin: 0 0 $spacing-xl;
  
  li {
    padding: $spacing-xs 0;
    color: rgba($dark, 0.7);
    
    &::before {
      content: '✓';
      color: $primary;
      margin-right: 8px;
      font-weight: bold;
    }
  }
}

// CTA Section
.cta-section {
  text-align: center;
  padding: $spacing-3xl 0;
  
  .cta-content {
    max-width: 700px;
    margin: 0 auto;
  }
  
  .cta-title {
    font-size: 2.5rem;
    color: white;
    margin-bottom: $spacing-md;
    
    @media (max-width: $breakpoint-md) {
      font-size: 2rem;
    }
  }
  
  .cta-text {
    font-size: 1.2rem;
    color: rgba(255, 255, 255, 0.9);
    margin-bottom: $spacing-xl;
  }
}
</style> 