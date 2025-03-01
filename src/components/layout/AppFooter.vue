<template>
  <footer class="footer">
    <div class="container">
      <div class="footer__top">
        <div class="footer__logo">
          <div class="logo-container">
            <img src="@/assets/logomaia.png" alt="Maia" class="logo__image" />
            <span class="logo__text purple-text">Maia</span>
          </div>
          <p class="footer-tagline">¿Y si tus propiedades se vendieran solas?</p>
        </div>
        
        <div class="footer__nav">
          <div class="footer-menu">
            <h4 class="footer-menu__title">Plataforma</h4>
            <ul class="footer-menu__list">
              <li><a href="#features">Características</a></li>
              <li><a href="#pricing">Planes</a></li>
              <li><a href="#team">Equipo</a></li>
            </ul>
          </div>
          
          <div class="footer-menu">
            <h4 class="footer-menu__title">Recursos</h4>
            <ul class="footer-menu__list">
              <li><a href="#">Documentación</a></li>
              <li><a href="#">Tutoriales</a></li>
              <li><a href="#">Blog</a></li>
              <li><a href="#">FAQ</a></li>
            </ul>
          </div>
          
          <div class="footer-menu">
            <h4 class="footer-menu__title">Empresa</h4>
            <ul class="footer-menu__list">
              <li><a href="#">Sobre nosotros</a></li>
              <li><a href="#">Contacto</a></li>
              <li><a href="#">Política de privacidad</a></li>
              <li><a href="#">Términos de servicio</a></li>
            </ul>
          </div>
          
          <div class="footer-menu">
            <h4 class="footer-menu__title">Contacto</h4>
            <ul class="footer-menu__list">
              <li><a href="mailto:info@maiavr.cl">info@maiavr.cl</a></li>
              <li>Santiago, Chile</li>
            </ul>
            <div class="footer-social">
              <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
              <a href="#" aria-label="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
              <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
            </div>
          </div>
        </div>
      </div>
      
      <div class="footer__cta">
        <div class="cta-content">
          <h3>¿Listo para transformar tus ventas inmobiliarias?</h3>
          <p>Únete a cientos de inmobiliarias y agentes que ya están utilizando Maia para vender más propiedades.</p>
          <button class="btn btn--white btn--lg">Suscribirse</button>
        </div>
      </div>
      
      <div class="footer__bottom">
        <div class="copyright">
          &copy; 2024 Maia AI. Todos los derechos reservados.
        </div>
        <div class="footer-links">
          <a href="#">Privacidad</a>
          <a href="#">Términos</a>
          <a href="#">Cookies</a>
        </div>
      </div>
    </div>
  </footer>
</template>

<script>
export default {
  name: 'AppFooter'
}
</script>

<style lang="scss" scoped>
@import "@/styles/variables.scss";

// Define variables
$light-blue-bg: #f0f8ff;
$primary-gradient: linear-gradient(135deg, $primary 0%, lighten($primary, 15%) 100%);

.footer {
  background-color: $dark;
  color: white;
  padding: 4rem 0 3rem;
  
  &__top {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    margin-bottom: 3rem;
    gap: 2rem;
    
    @media (max-width: $breakpoint-md) {
      flex-direction: column;
    }
  }
  
  &__logo {
    flex: 0 0 100%;
    max-width: 280px;
    margin-bottom: 2rem;
    
    @media (max-width: $breakpoint-md) {
      max-width: 100%;
    }
  }
  
  &__nav {
    display: flex;
    flex-wrap: wrap;
    gap: $spacing-xl;
    justify-content: space-between;
    flex: 1;
    width: 100%;
    
    @media (max-width: $breakpoint-md) {
      gap: $spacing-lg;
    }
  }
}

.logo-container {
  display: flex;
  align-items: center;
  gap: 0.2rem;
  background-color: #FFFFFF;
  padding: 0.3rem 0.8rem;
  border-radius: 2rem;
  display: inline-flex;
  margin-bottom: 1rem;
  box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
}

.logo__image {
  height: 100px;
  width: auto;
}

.logo__text {
  font-size: 2.2rem;
  font-weight: $font-weight-bold;
  color: $primary;
}

.purple-text {
  color: $primary !important;
}

.footer-tagline {
  font-size: 1.1rem;
  color: $gray-400;
  margin-top: $spacing-xs;
  white-space: nowrap;
  overflow: visible;
  text-overflow: clip;
  max-width: 280px;
  display: block;
}

.footer-menu {
  flex: 1;
  min-width: 150px;
  margin-bottom: $spacing-md;
  
  @media (max-width: $breakpoint-md) {
    min-width: calc(50% - 1rem);
    flex: 0 0 calc(50% - 1rem);
  }
  
  @media (max-width: $breakpoint-sm) {
    min-width: 100%;
    flex: 0 0 100%;
  }
  
  &__title {
    font-size: 1.1rem;
    font-weight: $font-weight-semibold;
    margin-bottom: $spacing-md;
    color: white;
  }
  
  &__list {
    list-style: none;
    padding: 0;
    margin: 0;
    
    li {
      margin-bottom: $spacing-sm;
      
      a {
        color: $gray-400;
        text-decoration: none;
        transition: $transition-base;
        
        &:hover {
          color: white;
        }
      }
    }
  }
}

.footer-social {
  display: flex;
  gap: $spacing-sm;
  margin-top: $spacing-md;
  
  a {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 36px;
    height: 36px;
    border-radius: 50%;
    background-color: rgba(white, 0.1);
    color: white;
    transition: $transition-base;
    
    &:hover {
      background-color: $primary;
    }
  }
}

.footer__cta {
  margin: $spacing-3xl 0;
  padding: $spacing-2xl;
  border-radius: $border-radius-lg;
  background: #000000;
  border: 1px solid rgba($primary, 0.3);
  text-align: center;
  
  h3 {
    font-size: 1.8rem;
    font-weight: $font-weight-bold;
    margin-bottom: $spacing-md;
    color: white;
  }
  
  p {
    font-size: 1.1rem;
    color: rgba(white, 0.9);
    margin-bottom: $spacing-xl;
    max-width: 700px;
    margin-left: auto;
    margin-right: auto;
  }
  
  .btn--white {
    background-color: white;
    color: $dark;
    
    &:hover {
      background-color: rgba(white, 0.9);
    }
  }
}

.footer__bottom {
  border-top: 1px solid rgba(white, 0.1);
  padding-top: $spacing-lg;
  display: flex;
  justify-content: space-between;
  align-items: center;
  
  @media (max-width: $breakpoint-sm) {
    flex-direction: column;
    gap: $spacing-md;
    text-align: center;
  }
  
  .copyright {
    color: $gray-500;
    font-size: 0.9rem;
  }
}

.footer-links {
  display: flex;
  gap: $spacing-md;
  
  a {
    color: rgba(white, 0.5);
    text-decoration: none;
    font-size: 0.9rem;
    transition: color 0.2s ease;
    
    &:hover {
      color: white;
    }
  }
}
</style> 