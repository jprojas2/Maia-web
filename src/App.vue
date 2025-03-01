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
      radial-gradient(ellipse 15vw 15vw at 15% 25%, rgba(84, 101, 255, 0.95) 0%, rgba(84, 101, 255, 0) 60%),
      radial-gradient(circle 12vw at 35% 65%, rgba(84, 101, 255, 0.97) 0%, rgba(84, 101, 255, 0) 50%),
      radial-gradient(ellipse 18vw 14vw at 55% 35%, rgba(84, 101, 255, 0.95) 0%, rgba(84, 101, 255, 0) 60%),
      radial-gradient(circle 10vw at 75% 80%, rgba(84, 101, 255, 0.97) 0%, rgba(84, 101, 255, 0) 50%),
      radial-gradient(ellipse 15vw 15vw at 90% 40%, rgba(84, 101, 255, 0.95) 0%, rgba(84, 101, 255, 0) 60%),
      radial-gradient(circle 12vw at 25% 90%, rgba(84, 101, 255, 0.97) 0%, rgba(84, 101, 255, 0) 50%);
  }
  
  // Black spots
  &::after {
    background-image: 
      radial-gradient(circle 12vw at 10% 10%, rgba(0, 0, 0, 0.97) 0%, rgba(0, 0, 0, 0) 60%),
      radial-gradient(ellipse 15vw 12vw at 30% 45%, rgba(0, 0, 0, 0.98) 0%, rgba(0, 0, 0, 0) 55%),
      radial-gradient(ellipse 10vw 12vw at 50% 70%, rgba(0, 0, 0, 0.97) 0%, rgba(0, 0, 0, 0) 60%),
      radial-gradient(circle 8vw at 70% 15%, rgba(0, 0, 0, 0.98) 0%, rgba(0, 0, 0, 0) 55%),
      radial-gradient(circle 14vw at 85% 60%, rgba(0, 0, 0, 0.97) 0%, rgba(0, 0, 0, 0) 60%),
      radial-gradient(ellipse 12vw 10vw at 15% 70%, rgba(0, 0, 0, 0.98) 0%, rgba(0, 0, 0, 0) 55%),
      radial-gradient(circle 10vw at 60% 95%, rgba(0, 0, 0, 0.97) 0%, rgba(0, 0, 0, 0) 60%);
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