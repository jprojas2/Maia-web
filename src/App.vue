<template>
  <div class="app-wrapper">
    <div class="background-grid">
      <div class="bg-section bg-white"></div>
      <div class="bg-section bg-purple"></div>
      <div class="bg-section bg-dark"></div>
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

.background-grid {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  display: grid;
  grid-template-columns: 1fr 1fr 1fr;
  z-index: -1;
}

.bg-section {
  height: 100%;
}

.bg-white {
  background-color: white;
}

.bg-purple {
  background-color: rgba($primary, 0.05);
  background-image: radial-gradient(rgba($primary, 0.1) 1px, transparent 1px);
  background-size: 20px 20px;
}

.bg-dark {
  background-color: rgba($dark, 0.02);
  background-image: radial-gradient(rgba($dark, 0.05) 1px, transparent 1px);
  background-size: 20px 20px;
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