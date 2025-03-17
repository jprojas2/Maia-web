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
              <router-link to="/" class="nav__link" @click="closeMobileMenu">Inicio</router-link>
            </li>
            <li class="nav__item">
              <a href="#demo" class="nav__link" @click="closeMobileMenu">Demo</a>
            </li>
            <li class="nav__item">
              <a href="#features" class="nav__link" @click="closeMobileMenu">Características</a>
            </li>
            <!-- <li class="nav__item">
              <a href="#pricing" class="nav__link" @click="closeMobileMenu">Planes</a>
            </li> -->
            <li class="nav__item">
              <router-link to="#about" class="nav__link" @click="closeMobileMenu">Nosotros</router-link>
            </li>
            <li class="nav__item">
              <router-link to="#contact" class="nav__link" @click="closeMobileMenu">Contacto</router-link>
            </li>
          </ul>
        </nav>
        
        <div class="header__actions">
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
  <!-- Backdrop for closing the menu - moved outside header for better event handling -->
  <div v-if="mobileMenuOpen" class="menu-backdrop" @click="closeMobileMenu"></div>
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
      console.log('Toggling mobile menu, current state:', this.mobileMenuOpen);
      this.mobileMenuOpen = !this.mobileMenuOpen;
      console.log('New mobile menu state:', this.mobileMenuOpen);
      if (this.mobileMenuOpen) {
        document.body.style.overflow = 'hidden';
      } else {
        document.body.style.overflow = '';
      }
    },
    closeMobileMenu() {
      console.log('Closing mobile menu');
      this.mobileMenuOpen = false;
      document.body.style.overflow = '';
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
  right: 0;
  z-index: 1000;
  padding: 0 $spacing-lg;
  background-color: #ffffff80;
  height: 100px;
  display: flex;
  align-items: center;
  transition: $transition-base;
  border-bottom: 1px solid rgba($dark, 0.1);
  box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);

  &__content {
    display: flex;
    align-items: center;
    justify-content: space-between;
    width: 100%;
  }

  &__logo {
    flex: 0 0 auto;
    display: flex;
    align-items: center;
  }

  &__nav {
    display: flex;
    flex: 1 1 auto;
    justify-content: center;
    align-items: center;
  }

  &__actions {
    flex: 0 0 auto;
    display: flex;
    gap: $spacing-md;
    align-items: center;
  }

  &--scrolled {
    height: 80px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
  }
}

.nav {
  display: flex;
  list-style: none;
  gap: $spacing-md;
  justify-content: center;
  align-items: center;
  margin: 0;
  padding: 0;

  &__item {
    position: relative;
    display: flex;
    align-items: center;

    a {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      padding: $spacing-sm $spacing-md;
      color: $dark;
      font-weight: $font-weight-medium;
      text-decoration: none;
      transition: $transition-base;
      border-radius: 20px;
      height: 40px;

      &:hover, &:focus {
        color: $primary;
        background-color: rgba($primary, 0.1);
      }

      &.active {
        color: $primary;
        background-color: rgba($primary, 0.1);
      }
    }
  }
}

.logo {
  display: flex;
  align-items: center;
  gap: $spacing-sm;
  text-decoration: none;

  &__image {
    height: 60px;
    width: auto;
  }

  &__text {
    font-size: 1.8rem;
    font-weight: $font-weight-bold;
    color: $primary;
  }
}

@media (max-width: $breakpoint-md) {
  .header {
    &__nav {
      display: none;
      
      &.active {
        display: flex;
        position: fixed;
        top: 100px;
        left: 0;
        right: 0;
        bottom: 0;
        background-color: rgba(255, 255, 255, 0.95);
        backdrop-filter: blur(10px);
        z-index: 1001;
        flex-direction: column;
        justify-content: flex-start;
        align-items: center;
        padding: $spacing-xl 0;
        overflow-y: auto;
        
        .nav {
          flex-direction: column;
          width: 90%;
          max-width: 400px;
          
          &__item {
            width: 100%;
            margin: $spacing-sm 0;
            
            a {
              width: 100%;
              font-size: 1.2rem;
              padding: $spacing-md;
              justify-content: center;
              border-radius: $border-radius-lg;
              background-color: rgba($primary, 0.05);
              
              &:hover, &:focus {
                background-color: rgba($primary, 0.1);
                transform: translateY(-3px);
              }
            }
          }
        }
      }
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
  z-index: 1002;
  
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

// Use a real element for the backdrop instead
.menu-backdrop {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  width: 100vw;
  height: 100vh;
  background-color: rgba(0, 0, 0, 0.5);
  z-index: 999; // Between header and nav
  cursor: pointer;
  animation: fadeIn 0.3s ease forwards;
  display: block; // Ensure it's displayed
}

@keyframes fadeIn {
  from { opacity: 0; }
  to { opacity: 1; }
}

// Add this style for purple text
.purple-text {
  color: $primary !important;
}

// Mobile close button
.mobile-close-btn {
  position: absolute;
  top: 20px;
  right: 20px;
  background: rgba($primary, 0.1);
  border: none;
  width: 40px;
  height: 40px;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 1.5rem;
  color: $primary;
  cursor: pointer;
  z-index: 1002;
  transition: all 0.3s ease;
  
  &:hover {
    background: rgba($primary, 0.2);
    transform: rotate(90deg);
  }
}
</style> 