<template>
  <header class="app-header">
    <div class="container">
      <div class="header-content">
        <div class="logo">
          <router-link to="/">
            <img src="@/assets/logomaia.png" alt="Maia AI Logo" class="logo-img" />
            <span class="logo-text">Maia<span class="logo-accent">AI</span></span>
          </router-link>
        </div>
        
        <nav class="main-nav" :class="{ 'is-active': isMenuOpen }">
          <ul class="nav-list">
            <li class="nav-item">
              <router-link to="/" class="nav-link">Inicio</router-link>
            </li>
            <li class="nav-item">
              <a href="#pricing" class="nav-link">Planes</a>
            </li>
            <li class="nav-item">
              <router-link to="/about" class="nav-link">Nosotros</router-link>
            </li>
            <li class="nav-item">
              <router-link to="/blog" class="nav-link">Blog</router-link>
            </li>
          </ul>
          
          <div class="nav-cta">
            <router-link to="/contact" class="btn btn--primary">Contacto</router-link>
          </div>
        </nav>
        
        <button class="menu-toggle" @click="toggleMenu" aria-label="Toggle menu">
          <span class="menu-icon" :class="{ 'is-active': isMenuOpen }">
            <span class="bar"></span>
            <span class="bar"></span>
            <span class="bar"></span>
          </span>
        </button>
      </div>
    </div>
  </header>
</template>

<script>
export default {
  name: 'AppHeader',
  
  data() {
    return {
      isMenuOpen: false,
      isScrolled: false
    }
  },
  
  mounted() {
    window.addEventListener('scroll', this.handleScroll);
    window.addEventListener('resize', this.handleResize);
    this.handleResize();
  },
  
  beforeUnmount() {
    window.removeEventListener('scroll', this.handleScroll);
    window.removeEventListener('resize', this.handleResize);
  },
  
  methods: {
    toggleMenu() {
      this.isMenuOpen = !this.isMenuOpen;
      
      if (this.isMenuOpen) {
        document.body.style.overflow = 'hidden';
      } else {
        document.body.style.overflow = '';
      }
    },
    
    handleScroll() {
      this.isScrolled = window.scrollY > 20;
    },
    
    handleResize() {
      if (window.innerWidth >= 992) {
        this.isMenuOpen = false;
        document.body.style.overflow = '';
      }
    },
    
    closeMenu() {
      this.isMenuOpen = false;
      document.body.style.overflow = '';
    }
  }
}
</script>

<style lang="scss" scoped>
@import '@/styles/variables.scss';

.app-header {
  position: sticky;
  top: 0;
  left: 0;
  width: 100%;
  z-index: 100;
  padding: $spacing-md 0;
  background-color: $light-blue-bg;
  transition: all 0.3s ease;
  box-shadow: 0 3px 15px rgba(0, 0, 0, 0.03);
  
  &.is-scrolled {
    padding: $spacing-sm 0;
    background-color: rgba(255, 255, 255, 0.98);
    backdrop-filter: blur(10px);
    box-shadow: 0 5px 20px rgba(0, 0, 0, 0.05);
  }
  
  .container {
    position: relative;
  }
}

.header-content {
  display: flex;
  align-items: center;
  justify-content: space-between;
  position: relative;
}

.logo {
  a {
    display: flex;
    align-items: center;
    text-decoration: none;
    color: $dark;
  }
  
  &-img {
    height: 38px;
    width: auto;
    margin-right: $spacing-sm;
    transition: transform 0.3s ease;
  }
  
  &-text {
    font-size: 1.5rem;
    font-weight: 700;
    letter-spacing: -0.01em;
    
    .logo-accent {
      color: $primary;
    }
  }
  
  a:hover .logo-img {
    transform: scale(1.05);
  }
}

.main-nav {
  display: flex;
  align-items: center;
  
  @media (max-width: $breakpoint-lg) {
    position: fixed;
    top: 0;
    right: 0;
    bottom: 0;
    width: 300px;
    background: white;
    box-shadow: -10px 0 30px rgba(0, 0, 0, 0.1);
    padding: $spacing-3xl $spacing-xl;
    flex-direction: column;
    justify-content: center;
    transform: translateX(100%);
    transition: transform 0.4s ease;
    z-index: 1000;
    
    &.is-active {
      transform: translateX(0);
    }
  }
}

.nav-list {
  display: flex;
  list-style: none;
  margin: 0;
  padding: 0;
  
  @media (max-width: $breakpoint-lg) {
    flex-direction: column;
    align-items: center;
    margin-bottom: $spacing-xl;
  }
}

.nav-item {
  margin: 0 $spacing-md;
  
  @media (max-width: $breakpoint-lg) {
    margin: $spacing-sm 0;
  }
}

.nav-link {
  position: relative;
  display: inline-block;
  color: $dark;
  text-decoration: none;
  font-weight: 500;
  padding: $spacing-xs 0;
  transition: color 0.2s ease;
  
  &::after {
    content: '';
    position: absolute;
    left: 0;
    bottom: 0;
    width: 0;
    height: 2px;
    background-color: $primary;
    transition: width 0.3s ease;
  }
  
  &:hover, &.router-link-active {
    color: $primary;
    
    &::after {
      width: 100%;
    }
  }
  
  @media (max-width: $breakpoint-lg) {
    font-size: 1.1rem;
    padding: $spacing-sm 0;
  }
}

.nav-cta {
  margin-left: $spacing-xl;
  
  @media (max-width: $breakpoint-lg) {
    margin-left: 0;
  }
}

.menu-toggle {
  display: none;
  background: none;
  border: none;
  cursor: pointer;
  padding: $spacing-xs;
  z-index: 1001;
  
  @media (max-width: $breakpoint-lg) {
    display: block;
  }
}

.menu-icon {
  width: 28px;
  height: 20px;
  position: relative;
  
  .bar {
    display: block;
    position: absolute;
    height: 3px;
    width: 100%;
    background-color: $dark;
    border-radius: 3px;
    opacity: 1;
    left: 0;
    transform: rotate(0deg);
    transition: all 0.25s ease-in-out;
    
    &:nth-child(1) {
      top: 0;
    }
    
    &:nth-child(2) {
      top: 8px;
    }
    
    &:nth-child(3) {
      top: 16px;
    }
  }
  
  &.is-active {
    .bar:nth-child(1) {
      top: 8px;
      transform: rotate(135deg);
    }
    
    .bar:nth-child(2) {
      opacity: 0;
      transform: translateX(-20px);
    }
    
    .bar:nth-child(3) {
      top: 8px;
      transform: rotate(-135deg);
    }
  }
}

// Menu background overlay
@media (max-width: $breakpoint-lg) {
  .app-header::before {
    content: '';
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: rgba(0, 0, 0, 0.5);
    backdrop-filter: blur(3px);
    z-index: 999;
    opacity: 0;
    pointer-events: none;
    transition: opacity 0.3s ease;
  }
  
  .is-active + .app-header::before {
    opacity: 1;
    pointer-events: auto;
  }
}
</style> 