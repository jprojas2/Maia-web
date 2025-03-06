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
            <a href="#contact" class="btn btn--primary btn--lg">Suscribirse</a>
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
            Elige el plan perfecto para tu negocio, desde pequeñas inmobiliarias hasta grandes corporaciones. <strong>Todos incluyen una prueba gratuita de 7 días.</strong>
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
                <div class="feature-item">
                  <span class="feature-check"><i class="fas fa-check"></i></span>
                  <span class="feature-text">Prueba gratuita de 7 días</span>
                </div>
              </div>
              
              <div class="pricing-card__action">
                <button class="btn btn--primary">Suscribirse</button>
              </div>
            </div>
            
            <div class="pricing-card pricing-card--featured" style="background: linear-gradient(135deg, #5E60CE, #8492ff); color: white; transform: scale(1.05); box-shadow: 0 15px 30px rgba(0,0,0,0.2); border: none; z-index: 2;">
              <div class="pricing-card__header">
                <div class="card__icon" style="color: white;">
                  <i class="fas fa-building"></i>
                </div>
                <h3 class="card__title" style="color: white;">Profesional</h3>
                <div class="pricing-card__price">
                  <span class="price-value" style="color: white;">$120</span>
                  <span class="price-period" style="color: white;">/mes</span>
                </div>
              </div>
              
              <div class="pricing-card__features">
                <div class="feature-item" style="border-bottom: 1px solid rgba(255, 255, 255, 0.2);">
                  <span class="feature-check" style="color: white;"><i class="fas fa-check"></i></span>
                  <span class="feature-text" style="color: white;">20 propiedades activas</span>
                </div>
                <div class="feature-item" style="border-bottom: 1px solid rgba(255, 255, 255, 0.2);">
                  <span class="feature-check" style="color: white;"><i class="fas fa-check"></i></span>
                  <span class="feature-text" style="color: white;">Chat con IA avanzado con aprendizaje</span>
                </div>
                <div class="feature-item" style="border-bottom: 1px solid rgba(255, 255, 255, 0.2);">
                  <span class="feature-check" style="color: white;"><i class="fas fa-check"></i></span>
                  <span class="feature-text" style="color: white;">Tours virtuales personalizados</span>
                </div>
                <div class="feature-item" style="border-bottom: 1px solid rgba(255, 255, 255, 0.2);">
                  <span class="feature-check" style="color: white;"><i class="fas fa-check"></i></span>
                  <span class="feature-text" style="color: white;">Calificación de leads</span>
                </div>
                <div class="feature-item" style="border-bottom: 1px solid rgba(255, 255, 255, 0.2);">
                  <span class="feature-check" style="color: white;"><i class="fas fa-check"></i></span>
                  <span class="feature-text" style="color: white;">Soporte prioritario</span>
                </div>
                <div class="feature-item" style="border-bottom: 1px solid rgba(255, 255, 255, 0.2);">
                  <span class="feature-check" style="color: white;"><i class="fas fa-check"></i></span>
                  <span class="feature-text" style="color: white;">Prueba gratuita de 7 días</span>
                </div>
              </div>
              
              <div class="pricing-card__action">
                <button class="btn" style="background-color: white; color: #5E60CE; border: none;">Suscribirse</button>
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
                <div class="feature-item">
                  <span class="feature-check"><i class="fas fa-check"></i></span>
                  <span class="feature-text">Prueba gratuita de 7 días</span>
                </div>
              </div>
              
              <div class="pricing-card__action">
                <button class="btn btn--primary">Suscribirse</button>
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
          <div class="testimonials-carousel">
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
            
            <div class="testimonial-card">
              <div class="testimonial__content">
                <i class="fas fa-quote-left quote-icon"></i>
                <p>"La calidad de los leads ha mejorado drásticamente. Ahora cuando un cliente nos contacta, ya conoce la propiedad y está mucho más cerca de tomar una decisión de compra."</p>
              </div>
              <div class="testimonial__author">
                <img src="https://images.unsplash.com/photo-1560250097-0b93528c311a?ixlib=rb-1.2.1&auto=format&fit=crop&w=100&q=80" alt="Fernando Sánchez" />
                <div>
                  <h4>Fernando Sánchez</h4>
                  <p>Gerente de Ventas, Grupo Inmobiliario Santiago</p>
                </div>
              </div>
            </div>
          </div>
          
          <div class="carousel-arrows">
            <div class="arrow arrow-left">
              <i class="fas fa-chevron-left"></i>
            </div>
            <div class="arrow arrow-right">
              <i class="fas fa-chevron-right"></i>
            </div>
          </div>
          
          <div class="carousel-controls">
            <div class="control-dot active"></div>
            <div class="control-dot"></div>
            <div class="control-dot"></div>
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
              <img src="https://media.licdn.com/dms/image/v2/D4E03AQH9ThPQ5nKv-g/profile-displayphoto-shrink_800_800/B4EZVdl9b8HcAg-/0/1741031987437?e=1746662400&v=beta&t=_Qm55T90N-534-U-n_XnYRXmcbxTOnJRw62wXt6PxBo" alt="Juan Pablo Rojas" />
            </div>
            <div class="team-content">
              <h3>Juan Pablo Rojas</h3>
              <h4>CTO & Co-Fundador</h4>
              <p>
                10+ años en desarrollo de software, diseñó sistemas escalables para startups. Responsable de la arquitectura técnica y desarrollo de IA.
              </p>
              <div class="team-social">
                <a href="https://www.linkedin.com/in/jprojasc/" target="_blank" class="social-link" aria-label="LinkedIn">
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
    <section class="section section--cta">
      <div class="container">
        <div class="cta">
          <h2 class="cta__title">¿Listo para transformar tu negocio inmobiliario?</h2>
          <p class="cta__subtitle">
            Únete a cientos de inmobiliarias que están aumentando sus ventas con Maia
          </p>
          <div class="cta__actions">
            <a href="#pricing" class="btn btn--white btn--lg">Ver Planes</a>
            <a href="#contact" class="btn btn--white btn--lg">Suscribirse</a>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script>
export default {
  name: 'HomeView',
  data() {
    const isMobile = window.innerWidth < 768;
    console.log(isMobile);
    return {
      currentSlide: 0,
      totalSlides: isMobile ? 3 : 1
    };
  },
  mounted() {
    // Initialize testimonials carousel
    this.initCarousel();
  },
  methods: {
    initCarousel() {
      // Get DOM elements
      const dots = document.querySelectorAll('.control-dot');
      const leftArrow = document.querySelector('.arrow-left');
      const rightArrow = document.querySelector('.arrow-right');
      
      // Add click events to dots
      dots.forEach((dot, index) => {
        dot.addEventListener('click', () => {
          this.goToSlide(index);
        });
      });
      
      // Add click events to arrows
      if (leftArrow && rightArrow) {
        leftArrow.addEventListener('click', () => {
          this.prevSlide();
        });
        
        rightArrow.addEventListener('click', () => {
          this.nextSlide();
        });
      }
      
      // Auto rotation
      setInterval(() => {
        this.nextSlide();
      }, 5000);
    },
    
    goToSlide(index) {
      this.currentSlide = index;
      this.updateCarousel();
    },
    
    nextSlide() {
      this.currentSlide = (this.currentSlide + 1) % this.totalSlides;
      this.updateCarousel();
    },
    
    prevSlide() {
      this.currentSlide = (this.currentSlide - 1 + this.totalSlides) % this.totalSlides;
      this.updateCarousel();
    },
    
    updateCarousel() {
      // Update carousel position
      const carousel = document.querySelector('.testimonials-carousel');
      if (carousel) {
        carousel.style.transform = `translateX(-${this.currentSlide * 100}%)`;
      }
      
      // Update active dot
      const dots = document.querySelectorAll('.control-dot');
      dots.forEach((dot, index) => {
        if (index === this.currentSlide) {
          dot.classList.add('active');
        } else {
          dot.classList.remove('active');
        }
      });
    }
  }
}
</script>

<style lang="scss" scoped>
@import "@/styles/variables.scss";

// Variables for the page
$primary-gradient: linear-gradient(135deg, $primary 0%, lighten($primary, 15%) 100%);
$section-spacing: $spacing-4xl;
$border-radius-enhanced: 30px; // Aumentado para esquinas más redondeadas
$button-radius: 20px; // Redondeo específico para botones
$purple-overlay: rgba($primary, 0.08); // Slightly stronger purple background

// General section styling
.section {
  padding: $section-spacing 0;
  position: relative;
  overflow: hidden;
  z-index: 1; // Ensure section content is above the background

  &--light {
    background-color: rgba(white, 0.85); // Semi-transparent white
    position: relative;
    
    &::before {
      content: '';
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      background-image: radial-gradient($purple-overlay 1px, transparent 1px);
      background-size: 20px 20px;
      z-index: -1;
    }
  }
  
  &--gradient {
    background: $primary-gradient;
    color: white;
    border-radius: $border-radius-enhanced;
    margin: 0 $spacing-xl;
    box-shadow: $shadow-lg;
  }
}

// Container with enhanced borders
.container {
  max-width: $container-max-width;
  margin: 0 auto;
  padding: 0 $spacing-lg;
  width: 100%;
  position: relative;
  z-index: 2;
}

// Hero Section
.hero-section {
  padding-top: 120px; // Ajustado para el nuevo tamaño de header
  padding-bottom: $spacing-4xl;
  position: relative;
  text-align: center;
  
  &::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-image: 
      linear-gradient(to bottom, rgba($dark, 0.02), rgba($primary, 0.03)),
      radial-gradient(rgba($dark, 0.03) 1px, transparent 1px);
    background-size: 100% 100%, 20px 20px;
    z-index: -1;
  }
  
  .hero__content {
    max-width: 1200px; // Ancho ampliado
    margin: 0 auto;
    display: flex;
    flex-direction: column;
    align-items: center;
  }
  
  .hero__title {
    font-size: 2.5rem; // Tamaño reducido
    font-weight: $font-weight-bold;
    color: $dark;
    margin-bottom: $spacing-xl;
    line-height: 1.2;
    text-shadow: 0 2px 4px rgba(0, 0, 0, 0.2); // Sombra de texto más pronunciada
    background-color: rgba(255, 255, 255, 0.7); // Fondo semi-transparente
    padding: $spacing-md;
    border-radius: $border-radius-enhanced;
    display: inline-block;
    
    @media (max-width: $breakpoint-md) {
      font-size: 2rem;
    }
  }
  
  .hero__demo {
    width: 80%; // Demo más grande
    margin: 0 auto $spacing-2xl;
    
    .demo-frame {
      position: relative;
      width: 100%;
      padding-bottom: 56.25%; // 16:9 aspect ratio
      height: 0;
      overflow: hidden;
      border-radius: $border-radius-enhanced;
      box-shadow: $shadow-lg;
      border: 3px solid rgba($primary, 0.1);
      
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
    font-size: 1.4rem; // Tamaño reducido
    font-weight: $font-weight-normal;
    color: $gray-700;
    margin-bottom: $spacing-xl;
    max-width: 900px; // Ancho ampliado
    line-height: 1.5;
    background-color: rgba(255, 255, 255, 0.7); // Fondo semi-transparente
    padding: $spacing-md;
    border-radius: $border-radius-enhanced;
    text-shadow: 0 1px 2px rgba(255, 255, 255, 0.5); // Sutil sombra de texto
    
    @media (max-width: $breakpoint-md) {
      font-size: 1.2rem;
    }
  }
  
  .hero__actions {
    display: flex;
    gap: $spacing-xl; // Más espacio entre botones
    margin-top: $spacing-lg;
    
    a {
      font-size: 1rem; // Botones más pequeños
      padding: $spacing-sm $spacing-xl;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); // Sombra más pronunciada
      font-weight: 700; // Texto más grueso
      text-shadow: 0 1px 2px rgba(0, 0, 0, 0.3); // Sombra para el texto
    }
    
    @media (max-width: $breakpoint-sm) {
      flex-direction: column;
      width: 100%;
      max-width: 300px;
      gap: $spacing-sm;
    }
  }
}

// Pricing section
.pricing {
  margin-top: $spacing-xl;
}

.pricing-cards {
  display: grid;
  grid-template-columns: repeat(3, 1fr); // Three cards side by side
  gap: $spacing-lg;
  margin: 0 auto;
  max-width: 1200px;
  
  @media (max-width: $breakpoint-lg) {
    grid-template-columns: repeat(2, 1fr);
  }
  
  @media (max-width: $breakpoint-sm) {
    grid-template-columns: 1fr;
  }
}

.pricing-card {
  position: relative;
  display: flex;
  flex-direction: column;
  padding: $spacing-xl;
  background-color: rgba(255, 255, 255, 0.7);
  border-radius: $border-radius-xl; // Increased from border-radius-lg
  border: 1px solid rgba(0, 0, 0, 0.04);
  height: 100%;
  box-shadow: 0 8px 30px rgba(0, 0, 0, 0.05);
  transition: $transition-base;
  overflow: hidden;
  
  &--featured {
    border-color: $primary;
    box-shadow: $shadow;
    background-color: rgba(white, 0.95);
    
    .card__badge {
      position: absolute;
      top: -12px;
      right: $spacing-lg;
      background: $primary-gradient;
      color: white;
      font-size: 0.85rem;
      font-weight: $font-weight-semibold;
      padding: $spacing-xs $spacing-sm;
      border-radius: $border-radius-pill;
      box-shadow: $shadow-sm;
    }
  }
  
  &__header {
    text-align: center;
    margin-bottom: $spacing-lg;
    
    .card__icon {
      font-size: 2.5rem;
      color: $primary;
      margin-bottom: $spacing-sm;
    }
    
    .card__title {
      font-size: 1.5rem;
      font-weight: $font-weight-semibold;
      color: $dark;
      margin-bottom: $spacing-sm;
    }
  }
  
  &__price {
    display: flex;
    justify-content: center;
    align-items: baseline;
    margin-bottom: $spacing-lg;
    
    .price-value {
      font-size: 2.5rem;
      font-weight: $font-weight-bold;
      color: $primary;
    }
    
    .price-period {
      font-size: 1rem;
      color: $gray-600;
      margin-left: $spacing-xs;
    }
  }
  
  &__features {
    flex: 1;
    margin-bottom: $spacing-lg;
    
    .feature-item {
      display: flex;
      align-items: center;
      margin-bottom: $spacing-sm;
      
      .feature-check {
        color: $primary;
        margin-right: $spacing-sm;
      }
      
      .feature-text {
        color: $gray-700;
      }
    }
  }
  
  &__action {
    margin-top: auto;
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
    background-color: rgba(white, 0.9);
    border-radius: $border-radius-enhanced;
    padding: $spacing-lg;
    text-align: center;
    box-shadow: $shadow-sm;
    transition: $transition-base;
    border: 1px solid rgba($primary, 0.2); // More visible border
    backdrop-filter: blur(5px);
    
    &:hover {
      transform: translateY(-5px);
      box-shadow: $shadow;
      border-color: $primary;
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

// Features grid with enhanced colors
.features-grid {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: $spacing-xl;
  margin-top: $spacing-2xl;
  
  @media (max-width: $breakpoint-md) {
    grid-template-columns: 1fr;
  }
  
  .feature-card {
    padding: $spacing-xl;
    background-color: rgba(255, 255, 255, 0.7);
    border-radius: $border-radius-xl; // Increased from border-radius-lg
    border: 1px solid rgba(0, 0, 0, 0.03);
    height: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
    text-align: center;
    transition: $transition-base;
    position: relative;
    overflow: hidden;
    
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

// Testimonials Carousel
.testimonials-wrapper {
  position: relative;
  max-width: 1000px;
  margin: 0 auto;
  overflow: hidden;
}

.testimonials-carousel {
  display: flex;
  transition: transform 0.5s ease;
  padding: $spacing-md 0;
}

@media (max-width: $breakpoint-md) {
  .testimonials-carousel {
    flex-wrap: nowrap;
  }
  .testimonial-card {
    flex: 0 0 100%;
  }
}

.testimonial-card {
  padding: $spacing-xl;
  background-color: rgba(255, 255, 255, 0.6);
  border-radius: $border-radius-xl; // Increased from border-radius-lg
  border: 1px solid rgba(0, 0, 0, 0.03);
  position: relative;
  overflow: hidden;
  margin-top: $spacing-lg;
  height: 100%;
  
  .quote-icon {
    font-size: 2rem;
    color: rgba($primary, 0.2);
    position: absolute;
    top: $spacing-md;
    left: $spacing-md;
  }
  
  .testimonial__content {
    padding-left: $spacing-lg;
    margin-bottom: $spacing-lg;
    
    p {
      font-size: 1.1rem;
      color: $gray-700;
      line-height: 1.6;
      font-style: italic;
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
      border: 3px solid $light;
      box-shadow: 0 0 0 1px rgba($primary, 0.3); // More visible border
    }
    
    div {
      h4 {
        font-size: 1.1rem;
        font-weight: $font-weight-semibold;
        color: $dark;
        margin: 0 0 $spacing-xs;
      }
      
      p {
        color: $gray-600;
        font-size: 0.9rem;
        margin: 0;
      }
    }
  }
}

.carousel-controls {
  display: flex;
  justify-content: center;
  margin-top: $spacing-xl;
  gap: $spacing-md;
  
  .control-dot {
    width: 12px;
    height: 12px;
    border-radius: 50%;
    background-color: rgba($gray-400, 0.5);
    transition: $transition-base;
    cursor: pointer;
    border: 1px solid rgba($primary, 0.2);
    
    &.active {
      background-color: $primary;
      transform: scale(1.2);
      border-color: $primary;
    }
    
    &:hover {
      background-color: rgba($primary, 0.5);
    }
  }
}

.carousel-arrows {
  position: absolute;
  top: 50%;
  left: 0;
  right: 0;
  transform: translateY(-50%);
  display: flex;
  justify-content: space-between;
  padding: 0 $spacing-sm;
  z-index: 1;
  
  .arrow {
    width: 40px;
    height: 40px;
    border-radius: 50%;
    background-color: white;
    display: flex;
    align-items: center;
    justify-content: center;
    color: $primary;
    box-shadow: $shadow-sm;
    cursor: pointer;
    transition: $transition-base;
    border: 1px solid rgba($primary, 0.2);
    
    &:hover {
      background-color: $primary;
      color: white;
      box-shadow: $shadow;
      border-color: $primary;
    }
  }
}

// Team section
.team-section {
  position: relative;
  
  &::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-image: 
      linear-gradient(to bottom, rgba($dark, 0.02), rgba($primary, 0.03)),
      radial-gradient(rgba($dark, 0.03) 1px, transparent 1px);
    background-size: 100% 100%, 20px 20px;
    z-index: -1;
  }
  
  .section__title, .section__subtitle {
    background-color: rgba(255, 255, 255, 0.7);
    padding: $spacing-md;
    border-radius: $border-radius-enhanced;
    display: inline-block;
    text-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    margin-bottom: $spacing-md;
  }
  
  .section__subtitle {
    display: block;
    max-width: 800px;
    margin-left: auto;
    margin-right: auto;
    text-shadow: 0 1px 2px rgba(255, 255, 255, 0.5);
  }
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
  padding: $spacing-xl;
  background: transparent;
  border-radius: $border-radius-xl; // Increased from border-radius-lg
  overflow: hidden;
  text-align: center;
  position: relative;
  
  .team-image {
    width: 200px;
    height: 200px;
    border-radius: 50%;
    overflow: hidden;
    margin: $spacing-lg auto;
    border: 5px solid rgba(white, 0.9);
    box-shadow: 0 0 0 1px rgba($primary, 0.3);
    
    img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: $transition-base;
    }
  }
  
  .team-content {
    padding: $spacing-lg;
    text-align: center;
    
    h3 {
      font-size: 1.3rem;
      font-weight: $font-weight-semibold;
      margin-bottom: $spacing-xs;
      color: $dark;
      background-color: rgba(255, 255, 255, 0.7);
      padding: $spacing-sm;
      border-radius: $button-radius;
      display: inline-block;
      text-shadow: 0 1px 2px rgba(0, 0, 0, 0.1);
    }
    
    h4 {
      font-size: 1rem;
      font-weight: $font-weight-medium;
      color: $primary;
      margin-bottom: $spacing-md;
      background-color: rgba(255, 255, 255, 0.7);
      padding: $spacing-xs $spacing-sm;
      border-radius: $button-radius;
      display: inline-block;
    }
    
    p {
      color: $gray-700;
      font-size: 0.95rem;
      line-height: 1.5;
      margin-bottom: $spacing-md;
      background-color: rgba(255, 255, 255, 0.5);
      padding: $spacing-sm;
      border-radius: $button-radius;
    }
    
    .team-social {
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
        background-color: $gray-200;
        color: $dark;
        transition: $transition-base;
        border: 1px solid rgba($primary, 0.1);
        
        &:hover {
          background-color: $primary;
          color: white;
          border-color: $primary;
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
  box-shadow: $shadow-lg;
  border: 1px solid rgba(white, 0.1);
  
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
    gap: $spacing-xl;
    
    @media (max-width: $breakpoint-sm) {
      flex-direction: column;
      align-items: center;
      gap: $spacing-md;
    }
    
    .btn {
      font-size: 1rem;
      padding: 0.6rem 1.5rem;
    }
  }
}

// Añadir estilos para la clase cta y cta__actions
.cta {
  text-align: center;
  
  &__title {
    color: white;
    font-size: 2.5rem;
    font-weight: $font-weight-bold;
    margin-bottom: $spacing-md;
    
    @media (max-width: $breakpoint-md) {
      font-size: 2rem;
    }
  }
  
  &__subtitle {
    color: rgba(white, 0.9);
    font-size: 1.2rem;
    max-width: 600px;
    margin: 0 auto $spacing-xl;
    line-height: 1.6;
  }
  
  &__actions {
    display: flex;
    justify-content: center;
    gap: $spacing-xl; // Mismo espacio que en hero__actions
    margin: 0 auto;
    
    a {
      font-size: 1rem; // Mismo tamaño que en hero__actions
      padding: $spacing-sm $spacing-xl; // Mismo padding que en hero__actions
    }
    
    @media (max-width: $breakpoint-sm) {
      flex-direction: column;
      width: 100%;
      max-width: 300px;
      margin: 0 auto;
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

@media (max-width: $breakpoint-sm) {
  .d-lg-flex {
    display: flex !important;
  }
}

// Nueva sección de CTA con fondo completo
.section--cta {
  background: $primary-gradient;
  color: white;
  width: 100vw;
  margin-left: calc(-50vw + 50%);
  box-shadow: $shadow-lg;
  position: relative;
  padding: $spacing-3xl 0;
  
  &::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-image: 
      radial-gradient(rgba(white, 0.1) 1px, transparent 1px);
    background-size: 20px 20px;
    z-index: 0;
  }
  
  .container {
    position: relative;
    z-index: 1;
  }
}

// Eliminar el margen lateral de la sección gradient
.section--gradient {
  margin: 0;
  border-radius: 0;
}

// Ajustar los bordes redondeados globalmente
.btn {
  border-radius: $button-radius;
}

// Common styles for all cards - Increased border radius
.card, .feature-card, .pricing-card, .testimonial-card, .team-card, .stats-container .stat-item {
  border-radius: $border-radius-xl; // Increased from border-radius-lg
  overflow: hidden;
  transition: $transition-base;
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
  border: 1px solid rgba(255, 255, 255, 0.5);
  background-image: 
    linear-gradient(to bottom, rgba($dark, 0.02), rgba($primary, 0.03)),
    radial-gradient(rgba($dark, 0.03) 1px, transparent 1px);
  background-size: 100%, 20px 20px;
  
  &:hover {
    transform: translateY(-5px);
    box-shadow: 0 15px 40px rgba(0, 0, 0, 0.1);
  }
}

.demo-frame, .hero__title, .hero__subtitle {
  border-radius: $border-radius-enhanced;
}
</style> 