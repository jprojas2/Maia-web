<template>
  <div class="demo-view">
    <section class="demo-section">
      <div class="container">
        <div class="section__title">
          <h2>Demo Interactiva</h2>
          <p>Explora una propiedad con la asistencia de Maia AI</p>
        </div>
        
        <div class="demo-container">
          <div class="demo-frame">
            <iframe 
              src="https://my.matterport.com/show/?m=SxQL3iGyoDo" 
              frameborder="0" 
              allowfullscreen 
              allow="xr-spatial-tracking"
              class="demo-iframe">
            </iframe>
            <div class="demo-overlay" v-if="showOverlay" @click="startDemo">
              <div class="overlay-content">
                <h3>Recorrido Virtual con Maia AI</h3>
                <p>Haz clic para comenzar la experiencia</p>
                <button class="btn btn--gradient">Iniciar Demo</button>
              </div>
            </div>
          </div>
          
          <div class="demo-info">
            <h3>¿Cómo funciona?</h3>
            <p>Esta demo te permite experimentar cómo Maia AI guía a los potenciales compradores a través de recorridos virtuales de propiedades.</p>
            
            <div class="demo-features">
              <div class="feature">
                <i class="fas fa-vr-cardboard"></i>
                <h4>Recorrido Inmersivo</h4>
                <p>Explora cada rincón de la propiedad con una experiencia 3D de alta calidad.</p>
              </div>
              
              <div class="feature">
                <i class="fas fa-robot"></i>
                <h4>Asistente Virtual</h4>
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
      </div>
    </section>
  </div>
</template>

<script setup>
import { ref } from 'vue';

const showOverlay = ref(true);

const startDemo = () => {
  showOverlay.value = false;
};
</script>

<style lang="scss" scoped>
.demo-section {
  padding: $spacing-4xl 0;
  background-color: $light;
}

.demo-container {
  display: grid;
  grid-template-columns: 1fr;
  gap: $spacing-2xl;
  margin-top: $spacing-2xl;
  
  @media (min-width: $breakpoint-lg) {
    grid-template-columns: 3fr 2fr;
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
    background-color: rgba($dark, 0.7);
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    transition: $transition-base;
    
    &:hover {
      background-color: rgba($dark, 0.8);
    }
    
    .overlay-content {
      text-align: center;
      color: white;
      padding: $spacing-lg;
      
      h3 {
        font-size: 1.8rem;
        margin-bottom: $spacing-md;
      }
      
      p {
        margin-bottom: $spacing-lg;
        font-size: 1.1rem;
      }
      
      .btn {
        font-size: 1.1rem;
        padding: $spacing-sm $spacing-xl;
      }
    }
  }
}

.demo-info {
  h3 {
    font-size: 1.8rem;
    margin-bottom: $spacing-md;
    color: $dark;
  }
  
  > p {
    margin-bottom: $spacing-xl;
    font-size: 1.1rem;
    color: $gray-700;
  }
}

.demo-features {
  display: grid;
  grid-template-columns: 1fr;
  gap: $spacing-lg;
  
  @media (min-width: $breakpoint-sm) {
    grid-template-columns: repeat(3, 1fr);
  }
  
  @media (min-width: $breakpoint-lg) {
    grid-template-columns: 1fr;
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
}
</style> 