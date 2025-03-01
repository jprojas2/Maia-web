<template>
  <footer class="footer">
    <div class="container">
      <div class="footer__top">
        <div class="footer__logo">
          <img src="@/assets/logomaia.png" alt="Maia" class="footer-logo" />
          <h3 class="footer-brand">Maia</h3>
          <p class="footer-tagline">La vendedora virtual que revoluciona la venta inmobiliaria</p>
        </div>
        
        <div class="footer__nav">
          <div class="footer-menu">
            <h4 class="footer-menu__title">Plataforma</h4>
            <ul class="footer-menu__list">
              <li><a href="#demo">Demo</a></li>
              <li><a href="#features">Características</a></li>
              <li><a href="#pricing">Precios</a></li>
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
              <li><a href="mailto:info@maiavirtual.com">info@maiavirtual.com</a></li>
              <li><a href="tel:+123456789">+1 (234) 567-89</a></li>
              <li>Ciudad de México, México</li>
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
          <button class="btn btn--white btn--lg">Comenzar Ahora</button>
        </div>
      </div>
      
      <div class="footer__bottom">
        <p class="copyright">© 2023 Maia. Todos los derechos reservados.</p>
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
  padding-top: $spacing-2xl;
}

.footer__top {
  display: grid;
  grid-template-columns: 1fr;
  gap: $spacing-2xl;
  padding-bottom: $spacing-2xl;
  border-bottom: 1px solid rgba(white, 0.1);
  
  @media (min-width: $breakpoint-md) {
    grid-template-columns: 1fr 3fr;
  }
}

.footer__logo {
  display: flex;
  flex-direction: column;
  align-items: flex-start;
}

.footer-logo {
  width: 60px;
  height: 60px;
  border-radius: 50%;
  margin-bottom: $spacing-md;
  object-fit: cover;
}

.footer-brand {
  font-size: 1.8rem;
  font-weight: $font-weight-bold;
  margin-bottom: $spacing-xs;
  color: white;
}

.footer-tagline {
  color: rgba(white, 0.7);
  font-size: 0.95rem;
  line-height: 1.5;
  max-width: 300px;
}

.footer__nav {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: $spacing-xl;
  
  @media (min-width: $breakpoint-md) {
    grid-template-columns: repeat(4, 1fr);
  }
}

.footer-menu__title {
  color: white;
  font-weight: $font-weight-semibold;
  margin-bottom: $spacing-md;
  font-size: 1.1rem;
}

.footer-menu__list {
  list-style: none;
  padding: 0;
  margin: 0;
  
  li {
    margin-bottom: $spacing-xs;
  }
  
  a {
    color: rgba(white, 0.7);
    text-decoration: none;
    transition: color 0.2s ease;
    font-size: 0.95rem;
    
    &:hover {
      color: white;
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
    background-color: rgba(white, 0.1);
    border-radius: 50%;
    color: white;
    transition: all 0.2s ease;
    
    &:hover {
      background-color: $primary;
      transform: translateY(-3px);
    }
  }
}

.footer__cta {
  margin: $spacing-3xl 0;
  padding: $spacing-2xl;
  border-radius: $border-radius-lg;
  background: $primary-gradient;
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
  display: flex;
  flex-direction: column;
  align-items: center;
  padding: $spacing-lg 0;
  border-top: 1px solid rgba(white, 0.1);
  
  @media (min-width: $breakpoint-md) {
    flex-direction: row;
    justify-content: space-between;
  }
}

.copyright {
  color: rgba(white, 0.5);
  font-size: 0.9rem;
  margin-bottom: $spacing-md;
  
  @media (min-width: $breakpoint-md) {
    margin-bottom: 0;
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