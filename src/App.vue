<template>
  <div class="app-wrapper">
    <div class="background-cowhide">
      <!-- Cow hide pattern is created with pseudo-elements in CSS -->
    </div>
    <AppHeader />
    <main>
      <router-view v-slot="{ Component }">
        <transition name="fade" mode="out-in">
          <component :is="Component" />
        </transition>
      </router-view>
    </main>
    <AppFooter />
    <AiChatWidget />
  </div>
</template>

<script setup>
import { onMounted, onUnmounted } from 'vue'
import AppHeader from '@/components/layout/AppHeader.vue'
import AppFooter from '@/components/layout/AppFooter.vue'
import AiChatWidget from '@/components/ui/AiChatWidget.vue'

// Scroll behavior
const handleScroll = () => {
  const header = document.querySelector('.app-header')
  if (window.scrollY > 50) {
    header?.classList.add('scrolled')
  } else {
    header?.classList.remove('scrolled')
  }
}

onMounted(() => {
  window.addEventListener('scroll', handleScroll)
})

onUnmounted(() => {
  window.removeEventListener('scroll', handleScroll)
})
</script>

<style lang="scss">
@import '@/styles/main.scss';
@import '@/styles/variables.scss';

.app-wrapper {
  display: flex;
  flex-direction: column;
  min-height: 100vh;
  width: 100vw;
  overflow-x: hidden;
  position: relative;
}

.background-cowhide {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: -1;
  background-color: white;
  overflow: hidden;
  
  // Create cow hide pattern with pseudo-elements
  &::before, &::after {
    content: "";
    position: absolute;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    pointer-events: none;
  }
  
  // Purple spots
  &::before {
    background-image: 
      radial-gradient(ellipse at 10% 20%, rgba($primary, 0.35) 0%, rgba($primary, 0) 15%),
      radial-gradient(ellipse at 30% 70%, rgba($primary, 0.3) 0%, rgba($primary, 0) 18%),
      radial-gradient(ellipse at 50% 40%, rgba($primary, 0.25) 0%, rgba($primary, 0) 20%),
      radial-gradient(ellipse at 70% 90%, rgba($primary, 0.35) 0%, rgba($primary, 0) 14%),
      radial-gradient(ellipse at 90% 30%, rgba($primary, 0.3) 0%, rgba($primary, 0) 16%),
      radial-gradient(ellipse at 20% 85%, rgba($primary, 0.25) 0%, rgba($primary, 0) 18%),
      radial-gradient(ellipse at 75% 60%, rgba($primary, 0.35) 0%, rgba($primary, 0) 15%),
      radial-gradient(ellipse at 55% 10%, rgba($primary, 0.3) 0%, rgba($primary, 0) 16%);
  }
  
  // Black spots
  &::after {
    background-image: 
      radial-gradient(ellipse at 15% 35%, rgba($dark, 0.25) 0%, rgba($dark, 0) 14%),
      radial-gradient(ellipse at 35% 55%, rgba($dark, 0.2) 0%, rgba($dark, 0) 15%),
      radial-gradient(ellipse at 60% 25%, rgba($dark, 0.25) 0%, rgba($dark, 0) 13%),
      radial-gradient(ellipse at 80% 45%, rgba($dark, 0.2) 0%, rgba($dark, 0) 16%),
      radial-gradient(ellipse at 20% 65%, rgba($dark, 0.25) 0%, rgba($dark, 0) 15%),
      radial-gradient(ellipse at 45% 85%, rgba($dark, 0.2) 0%, rgba($dark, 0) 13%),
      radial-gradient(ellipse at 65% 70%, rgba($dark, 0.25) 0%, rgba($dark, 0) 14%),
      radial-gradient(ellipse at 90% 85%, rgba($dark, 0.2) 0%, rgba($dark, 0) 15%);
  }
}

main {
  flex: 1;
  width: 100%;
  position: relative;
  z-index: 1;
}

.fade-enter-active,
.fade-leave-active {
  transition: opacity 0.3s ease;
}

.fade-enter-from,
.fade-leave-to {
  opacity: 0;
}
</style> 