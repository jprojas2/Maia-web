<template>
  <div class="home">
    <!-- Hero Section -->
    <section class="section hero">
      <div class="container">
        <div class="hero__content">
          <h1 class="hero__title animate-fade-in">
            La vendedora virtual que <span class="highlight">revoluciona</span> la venta inmobiliaria
          </h1>
          <p class="hero__subtitle animate-slide-in-up">
            Maia transforma tus recorridos virtuales en experiencias de venta guiadas por inteligencia artificial, 
            analizando el comportamiento de tus clientes para destacar lo que realmente les importa.
          </p>
          <div class="hero__actions animate-slide-in-up">
            <a href="#demo" class="btn btn--primary btn--lg">Comenzar Demo</a>
            <a href="#pricing" class="btn btn--white btn--lg">Ver Planes</a>
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
        
        <div class="hero__demo animate-slide-in-right">
          <div class="demo-frame">
            <iframe 
              src="https://maiavr.s3.sa-east-1.amazonaws.com/demo.html" 
              frameborder="0" 
              allowfullscreen 
              allow="xr-spatial-tracking"
              class="demo-iframe">
            </iframe>
            <div class="demo-overlay">
              <div class="overlay-content">
                <h3>Recorrido Virtual con Maia</h3>
                <p>Tu vendedora virtual trabajando por ti 24/7</p>
                <a href="#demo" class="btn btn--gradient">Ver demo completa</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <!-- Features Section -->
    <section class="section section--light">
      <div class="container">
        <div class="section__header">
          <h2 class="section__title">¿Por qué elegir Maia?</h2>
          <p class="section__subtitle">
            Nuestra vendedora virtual inteligente potencia tus ventas inmobiliarias con tecnología de vanguardia
          </p>
        </div>
        
        <div class="features">
          <div class="feature-highlight">
            <div class="feature-highlight__image">
              <img src="https://images.unsplash.com/photo-1573164713988-8665fc963095?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=80" alt="Automatización Inteligente" />
            </div>
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
            <div class="feature-highlight__image">
              <img src="https://images.unsplash.com/photo-1506784983877-45594efa4cbe?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=80" alt="Datos y Análisis Avanzados" />
            </div>
          </div>
          
          <div class="feature-highlight">
            <div class="feature-highlight__image">
              <img src="https://images.unsplash.com/photo-1563986768609-322da13575f3?ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=80" alt="Integración Sin Esfuerzo" />
            </div>
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
    
    <!-- Demo Section -->
    <section class="section" id="demo">
      <div class="container">
        <div class="section__header">
          <h2 class="section__title">Demo Interactiva</h2>
          <p class="section__subtitle">
            Experimenta el poder de Maia en acción con nuestro recorrido virtual guiado
          </p>
        </div>
        
        <div class="demo-container">
          <div class="demo-frame full-demo">
            <iframe 
              src="https://maiavr.s3.sa-east-1.amazonaws.com/demo.html" 
              frameborder="0" 
              allowfullscreen 
              allow="xr-spatial-tracking"
              class="demo-iframe">
            </iframe>
          </div>
          
          <div class="demo-features">
            <div class="feature">
              <i class="fas fa-vr-cardboard"></i>
              <h4>Recorrido Inmersivo</h4>
              <p>Explora cada rincón de la propiedad con una experiencia 3D de alta calidad.</p>
            </div>
            
            <div class="feature">
              <i class="fas fa-robot"></i>
              <h4>Vendedora Virtual</h4>
              <p>Maia responde preguntas y destaca características clave durante el recorrido.</p>
            </div>
            
            <div class="feature">
              <i class="fas fa-chart-line"></i>
              <h4>Análisis de Interés</h4>
              <p>Capturamos datos sobre las áreas que más interesan a los potenciales compradores.</p>
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
                  "Desde que implementamos Maia, nuestras conversiones han aumentado un 65%. Los clientes valoran la experiencia personalizada y nuestros agentes pueden enfocarse en los aspectos más importantes de cada propiedad."
                </div>
                <div class="testimonial__author">
                  <img src="https://randomuser.me/api/portraits/women/65.jpg" alt="Carolina Méndez" />
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
                  <img src="https://randomuser.me/api/portraits/men/32.jpg" alt="Roberto Fuentes" />
                  <div>
                    <div class="testimonial__author-name">Roberto Fuentes</div>
                    <div class="testimonial__author-title">CEO, Propiedades Élite</div>
                  </div>
                </div>
              </div>
            </div>
            
            <div class="col">
              <div class="testimonial">
                <div class="testimonial__content">
                  "Maia ha transformado por completo nuestra estrategia digital. Los recorridos virtuales ahora generan leads cualificados y nuestros clientes destacan la facilidad de uso y la información relevante que reciben."
                </div>
                <div class="testimonial__author">
                  <img src="https://randomuser.me/api/portraits/women/45.jpg" alt="Valeria Torres" />
                  <div>
                    <div class="testimonial__author-name">Valeria Torres</div>
                    <div class="testimonial__author-title">Marketing Director, Grupo Habitat</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <!-- Team Section -->
    <section class="section">
      <div class="container">
        <div class="section__header">
          <h2 class="section__title">Nuestro Equipo</h2>
          <p class="section__subtitle">
            Conoce a los fundadores detrás de Maia
          </p>
        </div>
        
        <div class="team">
          <div class="team-member">
            <div class="team-member__image">
              <img src="https://images.unsplash.com/photo-1560250097-0b93528c311a?ixlib=rb-1.2.1&auto=format&fit=crop&w=300&q=80" alt="Manuel Fernández" />
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
              <img src="https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-1.2.1&auto=format&fit=crop&w=300&q=80" alt="Juan Pablo Rojas" />
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
                  <li>Vendedora virtual estándar</li>
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
                  <li>Vendedora virtual personalizada</li>
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
                  <li>Vendedora virtual totalmente personalizada</li>
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
  background-color: $light-blue-bg;
  position: relative;
  
  .container {
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: $spacing-xl;
    
    @media (max-width: $breakpoint-lg) {
      flex-direction: column;
      gap: $spacing-2xl;
    }
  }
}

.hero__content {
  flex: 1;
  max-width: 600px;
  
  @media (max-width: $breakpoint-lg) {
    max-width: 100%;
    text-align: center;
    margin-bottom: $spacing-lg;
  }
}

.hero__title {
  font-size: 3rem;
  font-weight: $font-weight-bold;
  line-height: 1.2;
  margin-bottom: $spacing-md;
  color: $dark;
  
  @media (max-width: $breakpoint-lg) {
    font-size: 2.5rem;
  }
  
  .highlight {
    color: $primary;
    position: relative;
    z-index: 1;
    
    &::after {
      content: '';
      position: absolute;
      bottom: 5px;
      left: -5px;
      right: -5px;
      height: 10px;
      background-color: rgba($primary, 0.1);
      z-index: -1;
      border-radius: $border-radius;
    }
  }
}

.hero__subtitle {
  font-size: 1.2rem;
  line-height: 1.6;
  margin-bottom: $spacing-lg;
  color: $gray-700;
  
  @media (max-width: $breakpoint-md) {
    font-size: 1.1rem;
  }
}

.hero__actions {
  display: flex;
  gap: $spacing-md;
  margin-bottom: $spacing-xl;
  
  @media (max-width: $breakpoint-lg) {
    justify-content: center;
  }
  
  @media (max-width: $breakpoint-sm) {
    flex-direction: column;
    gap: $spacing-sm;
  }
}

.hero__stats {
  display: flex;
  gap: $spacing-lg;
  
  @media (max-width: $breakpoint-lg) {
    justify-content: center;
  }
  
  @media (max-width: $breakpoint-sm) {
    flex-wrap: wrap;
    justify-content: space-around;
  }
}

.stat {
  display: flex;
  flex-direction: column;
  align-items: center;
}

.stat__number {
  font-size: 2.5rem;
  font-weight: $font-weight-bold;
  color: $primary;
  line-height: 1;
}

.stat__label {
  font-size: 0.9rem;
  color: $gray-600;
  margin-top: $spacing-xs;
}

.hero__demo {
  flex: 1;
  max-width: 600px;
  
  @media (max-width: $breakpoint-lg) {
    max-width: 100%;
    width: 100%;
  }
}

// Features section
.features {
  margin-top: $spacing-3xl;
}

.feature-highlight {
  display: flex;
  align-items: center;
  margin-bottom: $spacing-3xl;
  gap: $spacing-2xl;
  
  @media (max-width: $breakpoint-lg) {
    flex-direction: column;
    gap: $spacing-xl;
  }
  
  &:nth-child(even) {
    flex-direction: row-reverse;
    
    @media (max-width: $breakpoint-lg) {
      flex-direction: column;
    }
  }
}

.feature-highlight__image {
  flex: 1;
  border-radius: $border-radius-lg;
  overflow: hidden;
  box-shadow: $shadow-lg;
  height: 400px;
  
  img {
    width: 100%;
    height: 100%;
    object-fit: cover;
  }
  
  @media (max-width: $breakpoint-lg) {
    width: 100%;
    height: 300px;
  }
}

.feature-highlight__content {
  flex: 1;
  
  @media (max-width: $breakpoint-lg) {
    text-align: center;
  }
}

.feature-highlight__title {
  font-size: 2rem;
  font-weight: $font-weight-bold;
  margin-bottom: $spacing-md;
  color: $dark;
}

.feature-highlight__description {
  font-size: 1.1rem;
  line-height: 1.6;
  margin-bottom: $spacing-lg;
  color: $gray-700;
}

// Demo section
.demo-container {
  display: grid;
  grid-template-columns: 1fr;
  gap: $spacing-2xl;
  margin-top: $spacing-2xl;
  
  @media (min-width: $breakpoint-lg) {
    grid-template-columns: 3fr 1fr;
  }
}

.demo-frame {
  position: relative;
  width: 100%;
  height: 0;
  padding-bottom: 56.25%; // 16:9 aspect ratio
  background-color: $gray-800;
  border-radius: $border-radius-lg;
  overflow: hidden;
  box-shadow: $shadow-lg;
  
  &.full-demo {
    padding-bottom: 75%; // 4:3 aspect ratio for full demo
    
    @media (min-width: $breakpoint-lg) {
      padding-bottom: 56.25%; // 16:9 aspect ratio for larger screens
    }
  }
  
  .demo-iframe {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    border: none;
  }
  
  .demo-overlay {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba($dark, 0.5);
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    transition: $transition-base;
    
    &:hover {
      background-color: rgba($dark, 0.6);
    }
    
    .overlay-content {
      text-align: center;
      color: white;
      padding: $spacing-lg;
      
      h3 {
        font-size: 1.8rem;
        margin-bottom: $spacing-sm;
      }
      
      p {
        margin-bottom: $spacing-lg;
        font-size: 1.1rem;
      }
    }
  }
}

.demo-features {
  display: grid;
  grid-template-columns: 1fr;
  gap: $spacing-lg;
  
  @media (min-width: $breakpoint-md) and (max-width: $breakpoint-lg) {
    grid-template-columns: repeat(3, 1fr);
  }
}

.feature {
  background-color: white;
  padding: $spacing-lg;
  border-radius: $border-radius;
  box-shadow: $shadow-sm;
  transition: $transition-base;
  
  &:hover {
    transform: translateY(-5px);
    box-shadow: $shadow;
  }
  
  i {
    font-size: 2rem;
    color: $primary;
    margin-bottom: $spacing-sm;
  }
  
  h4 {
    font-size: 1.2rem;
    margin-bottom: $spacing-sm;
    color: $dark;
  }
  
  p {
    color: $gray-600;
    font-size: 0.95rem;
    margin: 0;
  }
}

// Testimonials section
.testimonials {
  margin-top: $spacing-2xl;
}

.row {
  display: flex;
  flex-wrap: wrap;
  margin: -$spacing-md;
  
  @media (max-width: $breakpoint-md) {
    margin: -$spacing-sm;
  }
}

.col {
  flex: 1;
  padding: $spacing-md;
  min-width: 300px;
  
  @media (max-width: $breakpoint-md) {
    padding: $spacing-sm;
  }
}

.testimonial {
  background-color: white;
  border-radius: $border-radius-lg;
  padding: $spacing-xl;
  box-shadow: $shadow;
  height: 100%;
  transition: $transition-base;
  
  &:hover {
    transform: translateY(-5px);
    box-shadow: $shadow-lg;
  }
}

.testimonial__content {
  font-size: 1.1rem;
  line-height: 1.6;
  color: $gray-700;
  margin-bottom: $spacing-lg;
  font-style: italic;
  position: relative;
  
  &::before {
    content: '"';
    font-size: 4rem;
    position: absolute;
    top: -20px;
    left: -15px;
    color: rgba($primary, 0.1);
    font-family: serif;
  }
}

.testimonial__author {
  display: flex;
  align-items: center;
  
  img {
    width: 60px;
    height: 60px;
    border-radius: 50%;
    object-fit: cover;
    margin-right: $spacing-md;
    border: 3px solid rgba($primary, 0.1);
  }
}

.testimonial__author-name {
  font-weight: $font-weight-semibold;
  font-size: 1.1rem;
  color: $dark;
}

.testimonial__author-title {
  font-size: 0.9rem;
  color: $gray-600;
}

// Team section
.team {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
  gap: $spacing-2xl;
  margin-top: $spacing-2xl;
}

.team-member {
  background-color: white;
  border-radius: $border-radius-lg;
  padding: $spacing-xl;
  box-shadow: $shadow;
  text-align: center;
  transition: $transition-base;
  
  &:hover {
    transform: translateY(-5px);
    box-shadow: $shadow-lg;
  }
}

.team-member__image {
  width: 150px;
  height: 150px;
  border-radius: 50%;
  overflow: hidden;
  margin: 0 auto $spacing-lg;
  border: 4px solid rgba($primary, 0.1);
  
  img {
    width: 100%;
    height: 100%;
    object-fit: cover;
  }
}

.team-member__name {
  font-size: 1.5rem;
  font-weight: $font-weight-semibold;
  margin-bottom: $spacing-xs;
  color: $dark;
}

.team-member__title {
  font-size: 1rem;
  color: $primary;
  margin-bottom: $spacing-md;
  font-weight: $font-weight-medium;
}

.team-member__bio {
  font-size: 0.95rem;
  line-height: 1.6;
  color: $gray-600;
  margin-bottom: $spacing-lg;
}

.team-member__social {
  display: flex;
  justify-content: center;
  gap: $spacing-sm;
  
  a {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 40px;
    height: 40px;
    border-radius: 50%;
    background-color: rgba($primary, 0.1);
    color: $primary;
    transition: $transition-base;
    font-size: 1rem;
    
    &:hover {
      background-color: $primary;
      color: white;
    }
  }
}

// Pricing section
.pricing {
  margin-top: $spacing-2xl;
}

.pricing-card {
  height: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  transition: $transition-base;
  
  &:hover {
    transform: translateY(-5px);
  }
  
  &--featured {
    background: $primary-gradient;
    color: white;
    transform: scale(1.05);
    
    @media (max-width: $breakpoint-md) {
      transform: none;
    }
    
    .card__title, .pricing-amount, .pricing-period {
      color: white;
    }
    
    .pricing-features li {
      color: rgba(255, 255, 255, 0.9);
      
      &::before {
        color: white;
      }
    }
    
    &:hover {
      transform: scale(1.05) translateY(-5px);
      
      @media (max-width: $breakpoint-md) {
        transform: translateY(-5px);
      }
    }
  }
}

.card {
  background-color: white;
  border-radius: $border-radius-lg;
  padding: $spacing-xl;
  box-shadow: $shadow;
  text-align: center;
}

.card__icon {
  font-size: 2.5rem;
  color: $primary;
  margin-bottom: $spacing-md;
  
  .pricing-card--featured & {
    color: white;
  }
}

.card__title {
  font-size: 1.5rem;
  font-weight: $font-weight-bold;
  margin-bottom: $spacing-lg;
  color: $dark;
}

.pricing-price {
  margin-bottom: $spacing-lg;
}

.pricing-amount {
  font-size: 2.5rem;
  font-weight: $font-weight-bold;
  color: $dark;
}

.pricing-period {
  font-size: 1rem;
  color: $gray-500;
}

.pricing-features {
  list-style: none;
  padding: 0;
  margin: 0 0 $spacing-xl;
  text-align: left;
  width: 100%;
  
  li {
    margin-bottom: $spacing-sm;
    padding-left: 1.5rem;
    position: relative;
    color: $gray-700;
    
    &::before {
      content: '✓';
      position: absolute;
      left: 0;
      color: $primary;
      font-weight: $font-weight-bold;
    }
  }
}

// CTA section
.cta-section {
  color: white;
  text-align: center;
}

.cta-content {
  max-width: 700px;
  margin: 0 auto;
}

.cta-title {
  font-size: 2.5rem;
  font-weight: $font-weight-bold;
  margin-bottom: $spacing-md;
  
  @media (max-width: $breakpoint-md) {
    font-size: 2rem;
  }
}

.cta-text {
  font-size: 1.2rem;
  margin-bottom: $spacing-xl;
  
  @media (max-width: $breakpoint-md) {
    font-size: 1.1rem;
  }
}

// Animations
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

@keyframes slideInRight {
  from {
    opacity: 0;
    transform: translateX(50px);
  }
  to {
    opacity: 1;
    transform: translateX(0);
  }
}

.animate-fade-in {
  animation: fadeIn 0.8s ease forwards;
}

.animate-slide-in-up {
  animation: slideInUp 0.8s ease forwards;
}

.animate-slide-in-right {
  animation: slideInRight 0.8s ease forwards;
}
</style> 