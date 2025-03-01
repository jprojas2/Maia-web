<template>
  <div class="pricing-view">
    <section class="pricing-section">
      <div class="container">
        <div class="section__title">
          <h2>Planes y Precios</h2>
          <p>Elige el plan que mejor se adapte a las necesidades de tu inmobiliaria. <strong>Todos incluyen prueba gratuita de 7 días sin compromiso.</strong></p>
        </div>
        
        <div class="pricing-container">
          <div class="pricing-card" :class="{ 'popular': index === 1 }" v-for="(plan, index) in plans" :key="index">
            <h3 class="plan-name">{{ plan.name }}</h3>
            <div class="plan-price">
              <span class="currency">$</span>
              <span class="amount">{{ plan.price }}</span>
              <span class="period">/mes</span>
            </div>
            <p class="plan-description">{{ plan.description }}</p>
            
            <div class="plan-free-trial">
              <span class="free-trial-badge"><strong>Prueba gratuita de 7 días</strong></span>
            </div>
            
            <ul class="plan-features">
              <li v-for="(feature, fIndex) in plan.features" :key="fIndex">
                <i class="fas fa-check"></i>
                {{ feature }}
              </li>
            </ul>
            
            <router-link :to="plan.buttonLink" class="btn" :class="plan.buttonClass">
              Suscribirse
            </router-link>
          </div>
        </div>
        
        <div class="pricing-note">
          <p>¿Necesitas un plan personalizado para tu empresa? <router-link to="/contact">Contáctanos</router-link> para una solución a medida.</p>
        </div>
      </div>
    </section>
    
    <section class="faq-section">
      <div class="container">
        <div class="section__title">
          <h2>Preguntas Frecuentes</h2>
          <p>Respuestas a las dudas más comunes sobre nuestros planes</p>
        </div>
        
        <div class="faq-container">
          <div class="faq-item" v-for="(faq, index) in faqs" :key="index">
            <div class="faq-question" @click="toggleFaq(index)">
              <h3>{{ faq.question }}</h3>
              <i class="fas" :class="faq.open ? 'fa-minus' : 'fa-plus'"></i>
            </div>
            <div class="faq-answer" :class="{ 'open': faq.open }">
              <p>{{ faq.answer }}</p>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup>
import { ref } from 'vue';

const plans = ref([
  {
    name: 'Básico',
    price: 40,
    description: 'Ideal para pequeñas inmobiliarias con hasta 5 propiedades activas.',
    features: [
      '5 propiedades activas',
      'Chat con IA básico',
      'Tours virtuales estándar',
      'Soporte por email',
      'Estadísticas básicas'
    ],
    buttonText: 'Suscribirse',
    buttonLink: '/contact',
    buttonClass: 'btn--primary',
    popular: false
  },
  {
    name: 'Profesional',
    price: 120,
    description: 'Para inmobiliarias en crecimiento con hasta 20 propiedades y funciones avanzadas.',
    features: [
      '20 propiedades activas',
      'Chat con IA avanzado con aprendizaje',
      'Tours virtuales personalizados',
      'Calificación de leads',
      'Soporte prioritario',
      'Estadísticas avanzadas',
      'Integración con CRM'
    ],
    buttonText: 'Suscribirse',
    buttonLink: '/contact',
    buttonClass: 'btn--white',
    popular: true
  },
  {
    name: 'Empresarial',
    price: 200,
    description: 'Propiedades ilimitadas con todas las características premium.',
    features: [
      'Propiedades ilimitadas',
      'Todas las características premium',
      'API para integración con sistemas propios',
      'Personalización de marca',
      'Soporte dedicado 24/7',
      'Análisis avanzado de datos',
      'Capacitación para el equipo'
    ],
    buttonText: 'Suscribirse',
    buttonLink: '/contact',
    buttonClass: 'btn--primary',
    popular: false
  }
]);

const faqs = ref([
  {
    question: '¿Puedo cambiar de plan en cualquier momento?',
    answer: 'Sí, puedes actualizar o cambiar tu plan en cualquier momento. Los cambios se aplicarán al inicio del siguiente ciclo de facturación.',
    open: true
  },
  {
    question: '¿Qué significa "propiedades activas"?',
    answer: 'Las propiedades activas son aquellas que están disponibles para ser visitadas virtualmente por los clientes. Puedes rotar las propiedades activas según tus necesidades.',
    open: false
  },
  {
    question: '¿Necesito conocimientos técnicos para implementar Maia?',
    answer: 'No, nuestro equipo se encarga de toda la configuración técnica. Solo necesitas proporcionarnos los recorridos virtuales de tus propiedades y nosotros nos encargamos del resto.',
    open: false
  },
  {
    question: '¿Cómo se integra Maia con mi sitio web?',
    answer: 'Proporcionamos un código de inserción simple que puedes añadir a tu sitio web. También ofrecemos integraciones más avanzadas para sitios web personalizados.',
    open: false
  },
  {
    question: '¿Ofrecen descuentos por pago anual?',
    answer: 'Sí, ofrecemos un 15% de descuento para los clientes que opten por el pago anual en cualquiera de nuestros planes.',
    open: false
  }
]);

const toggleFaq = (index) => {
  faqs.value[index].open = !faqs.value[index].open;
};
</script>

<style lang="scss" scoped>
.pricing-section {
  padding: $spacing-4xl 0;
  background-color: $light;
}

.pricing-container {
  display: grid;
  grid-template-columns: 1fr;
  gap: $spacing-xl;
  margin-top: $spacing-2xl;
  
  @media (min-width: $breakpoint-md) {
    grid-template-columns: repeat(3, 1fr);
  }
}

.pricing-card {
  background-color: rgba(255, 255, 255, 0.7);
  border-radius: $border-radius-lg;
  padding: $spacing-xl;
  box-shadow: $shadow;
  text-align: center;
  position: relative;
  transition: $transition-base;
  border: 2px solid transparent;
  overflow: hidden;
  
  &:hover {
    transform: translateY(-10px);
    box-shadow: $shadow-lg;
  }
  
  .popular-badge {
    position: absolute;
    top: 0;
    right: 0;
    background: $primary;
    color: white;
    padding: $spacing-xs $spacing-md;
    font-size: 0.9rem;
    font-weight: $font-weight-semibold;
    border-radius: 0 $border-radius-lg 0 $border-radius-lg;
    z-index: 1;
  }
}

.pricing-card.popular {
  background: linear-gradient(135deg, var(--primary), #8492ff) !important;
  color: white !important;
  transform: scale(1.05) !important;
  box-shadow: $shadow-lg !important;
  border: none !important;
  z-index: 2;
  
  @media (max-width: $breakpoint-md) {
    transform: scale(1.02) !important;
  }
  
  &:hover {
    transform: translateY(-10px) scale(1.05) !important;
    
    @media (max-width: $breakpoint-md) {
      transform: translateY(-10px) scale(1.02) !important;
    }
  }
}

.pricing-card.popular .plan-name,
.pricing-card.popular .currency,
.pricing-card.popular .amount, 
.pricing-card.popular .period, 
.pricing-card.popular .plan-description,
.pricing-card.popular .free-trial-badge {
  color: white !important;
}

.pricing-card.popular .free-trial-badge {
  background-color: rgba(255, 255, 255, 0.2) !important;
  color: white !important;
}

.pricing-card.popular .plan-features li {
  border-bottom: 1px solid rgba(255, 255, 255, 0.2) !important;
  color: white !important;
}

.pricing-card.popular .plan-features li i {
  color: white !important;
}

.pricing-card.popular .btn {
  background-color: white !important;
  color: var(--primary) !important;
  border: none !important;
  
  &:hover {
    background-color: rgba(255, 255, 255, 0.9) !important;
  }
}

.pricing-card {
  .plan-name {
    font-size: 1.5rem;
    margin-bottom: $spacing-md;
    color: $dark;
  }
  
  .plan-price {
    margin-bottom: $spacing-lg;
    
    .currency {
      font-size: 1.5rem;
      vertical-align: top;
      position: relative;
      top: 0.5rem;
    }
    
    .amount {
      font-size: 3.5rem;
      font-weight: $font-weight-bold;
      color: $primary;
    }
    
    .period {
      font-size: 1rem;
      color: $gray-600;
    }
  }
  
  .plan-description {
    color: $gray-600;
    margin-bottom: $spacing-lg;
    min-height: 50px;
  }
  
  .plan-free-trial {
    margin-bottom: $spacing-md;
    
    .free-trial-badge {
      display: inline-block;
      background-color: rgba($primary, 0.1);
      color: $primary;
      font-weight: $font-weight-semibold;
      padding: $spacing-xs $spacing-md;
      border-radius: $border-radius-pill;
      font-size: 0.9rem;
    }
  }
  
  .plan-features {
    list-style: none;
    padding: 0;
    margin: 0 0 $spacing-xl;
    text-align: left;
    
    li {
      padding: $spacing-sm 0;
      border-bottom: 1px solid $gray-200;
      
      &:last-child {
        border-bottom: none;
      }
      
      i {
        color: $primary;
        margin-right: $spacing-sm;
      }
    }
  }
  
  .btn {
    width: 100%;
  }
}

.pricing-note {
  text-align: center;
  margin-top: $spacing-2xl;
  
  p {
    color: $gray-600;
    
    a {
      font-weight: $font-weight-semibold;
    }
  }
}

.faq-section {
  padding: $spacing-4xl 0;
  background-color: white;
}

.faq-container {
  max-width: 800px;
  margin: $spacing-2xl auto 0;
}

.faq-item {
  margin-bottom: $spacing-md;
  border: 1px solid $gray-300;
  border-radius: $border-radius;
  overflow: hidden;
  
  .faq-question {
    padding: $spacing-lg;
    background-color: $gray-100;
    display: flex;
    justify-content: space-between;
    align-items: center;
    cursor: pointer;
    
    h3 {
      margin: 0;
      font-size: 1.1rem;
      font-weight: $font-weight-medium;
    }
    
    i {
      color: $primary;
      transition: $transition-base;
    }
  }
  
  .faq-answer {
    max-height: 0;
    overflow: hidden;
    transition: max-height 0.3s ease;
    
    p {
      padding: 0 $spacing-lg;
      margin: 0;
      color: $gray-700;
    }
    
    &.open {
      max-height: 200px;
      padding: $spacing-lg;
    }
  }
}
</style> 