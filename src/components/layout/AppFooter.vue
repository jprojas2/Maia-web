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
            <h4 class="footer-menu__title">Producto</h4>
            <ul class="footer-menu__list">
              <li><a href="#features">Características</a></li>
              <!-- <li><a href="#pricing">Planes</a></li> -->
            </ul>
          </div>
<!--           
          <div class="footer-menu">
            <h4 class="footer-menu__title">Recursos</h4>
            <ul class="footer-menu__list">
              <li><a href="#">Documentación</a></li>
              <li><a href="#">Tutoriales</a></li>
              <li><a href="#">Blog</a></li>
              <li><a href="#">FAQ</a></li>
            </ul>
          </div>
           -->
          <div class="footer-menu">
            <h4 class="footer-menu__title">Empresa</h4>
            <ul class="footer-menu__list">
              <li><a href="#about">Sobre nosotros</a></li>
            </ul>
          </div>
          
          <div class="footer-menu" id="contact">
            <h4 class="footer-menu__title">Contacto</h4>
            <ul class="footer-menu__list">
              <li><a href="mailto:manuel@maiavr.cl">manuel@maiavr.cl</a></li>
              <li><a href="mailto:fede@maiavr.cl">fede@maiavr.cl</a></li>
              <li>Santiago, Chile</li>
            </ul>
            <div class="footer-social">
              <a href="https://www.linkedin.com/company/maiavr" aria-label="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
            </div>
          </div>
        </div>
      </div>
      
      <div class="footer__cta">
        <div class="cta-content">
          <h3>¿Listo para sumarte a la revolución de las ventas inmobiliarias?</h3>
          <a href="https://docs.google.com/forms/d/1PUet4FLIe1eR0cafpNDapUpBuh0Y7Jvzl7mea_m0kNY/edit?ts=67d4874a" target="_blank" class="btn btn--pink btn--lg">¡Quiero un mes de prueba gratis!</a>
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
@import "../../styles/variables";

.footer {
  background: linear-gradient(135deg, #000000 0%, #333333 100%) !important;
  color: #E7ECFF;
  padding: $spacing-xl 0;
  display: flex;
  align-items: flex-start;
  position: relative;
  z-index: 2;
  box-shadow: 0 -5px 15px rgba(0, 0, 0, 0.1);
}

.container {
  width: 100%;
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 $spacing-lg;
}

.footer__top {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin-bottom: $spacing-xl;
  
  @media (max-width: $breakpoint-md) {
    flex-direction: column;
    gap: $spacing-xl;
  }
}

.footer__logo {
  flex: 0 0 25%;
  
  @media (max-width: $breakpoint-md) {
    flex: 0 0 100%;
    margin-bottom: $spacing-lg;
  }
  
  .logo-container {
    display: flex;
    align-items: center;
    gap: $spacing-sm;
    margin-bottom: $spacing-md;
  }
  
  .logo__image {
    height: 60px;
    width: auto;
  }
  
  .logo__text {
    font-size: 1.8rem;
    font-weight: $font-weight-bold;
    color: $primary;
  }
  
  .footer-tagline {
    color: $gray-400;
    font-size: 1.1rem;
    margin-top: $spacing-sm;
  }
}

.footer__nav {
  flex: 0 0 70%;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  
  @media (max-width: $breakpoint-md) {
    flex: 0 0 100%;
    gap: $spacing-xl;
  }
}

.footer__cta {
  margin: $spacing-3xl 0;
  padding: $spacing-2xl;
  border-radius: 30px;
  background: linear-gradient(135deg, #000000 0%, #333333 100%);
  border: none;
  box-shadow: none;
  text-align: center;
  
  h3 {
    font-size: 1.8rem;
    font-weight: $font-weight-bold;
    margin-bottom: $spacing-md;
    color: #E7ECFF;
  }
  
  p {
    font-size: 1.1rem;
    color: rgba(#E7ECFF, 0.9);
    margin-bottom: $spacing-xl;
    max-width: 700px;
    margin-left: auto;
    margin-right: auto;
  }
  
  .btn {
    border-radius: 20px;
  }
  
  .btn--primary {
    background-color: $primary;
    color: #E7ECFF;
    
    &:hover {
      background-color: rgba($primary, 0.9);
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
    color: rgba(#E7ECFF, 0.5);
    text-decoration: none;
    font-size: 0.9rem;
    transition: color 0.2s ease;
    
    &:hover {
      color: #E7ECFF;
    }
  }
}

.logo-container {
  display: flex;
  align-items: center;
  gap: 0.2rem;
  background-color: #E7ECFF;
  padding: 0.3rem 2.8rem 0.3rem 1rem;
  border-radius: 2rem;
  display: inline-flex;
  margin-bottom: 1rem;
  box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
}

.logo__text {
  font-size: 2rem;
  font-weight: $font-weight-bold;
  color: $primary;
}

.purple-text {
  color: $primary !important;
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
    color: #E7ECFF;
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
          color: #E7ECFF;
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
    background-color: rgba(#E7ECFF, 0.1);
    color: #E7ECFF;
    transition: $transition-base;
    
    &:hover {
      background-color: $primary;
    }
  }
}
</style> 