<template>
  <header class="app-header" :class="{ 'scrolled': isScrolled }">
    <div class="container">
      <div class="header-content">
        <router-link to="/" class="logo">
          <div class="logo-container">
            <img src="@/assets/logomaia.png" alt="Maia Logo" class="logo-image">
            <span class="logo-text">Maia</span>
          </div>
        </router-link>
        
        <nav class="desktop-nav" :class="{ 'active': isMenuOpen }">
          <ul>
            <li><router-link to="/#demo">Demo</router-link></li>
            <li><router-link to="/#features">Características</router-link></li>
            <li><router-link to="/pricing">Precios</router-link></li>
            <li><router-link to="/#team">Equipo</router-link></li>
            <li><router-link to="/contact">Contacto</router-link></li>
          </ul>
        </nav>
        
        <div class="header-actions">
          <button class="mobile-menu-toggle" @click="toggleMenu" aria-label="Toggle menu">
            <i class="fas" :class="isMenuOpen ? 'fa-times' : 'fa-bars'"></i>
          </button>
          <router-link to="/pricing" class="btn btn--gradient">Comenzar</router-link>
        </div>
      </div>
    </div>
  </header>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from 'vue';

const isMenuOpen = ref(false);
const isScrolled = ref(false);

const toggleMenu = () => {
  isMenuOpen.value = !isMenuOpen.value;
  document.body.classList.toggle('menu-open', isMenuOpen.value);
};

const checkScroll = () => {
  isScrolled.value = window.scrollY > 50;
};

onMounted(() => {
  window.addEventListener('scroll', checkScroll);
  checkScroll(); // Check initial scroll position
});

onUnmounted(() => {
  window.removeEventListener('scroll', checkScroll);
});
</script>

<style lang="scss" scoped>
.app-header {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  z-index: $z-index-fixed;
  padding: $spacing-md 0;
  transition: $transition-base;
  background-color: transparent;
  
  &.scrolled {
    background-color: rgba(255, 255, 255, 0.95);
    backdrop-filter: blur(10px);
    box-shadow: $shadow-sm;
    padding: $spacing-sm 0;
  }
  
  .header-content {
    display: flex;
    align-items: center;
    justify-content: space-between;
    position: relative;
  }
  
  .logo {
    display: flex;
    align-items: center;
    text-decoration: none;
    color: $dark;
    
    .logo-container {
      display: flex;
      align-items: center;
      
      .logo-image {
        height: 40px;
        margin-right: $spacing-sm;
      }
      
      .logo-text {
        font-size: 1.5rem;
        font-weight: $font-weight-bold;
      }
    }
  }
  
  .desktop-nav {
    ul {
      display: flex;
      list-style: none;
      margin: 0;
      padding: 0;
      
      li {
        margin: 0 $spacing-md;
        
        a {
          color: $dark;
          text-decoration: none;
          font-weight: $font-weight-medium;
          position: relative;
          padding: $spacing-xs 0;
          
          &::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 0;
            height: 2px;
            background: $gradient-1;
            transition: $transition-base;
          }
          
          &:hover, &.router-link-active {
            color: $primary;
            
            &::after {
              width: 100%;
            }
          }
        }
      }
    }
  }
  
  .header-actions {
    display: flex;
    align-items: center;
    
    .mobile-menu-toggle {
      display: none;
      background: none;
      border: none;
      color: $dark;
      font-size: 1.5rem;
      cursor: pointer;
      margin-right: $spacing-md;
    }
  }
  
  @media (max-width: $breakpoint-md) {
    .desktop-nav {
      position: fixed;
      top: 70px;
      left: 0;
      width: 100%;
      background-color: white;
      padding: $spacing-lg 0;
      box-shadow: $shadow;
      transform: translateY(-100%);
      opacity: 0;
      visibility: hidden;
      transition: $transition-base;
      
      &.active {
        transform: translateY(0);
        opacity: 1;
        visibility: visible;
      }
      
      ul {
        flex-direction: column;
        align-items: center;
        
        li {
          margin: $spacing-sm 0;
          
          a {
            font-size: 1.2rem;
          }
        }
      }
    }
    
    .header-actions {
      .mobile-menu-toggle {
        display: block;
      }
    }
  }
}
</style> 