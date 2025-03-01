<template>
  <footer class="app-footer">
    <div class="container">
      <div class="footer-top">
        <div class="footer-brand">
          <router-link to="/" class="footer-logo">
            <img src="@/assets/logomaia.png" alt="Maia AI Logo" />
            <span>Maia<span class="accent">AI</span></span>
          </router-link>
          <p class="footer-tagline">
            Transformando la industria inmobiliaria con inteligencia artificial
          </p>
          <div class="footer-social">
            <a href="https://www.linkedin.com/company/maiavr/" target="_blank" aria-label="LinkedIn">
              <i class="fab fa-linkedin-in"></i>
            </a>
            <a href="https://twitter.com/maiavr_ai" target="_blank" aria-label="Twitter">
              <i class="fab fa-twitter"></i>
            </a>
            <a href="https://www.instagram.com/maiavr.ai/" target="_blank" aria-label="Instagram">
              <i class="fab fa-instagram"></i>
            </a>
          </div>
        </div>
        
        <div class="footer-links">
          <div class="footer-links-col">
            <h4>Producto</h4>
            <ul>
              <li><a href="#pricing">Planes</a></li>
              <li><a href="#">Demo</a></li>
              <li><a href="#">Integraciones</a></li>
              <li><a href="#">API</a></li>
            </ul>
          </div>
          
          <div class="footer-links-col">
            <h4>Compañía</h4>
            <ul>
              <li><router-link to="/about">Nosotros</router-link></li>
              <li><router-link to="/blog">Blog</router-link></li>
              <li><a href="#">Carreras</a></li>
              <li><a href="#">Prensa</a></li>
            </ul>
          </div>
          
          <div class="footer-links-col">
            <h4>Soporte</h4>
            <ul>
              <li><a href="#">Centro de Ayuda</a></li>
              <li><router-link to="/contact">Contacto</router-link></li>
              <li><a href="#">Documentación</a></li>
              <li><a href="#">Estado del Sistema</a></li>
            </ul>
          </div>
          
          <div class="footer-links-col">
            <h4>Legal</h4>
            <ul>
              <li><a href="#">Términos de Servicio</a></li>
              <li><a href="#">Privacidad</a></li>
              <li><a href="#">Cookies</a></li>
            </ul>
          </div>
        </div>
      </div>
      
      <div class="footer-bottom">
        <p class="copyright">
          &copy; {{ currentYear }} Maia AI. Todos los derechos reservados.
        </p>
        <div class="footer-bottom-links">
          <a href="mailto:info@maiavr.cl">info@maiavr.cl</a>
          <a href="tel:+56912345678">+56 9 1234 5678</a>
        </div>
      </div>
    </div>
    
    <div class="footer-shape"></div>
  </footer>
</template>

<script>
export default {
  name: 'AppFooter',
  
  computed: {
    currentYear() {
      return new Date().getFullYear();
    }
  }
}
</script>

<style lang="scss" scoped>
@import '@/styles/variables.scss';

// Define light blue background color
$light-blue-bg: #f0f8ff;

.app-footer {
  position: relative;
  background-color: white;
  padding: $spacing-3xl 0 $spacing-xl;
  color: $dark;
  overflow: hidden;
  
  .container {
    position: relative;
    z-index: 1;
  }
}

// Footer shape background
.footer-shape {
  position: absolute;
  bottom: 0;
  right: 0;
  width: 50%;
  height: 70%;
  background: rgba($primary, 0.02);
  border-radius: 100% 0 0 0;
  z-index: 0;
}

// Footer top section with logo and links
.footer-top {
  display: flex;
  flex-wrap: wrap;
  margin-bottom: $spacing-2xl;
  gap: $spacing-2xl;
  
  @media (max-width: $breakpoint-md) {
    flex-direction: column;
    gap: $spacing-xl;
  }
}

// Brand section with logo
.footer-brand {
  flex: 0 0 25%;
  
  @media (max-width: $breakpoint-lg) {
    flex: 0 0 100%;
  }
}

.footer-logo {
  display: flex;
  align-items: center;
  text-decoration: none;
  margin-bottom: $spacing-md;
  color: $dark;
  
  img {
    width: 40px;
    height: 40px;
    margin-right: $spacing-sm;
  }
  
  span {
    font-size: 1.6rem;
    font-weight: 700;
    letter-spacing: -0.01em;
    
    .accent {
      color: $primary;
    }
  }
}

.footer-tagline {
  font-size: 1rem;
  line-height: 1.5;
  color: rgba($dark, 0.7);
  margin-bottom: $spacing-lg;
}

.footer-social {
  display: flex;
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
    transition: all 0.3s ease;
    font-size: 1rem;
    
    &:hover {
      background-color: $primary;
      color: white;
      transform: translateY(-3px);
    }
  }
}

// Links section
.footer-links {
  flex: 1;
  display: flex;
  flex-wrap: wrap;
  gap: $spacing-xl;
  
  @media (max-width: $breakpoint-lg) {
    gap: $spacing-lg;
  }
  
  @media (max-width: $breakpoint-md) {
    width: 100%;
  }
}

.footer-links-col {
  flex: 1;
  min-width: 140px;
  
  @media (max-width: $breakpoint-sm) {
    flex: 0 0 45%;
    margin-bottom: $spacing-lg;
  }
  
  h4 {
    font-size: 1.1rem;
    font-weight: 600;
    margin-bottom: $spacing-md;
    color: $dark;
  }
  
  ul {
    list-style: none;
    padding: 0;
    margin: 0;
    
    li {
      margin-bottom: $spacing-xs;
      
      a {
        color: rgba($dark, 0.7);
        text-decoration: none;
        transition: all 0.2s ease;
        font-size: 0.95rem;
        
        &:hover {
          color: $primary;
          text-decoration: underline;
        }
      }
    }
  }
}

// Footer bottom with copyright
.footer-bottom {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding-top: $spacing-lg;
  border-top: 1px solid rgba($dark, 0.08);
  
  @media (max-width: $breakpoint-md) {
    flex-direction: column;
    gap: $spacing-md;
    align-items: flex-start;
  }
}

.copyright {
  color: rgba($dark, 0.6);
  font-size: 0.9rem;
  margin: 0;
}

.footer-bottom-links {
  display: flex;
  gap: $spacing-lg;
  
  a {
    color: rgba($dark, 0.7);
    text-decoration: none;
    transition: all 0.2s ease;
    font-size: 0.9rem;
    
    &:hover {
      color: $primary;
    }
  }
  
  @media (max-width: $breakpoint-sm) {
    flex-direction: column;
    gap: $spacing-xs;
  }
}
</style> 