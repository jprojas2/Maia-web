<template>
  <footer class="app-footer">
    <div class="container">
      <div class="footer-content">
        <div class="footer-about">
          <router-link to="/" class="footer-logo">
            <div class="logo-container">
              <img src="@/assets/logomaia.png" alt="Maia Logo" class="footer-logo-image">
              <span class="footer-logo-text">Maia</span>
            </div>
          </router-link>
          <p>Transformamos la venta de propiedades en una experiencia de compra digital única, interactiva, personalizada y simple, acelerando la toma de decisiones.</p>
          <div class="social-links">
            <a href="#" class="social-link" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
            <a href="#" class="social-link" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
            <a href="#" class="social-link" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
            <a href="#" class="social-link" aria-label="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
          </div>
        </div>
        
        <div class="footer-links">
          <h4>Empresa</h4>
          <ul>
            <li><router-link to="/about">Sobre Nosotros</router-link></li>
            <li><router-link to="/#team">Nuestro Equipo</router-link></li>
            <li><router-link to="/careers">Carreras</router-link></li>
            <li><router-link to="/blog">Blog</router-link></li>
          </ul>
        </div>
        
        <div class="footer-links">
          <h4>Producto</h4>
          <ul>
            <li><router-link to="/#features">Características</router-link></li>
            <li><router-link to="/pricing">Precios</router-link></li>
            <li><router-link to="/#demo">Demo</router-link></li>
            <li><router-link to="/api">API</router-link></li>
          </ul>
        </div>
        
        <div class="footer-links">
          <h4>Soporte</h4>
          <ul>
            <li><router-link to="/help">Centro de Ayuda</router-link></li>
            <li><router-link to="/docs">Documentación</router-link></li>
            <li><router-link to="/contact">Contacto</router-link></li>
            <li><router-link to="/terms">Términos de Servicio</router-link></li>
          </ul>
        </div>
      </div>
      
      <div class="footer-bottom">
        <p>&copy; {{ currentYear }} Maia. Todos los derechos reservados.</p>
      </div>
    </div>
  </footer>
</template>

<script setup>
import { computed } from 'vue';

const currentYear = computed(() => new Date().getFullYear());
</script>

<style lang="scss" scoped>
.app-footer {
  background-color: $dark;
  color: white;
  padding: $spacing-3xl 0 $spacing-xl;
  margin-top: auto;
  
  .footer-content {
    display: grid;
    grid-template-columns: repeat(1, 1fr);
    gap: $spacing-xl;
    margin-bottom: $spacing-2xl;
    
    @media (min-width: $breakpoint-sm) {
      grid-template-columns: repeat(2, 1fr);
    }
    
    @media (min-width: $breakpoint-lg) {
      grid-template-columns: 2fr 1fr 1fr 1fr;
    }
  }
  
  .footer-about {
    .footer-logo {
      display: flex;
      align-items: center;
      margin-bottom: $spacing-md;
      text-decoration: none;
      color: white;
      
      .logo-container {
        display: flex;
        align-items: center;
        
        .footer-logo-image {
          height: 40px;
          margin-right: $spacing-sm;
        }
        
        .footer-logo-text {
          font-size: 1.5rem;
          font-weight: $font-weight-bold;
        }
      }
    }
    
    p {
      margin-bottom: $spacing-lg;
      opacity: 0.8;
      line-height: 1.6;
    }
    
    .social-links {
      display: flex;
      gap: $spacing-md;
      
      .social-link {
        display: flex;
        align-items: center;
        justify-content: center;
        width: 36px;
        height: 36px;
        border-radius: 50%;
        background-color: rgba(255, 255, 255, 0.1);
        color: white;
        transition: $transition-base;
        
        &:hover {
          background-color: $primary;
          transform: translateY(-3px);
        }
      }
    }
  }
  
  .footer-links {
    h4 {
      color: white;
      margin-bottom: $spacing-lg;
      font-size: 1.2rem;
      position: relative;
      display: inline-block;
      
      &::after {
        content: '';
        position: absolute;
        bottom: -8px;
        left: 0;
        width: 30px;
        height: 2px;
        background: $gradient-1;
      }
    }
    
    ul {
      list-style: none;
      padding: 0;
      margin: 0;
      
      li {
        margin-bottom: $spacing-sm;
        
        a {
          color: rgba(255, 255, 255, 0.7);
          text-decoration: none;
          transition: $transition-base;
          
          &:hover {
            color: $secondary;
            padding-left: $spacing-xs;
          }
        }
      }
    }
  }
  
  .footer-bottom {
    border-top: 1px solid rgba(255, 255, 255, 0.1);
    padding-top: $spacing-lg;
    text-align: center;
    
    p {
      margin: 0;
      opacity: 0.6;
      font-size: 0.9rem;
    }
  }
}
</style> 