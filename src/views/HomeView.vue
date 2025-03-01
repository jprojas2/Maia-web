<template>
  <main>
    <!-- Combined Hero and Demo Section -->
    <section class="hero">
      <div class="container">
        <div class="hero__content">
          <h1 class="animate-fade-in">¿Y si tus propiedades se vendieran solas?</h1>
          <p class="animate-fade-in">Maia transforma la forma en que vendes propiedades con recorridos virtuales guiados por IA</p>
          <div class="hero__actions animate-fade-in">
            <a href="#features" class="btn btn--gradient">Ver Características</a>
            <router-link to="/pricing" class="btn btn--secondary">Ver Planes</router-link>
          </div>
        </div>
        
        <div class="hero__demo animate-fade-in">
          <div class="demo__iframe-wrapper">
            <iframe 
              src="https://maiavr.s3.sa-east-1.amazonaws.com/demo.html" 
              class="demo__iframe" 
              allowfullscreen
              ref="demoIframe"
            ></iframe>
            <div 
              class="demo__overlay" 
              v-if="showDemoOverlay"
              @click="startDemo"
            >
              <h3>Show, don't tell</h3>
              <button class="btn btn--gradient">Comenzar Demo</button>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Features Section -->
    <section id="features" class="section features">
      <div class="container">
        <div class="section__title">
          <h2>Características Principales</h2>
          <p>Descubre cómo Maia está revolucionando la venta inmobiliaria digital</p>
        </div>
        
        <div class="features__grid">
          <div class="feature-card">
            <div class="feature-card__icon">
              <i class="fas fa-comments"></i>
            </div>
            <h3>IA Conversacional</h3>
            <p>Nuestra IA interactúa con los clientes en lenguaje natural, entendiendo sus necesidades y guiándolos en todo el proceso de compra.</p>
          </div>
          
          <div class="feature-card">
            <div class="feature-card__icon">
              <i class="fas fa-vr-cardboard"></i>
            </div>
            <h3>Tours Virtuales 3D</h3>
            <p>Recorridos inmersivos guiados por IA que muestran las propiedades en detalle, permitiendo a los clientes explorar cada rincón.</p>
          </div>
          
          <div class="feature-card">
            <div class="feature-card__icon">
              <i class="fas fa-chart-line"></i>
            </div>
            <h3>Calificación de Leads</h3>
            <p>Segmentación automática de clientes, gestión de agendamientos y simulación de financiamiento para optimizar el proceso de venta.</p>
          </div>
        </div>
      </div>
    </section>

    <!-- Testimonials Section -->
    <section id="testimonials" class="section testimonials">
      <div class="container">
        <div class="section__title">
          <h2>Lo que dicen nuestros clientes</h2>
          <p>Inmobiliarias que ya están transformando su forma de vender con Maia</p>
        </div>
        
        <div class="testimonials__slider" ref="testimonialsSlider">
          <div class="testimonial-card" v-for="(testimonial, index) in testimonials" :key="index">
            <div class="testimonial-card__content">
              <p>"{{ testimonial.quote }}"</p>
              <div class="testimonial-card__author">
                <div class="author-avatar">
                  <img :src="testimonial.avatar" :alt="testimonial.name">
                </div>
                <div class="author-info">
                  <h4>{{ testimonial.name }}</h4>
                  <p>{{ testimonial.position }}, {{ testimonial.company }}</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        
        <div class="testimonials__controls">
          <button class="control-btn prev" @click="prevTestimonial" aria-label="Testimonio anterior">
            <i class="fas fa-chevron-left"></i>
          </button>
          <div class="testimonials__dots">
            <button 
              v-for="(_, index) in testimonials" 
              :key="index"
              class="dot-btn"
              :class="{ active: currentTestimonial === index }"
              @click="goToTestimonial(index)"
              :aria-label="`Ir al testimonio ${index + 1}`"
            ></button>
          </div>
          <button class="control-btn next" @click="nextTestimonial" aria-label="Testimonio siguiente">
            <i class="fas fa-chevron-right"></i>
          </button>
        </div>
      </div>
    </section>

    <!-- Team Section -->
    <section id="team" class="section team">
      <div class="container">
        <div class="section__title">
          <h2>Nuestro Equipo</h2>
          <p>Conoce a los fundadores detrás de Maia</p>
        </div>
        
        <div class="team__grid">
          <div class="team-member" v-for="(member, index) in teamMembers" :key="index">
            <div class="team-member__image">
              <img :src="member.photo" :alt="member.name">
            </div>
            <h3>{{ member.name }}</h3>
            <p class="team-member__role">{{ member.role }}</p>
            <p class="team-member__bio">{{ member.bio }}</p>
            <div class="team-member__social">
              <a 
                v-for="(link, i) in member.social" 
                :key="i" 
                :href="link.url" 
                target="_blank" 
                rel="noopener noreferrer"
                :title="link.title"
              >
                <i :class="link.icon"></i>
              </a>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Call to Action Section -->
    <section class="cta">
      <div class="container">
        <div class="cta__content">
          <h2>¿Listo para transformar tu negocio inmobiliario?</h2>
          <p>Únete a las inmobiliarias que ya están aprovechando el poder de la inteligencia artificial para vender más y mejor.</p>
          <a href="#contact" class="btn btn-white">Contáctanos</a>
        </div>
      </div>
    </section>

    <!-- AI Chat Widget -->
    <AiChatWidget />
  </main>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from 'vue';
import AiChatWidget from '@/components/ui/AiChatWidget.vue';

// Demo section
const showDemoOverlay = ref(true);
const demoIframe = ref(null);

const startDemo = () => {
  showDemoOverlay.value = false;
};

// Testimonials section
const testimonials = [
  {
    quote: 'Maia ha revolucionado nuestra forma de vender propiedades. Nuestros clientes adoran la experiencia y hemos aumentado nuestras ventas en un 40% desde que implementamos la plataforma.',
    name: 'Carlos Mendoza',
    position: 'Director Comercial',
    company: 'Inmobiliaria Futuro',
    avatar: 'https://randomuser.me/api/portraits/men/32.jpg'
  },
  {
    quote: 'La integración de IA con tours virtuales es exactamente lo que necesitábamos. Nuestros agentes pueden atender más clientes y el proceso de venta se ha acelerado significativamente.',
    name: 'Ana Martínez',
    position: 'CEO',
    company: 'Propiedades Exclusivas',
    avatar: 'https://randomuser.me/api/portraits/women/44.jpg'
  },
  {
    quote: 'La calidad de los leads ha mejorado drásticamente. Ahora cuando un cliente nos contacta, ya conoce la propiedad y está mucho más cerca de tomar una decisión de compra.',
    name: 'Roberto Sánchez',
    position: 'Gerente de Ventas',
    company: 'Grupo Inmobiliario Santiago',
    avatar: 'https://randomuser.me/api/portraits/men/67.jpg'
  }
];

const currentTestimonial = ref(0);
const testimonialsSlider = ref(null);
let autoplayInterval = null;

const goToTestimonial = (index) => {
  currentTestimonial.value = index;
  updateSliderPosition();
};

const nextTestimonial = () => {
  currentTestimonial.value = (currentTestimonial.value + 1) % testimonials.length;
  updateSliderPosition();
};

const prevTestimonial = () => {
  currentTestimonial.value = (currentTestimonial.value - 1 + testimonials.length) % testimonials.length;
  updateSliderPosition();
};

const updateSliderPosition = () => {
  if (testimonialsSlider.value) {
    testimonialsSlider.value.style.transform = `translateX(-${currentTestimonial.value * 100}%)`;
  }
};

const startAutoplay = () => {
  autoplayInterval = setInterval(() => {
    nextTestimonial();
  }, 5000);
};

// Team section
const teamMembers = [
  {
    name: 'Manuel Fernández',
    role: 'CEO',
    bio: 'Arquitecto, experto en VR y modelado 3D, profesor universitario.',
    photo: 'https://media.licdn.com/dms/image/v2/D4E03AQFi2QfyPeH3sQ/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1700504903894?e=1746057600&v=beta&t=T2CmNrKmIqp0Rn1Vd3TLguv87GMRzwZbgf8iDDiblYw',
    social: [
      { icon: 'fab fa-linkedin', url: 'https://www.linkedin.com/in/manjofer/', title: 'LinkedIn' },
      { icon: 'far fa-envelope', url: 'mailto:manuel@maiavr.cl', title: 'Enviar email' }
    ]
  },
  {
    name: 'Juan Pablo Rojas',
    role: 'CTO',
    bio: '10+ años en software, diseñó sistemas escalables para startups.',
    photo: 'https://media.licdn.com/dms/image/v2/D4E03AQH2qkZrHLTaaA/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1706107499432?e=1746057600&v=beta&t=6TegZvoxBvFsN6uPjrwrqY-Zhb-Ra3mrIby415f14i4',
    social: [
      { icon: 'fab fa-linkedin', url: 'https://www.linkedin.com/in/juan-pablo-rojas-416157195/', title: 'LinkedIn' }
    ]
  },
  {
    name: 'Federico Antunovic',
    role: 'CCO',
    bio: 'MBA, 8+ años en ventas B2B, experiencia en consultoría inmobiliaria.',
    photo: 'https://media.licdn.com/dms/image/v2/C4D03AQExEzpf2qxawQ/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1635413934306?e=1746057600&v=beta&t=DZsUsWBp3D5yciGIHNtxFH15bROc2GTBmQOzZ9ikR00',
    social: [
      { icon: 'far fa-calendar-alt', url: 'https://calendar.app.google/CjKqkYmZtZNg2jFb8', title: 'Agendar una reunión' },
      { icon: 'fab fa-linkedin', url: 'https://www.linkedin.com/in/fantunovic/', title: 'LinkedIn' },
      { icon: 'far fa-envelope', url: 'mailto:fede@maiavr.cl', title: 'Enviar email' }
    ]
  }
];

onMounted(() => {
  startAutoplay();
});

onUnmounted(() => {
  if (autoplayInterval) {
    clearInterval(autoplayInterval);
  }
});
</script>

<style lang="scss" scoped>
// Hero Section
.hero {
  padding: 100px 0 60px;
  background: linear-gradient(135deg, rgba($light, 0.9) 0%, rgba($light, 0.7) 100%);
  position: relative;
  overflow: hidden;
  
  &::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: url('https://images.unsplash.com/photo-1560518883-ce09059eeffa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1073&q=80') no-repeat center center;
    background-size: cover;
    opacity: 0.05;
    z-index: -1;
  }
  
  .container {
    display: flex;
    flex-direction: column;
    align-items: center;
    max-width: 1400px;
    
    @media (min-width: $breakpoint-lg) {
      flex-direction: row;
      justify-content: space-between;
      align-items: center;
      gap: $spacing-xl;
    }
  }
  
  &__content {
    text-align: center;
    margin-bottom: $spacing-2xl;
    
    @media (min-width: $breakpoint-lg) {
      text-align: left;
      flex: 1;
      margin-bottom: 0;
      padding-right: $spacing-xl;
      max-width: 45%;
    }
    
    h1 {
      margin-bottom: $spacing-lg;
      font-weight: $font-weight-bold;
      color: $dark;
      font-size: 3rem;
      
      @media (min-width: $breakpoint-lg) {
        font-size: 3.5rem;
      }
    }
    
    p {
      font-size: 1.5rem;
      margin-bottom: $spacing-xl;
      color: $gray-700;
      
      @media (min-width: $breakpoint-lg) {
        margin-left: 0;
      }
    }
  }
  
  &__actions {
    display: flex;
    gap: $spacing-md;
    justify-content: center;
    
    @media (min-width: $breakpoint-lg) {
      justify-content: flex-start;
    }
    
    .btn {
      font-size: 1.1rem;
      padding: $spacing-sm $spacing-lg;
    }
  }
  
  &__demo {
    width: 100%;
    max-width: 700px;
    border-radius: $border-radius-lg;
    overflow: hidden;
    box-shadow: $shadow-lg;
    
    @media (min-width: $breakpoint-lg) {
      flex: 1;
      max-width: 55%;
    }
    
    .demo__iframe-wrapper {
      position: relative;
      width: 100%;
      padding-bottom: 56.25%; // 16:9 aspect ratio
      height: 0;
      border-radius: $border-radius-lg;
      overflow: hidden;
    }
    
    .demo__iframe {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      border: none;
    }
    
    .demo__overlay {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background: rgba($dark, 0.7);
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      color: white;
      cursor: pointer;
      transition: $transition-base;
      
      &:hover {
        background: rgba($dark, 0.8);
      }
      
      h3 {
        font-size: 2.5rem;
        margin-bottom: $spacing-lg;
        text-shadow: 0 2px 4px rgba(0, 0, 0, 0.3);
      }
      
      .btn {
        font-size: 1.2rem;
        padding: $spacing-sm $spacing-xl;
      }
    }
  }
}

// Features Section
.features {
  &__grid {
    display: grid;
    grid-template-columns: 1fr;
    gap: $spacing-xl;
    
    @media (min-width: $breakpoint-md) {
      grid-template-columns: repeat(2, 1fr);
    }
    
    @media (min-width: $breakpoint-lg) {
      grid-template-columns: repeat(3, 1fr);
    }
  }
}

.feature-card {
  background-color: white;
  border-radius: $border-radius-lg;
  padding: $spacing-xl;
  box-shadow: $shadow;
  transition: $transition-base;
  text-align: center;
  
  &:hover {
    transform: translateY(-10px);
    box-shadow: $shadow-lg;
  }
  
  &__icon {
    width: 70px;
    height: 70px;
    border-radius: 50%;
    background: $gradient-1;
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 0 auto $spacing-lg;
    
    i {
      font-size: 1.75rem;
      color: white;
    }
  }
  
  h3 {
    margin-bottom: $spacing-md;
    font-weight: $font-weight-semibold;
  }
  
  p {
    color: $gray-600;
    line-height: 1.6;
    margin: 0;
  }
}

// Testimonials Section
.testimonials {
  background-color: $light;
  
  &__slider {
    display: flex;
    transition: transform 0.5s ease;
    margin-bottom: $spacing-xl;
  }
  
  &__controls {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: $spacing-md;
  }
  
  &__dots {
    display: flex;
    gap: $spacing-xs;
    
    .dot-btn {
      width: 12px;
      height: 12px;
      border-radius: 50%;
      background-color: $gray-300;
      border: none;
      cursor: pointer;
      transition: $transition-base;
      
      &.active {
        background-color: $primary;
        transform: scale(1.2);
      }
    }
  }
  
  .control-btn {
    width: 40px;
    height: 40px;
    border-radius: 50%;
    background-color: white;
    border: 1px solid $gray-300;
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    transition: $transition-base;
    
    &:hover {
      background-color: $primary;
      color: white;
      border-color: $primary;
    }
  }
}

.testimonial-card {
  flex: 0 0 100%;
  
  &__content {
    background-color: white;
    border-radius: $border-radius-lg;
    padding: $spacing-xl;
    box-shadow: $shadow;
    
    p {
      font-size: 1.1rem;
      line-height: 1.6;
      margin-bottom: $spacing-lg;
      font-style: italic;
      color: $gray-700;
    }
  }
  
  &__author {
    display: flex;
    align-items: center;
    
    .author-avatar {
      width: 60px;
      height: 60px;
      border-radius: 50%;
      overflow: hidden;
      margin-right: $spacing-md;
      
      img {
        width: 100%;
        height: 100%;
        object-fit: cover;
      }
    }
    
    .author-info {
      h4 {
        margin: 0 0 $spacing-xs;
        font-weight: $font-weight-semibold;
      }
      
      p {
        margin: 0;
        font-size: 0.9rem;
        color: $gray-600;
        font-style: normal;
      }
    }
  }
}

// Team Section
.team {
  &__grid {
    display: grid;
    grid-template-columns: 1fr;
    gap: $spacing-xl;
    
    @media (min-width: $breakpoint-sm) {
      grid-template-columns: repeat(2, 1fr);
    }
    
    @media (min-width: $breakpoint-lg) {
      grid-template-columns: repeat(3, 1fr);
    }
  }
}

.team-member {
  background-color: white;
  border-radius: $border-radius-lg;
  padding: $spacing-xl;
  box-shadow: $shadow;
  text-align: center;
  transition: $transition-base;
  
  &:hover {
    transform: translateY(-10px);
    box-shadow: $shadow-lg;
  }
  
  &__image {
    width: 120px;
    height: 120px;
    border-radius: 50%;
    overflow: hidden;
    margin: 0 auto $spacing-lg;
    border: 3px solid $primary;
    
    img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
  }
  
  h3 {
    margin-bottom: $spacing-xs;
    font-weight: $font-weight-semibold;
  }
  
  &__role {
    color: $primary;
    font-weight: $font-weight-medium;
    margin-bottom: $spacing-md;
  }
  
  &__bio {
    color: $gray-600;
    margin-bottom: $spacing-lg;
    line-height: 1.6;
  }
  
  &__social {
    display: flex;
    justify-content: center;
    gap: $spacing-md;
    
    a {
      width: 36px;
      height: 36px;
      border-radius: 50%;
      background-color: $gray-100;
      display: flex;
      align-items: center;
      justify-content: center;
      color: $gray-700;
      transition: $transition-base;
      
      &:hover {
        background-color: $primary;
        color: white;
        transform: translateY(-3px);
      }
    }
  }
}

// Call to Action Section
.cta {
  background: $gradient-1;
  color: white;
  padding: $spacing-xxl 0;
  text-align: center;
  
  &__content {
    max-width: 800px;
    margin: 0 auto;
    
    h2 {
      font-size: 2.5rem;
      margin-bottom: $spacing-md;
    }
    
    p {
      font-size: 1.2rem;
      margin-bottom: $spacing-lg;
      opacity: 0.9;
    }
    
    .btn-white {
      background-color: white;
      color: $primary;
      
      &:hover {
        background-color: rgba(255, 255, 255, 0.9);
      }
    }
  }
}
</style> 