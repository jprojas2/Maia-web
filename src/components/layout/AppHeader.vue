<template>
  <header class="header" :class="{ 'header--scrolled': scrolled, 'header--open': mobileMenuOpen }">
    <div class="container">
      <div class="header__content">
        <div class="header__logo">
          <router-link to="/" class="logo">
            <img src="@/assets/logomaia.png" alt="Maia" class="logo__image" />
            <span class="logo__text purple-text">Maia</span>
          </router-link>
        </div>
        
        <nav class="header__nav" :class="{ 'active': mobileMenuOpen }">
          <ul class="nav">
            <li class="nav__item">
              <router-link to="/" class="nav__link">Inicio</router-link>
            </li>
            <li class="nav__item">
              <a href="#demo" class="nav__link">Demo</a>
            </li>
            <li class="nav__item">
              <a href="#pricing" class="nav__link">Planes</a>
            </li>
            <li class="nav__item">
              <router-link to="/about" class="nav__link">Nosotros</router-link>
            </li>
            <li class="nav__item">
              <router-link to="/contact" class="nav__link">Contacto</router-link>
            </li>
          </ul>
        </nav>
        
        <div class="header__actions">
          <button class="btn btn--outline">Iniciar sesión</button>
          <button class="btn btn--primary">Registrarse</button>
          <button 
            class="header__menu-toggle" 
            @click="toggleMobileMenu"
            aria-label="Toggle Menu"
          >
            <span></span>
            <span></span>
            <span></span>
          </button>
        </div>
      </div>
    </div>
  </header>
</template>

<script>
export default {
  name: 'AppHeader',
  data() {
    return {
      scrolled: false,
      mobileMenuOpen: false,
      lastScrollPosition: 0
    }
  },
  mounted() {
    window.addEventListener('scroll', this.handleScroll);
    window.addEventListener('resize', this.handleResize);
    this.handleScroll();
  },
  beforeUnmount() {
    window.removeEventListener('scroll', this.handleScroll);
    window.removeEventListener('resize', this.handleResize);
  },
  methods: {
    handleScroll() {
      const currentScrollPosition = window.pageYOffset || document.documentElement.scrollTop;
      this.scrolled = currentScrollPosition > 20;
      
      // Close mobile menu on scroll
      if (this.mobileMenuOpen && Math.abs(currentScrollPosition - this.lastScrollPosition) > 60) {
        this.mobileMenuOpen = false;
      }
      
      this.lastScrollPosition = currentScrollPosition;
    },
    handleResize() {
      if (window.innerWidth > 991 && this.mobileMenuOpen) {
        this.mobileMenuOpen = false;
      }
    },
    toggleMobileMenu() {
      this.mobileMenuOpen = !this.mobileMenuOpen;
      if (this.mobileMenuOpen) {
        document.body.style.overflow = 'hidden';
      } else {
        document.body.style.overflow = '';
      }
    },
    scrollToSection(sectionId) {
      this.mobileMenuOpen = false;
      document.body.style.overflow = '';
      
      const section = document.getElementById(sectionId);
      if (section) {
        section.scrollIntoView({ behavior: 'smooth' });
      }
    }
  }
}
</script>

<style lang="scss" scoped>
@import "@/styles/variables.scss";

// Define variables
$light-blue-bg: #f0f8ff;
$primary-gradient: linear-gradient(135deg, $primary 0%, lighten($primary, 15%) 100%);

.header {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  z-index: 1000;
  transition: $transition-base;
  background-color: rgba(255, 255, 255, 0.7);
  backdrop-filter: blur(10px);
  padding: 1.5rem 0;
  height: 250px;
  display: flex;
  align-items: center;
  border-bottom: 1px solid rgba(0, 0, 0, 0.05);
  
  &--scrolled {
    padding: 1rem 0;
    height: 210px;
    background-color: rgba(255, 255, 255, 0.9);
    box-shadow: 0 5px 20px rgba(0, 0, 0, 0.05);
  }
  
  &--open {
    background-color: white;
  }
}

.header__content {
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.header__logo {
  z-index: 1001;
}

.logo {
  display: flex;
  align-items: center;
  text-decoration: none;
  color: $dark;
  
  .header--scrolled & {
    color: $dark;
  }
}

.logo__image {
  width: 200px;
  height: 200px;
  margin-right: 0.75rem;
  border-radius: 50%;
  object-fit: cover;
  
  .header--scrolled & {
    width: 175px;
    height: 175px;
  }
}

.logo__text {
  font-size: 4rem;
  font-weight: 700;
  
  .header--scrolled & {
    font-size: 3.5rem;
  }
}

.header__nav {
  @media (max-width: $breakpoint-lg) {
    position: fixed;
    top: 0;
    right: -100%;
    width: 80%;
    max-width: 400px;
    height: 100vh;
    background-color: white;
    z-index: 1000;
    padding: 6rem 2rem 2rem;
    box-shadow: -5px 0 15px rgba(0, 0, 0, 0.1);
    transition: right 0.3s ease;
    overflow-y: auto;
    
    &.active {
      right: 0;
    }
  }
}

.nav {
  display: flex;
  list-style: none;
  padding: 0;
  margin: 0;
  
  @media (max-width: $breakpoint-lg) {
    flex-direction: column;
  }
}

.nav__item {
  margin: 0 1rem;
  
  @media (max-width: $breakpoint-lg) {
    margin: 0.75rem 0;
  }
}

.nav__link {
  color: $dark;
  text-decoration: none;
  font-weight: 500;
  padding: 0.5rem 0;
  transition: color 0.2s ease;
  position: relative;
  
  &:hover, &.router-link-active {
    color: $primary;
  }
  
  &::after {
    content: '';
    position: absolute;
    bottom: 0;
    left: 0;
    width: 0;
    height: 2px;
    background-color: $primary;
    transition: width 0.3s ease;
  }
  
  &:hover::after, &.router-link-active::after {
    width: 100%;
  }
  
  @media (max-width: $breakpoint-lg) {
    display: block;
    padding: 0.75rem 0;
    font-size: 1.2rem;
    
    &::after {
      display: none;
    }
  }
}

.header__actions {
  display: flex;
  align-items: center;
  z-index: 1001;
  
  .btn {
    margin-left: 0.75rem;
    
    @media (max-width: $breakpoint-lg) {
      display: none;
    }
  }
}

.header__menu-toggle {
  display: none;
  background: none;
  border: none;
  width: 30px;
  height: 24px;
  position: relative;
  margin-left: 1rem;
  cursor: pointer;
  
  span {
    display: block;
    width: 100%;
    height: 2px;
    background-color: $dark;
    position: absolute;
    left: 0;
    transition: all 0.3s ease;
    
    &:nth-child(1) {
      top: 0;
    }
    
    &:nth-child(2) {
      top: 50%;
      transform: translateY(-50%);
    }
    
    &:nth-child(3) {
      bottom: 0;
    }
  }
  
  .header--open & {
    span {
      &:nth-child(1) {
        top: 50%;
        transform: translateY(-50%) rotate(45deg);
      }
      
      &:nth-child(2) {
        opacity: 0;
      }
      
      &:nth-child(3) {
        bottom: 50%;
        transform: translateY(50%) rotate(-45deg);
      }
    }
  }
  
  @media (max-width: $breakpoint-lg) {
    display: block;
  }
}

// Overlay for mobile menu
.header--open::after {
  content: '';
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.5);
  z-index: 999;
  animation: fadeIn 0.3s ease forwards;
}

@keyframes fadeIn {
  from { opacity: 0; }
  to { opacity: 1; }
}

// Add this style for purple text
.purple-text {
  color: $primary !important;
}
</style> 