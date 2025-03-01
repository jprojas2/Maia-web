<template>
  <div 
    class="ai-chat-widget" 
    ref="chatWidgetRef"
    :class="{
      'is-active': isActive,
      'is-inactive': !isActive && !isMobile,
      'is-mobile': isMobile
    }"
  >
    <!-- Mobile trigger button (visible only on mobile) -->
    <div 
      class="ai-chat-widget__mobile-trigger" 
      v-if="isMobile" 
      @click="toggleChat"
    >
      <img src="@/assets/logomaia.png" alt="Maia AI" />
    </div>

    <!-- Chat panel (visible on desktop, hidden on mobile unless active) -->
    <div 
      class="ai-chat-widget__panel"
      v-show="!isMobile || (isMobile && isActive)"
    >
      <div class="ai-chat-widget__header">
        <img src="@/assets/logomaia.png" alt="Maia AI" />
      </div>
      
      <div class="ai-chat-widget__messages">
        <div class="ai-chat-widget__message ai-chat-widget__message--ai">
          ¡Hola! Soy Maia, tu asistente virtual. ¿En qué puedo ayudarte hoy?
        </div>
      </div>
      
      <div class="ai-chat-widget__input">
        <input 
          type="text" 
          placeholder="Escribe tu mensaje..."
          v-model="userMessage"
          @keyup.enter="sendMessage"
        />
        <button @click="sendMessage">
          <i class="fas fa-paper-plane"></i>
        </button>
      </div>
    </div>

    <!-- Minimized bubble view (hidden on mobile) -->
    <div 
      class="ai-chat-widget__bubble"
      v-if="!isMobile && !isActive"
      @click="toggleChat"
    >
      <img src="@/assets/logomaia.png" alt="Maia AI" />
    </div>
  </div>
</template>

<script>
export default {
  name: 'AiChatWidget',
  
  data() {
    return {
      isActive: false,
      isMobile: false,
      userMessage: '',
      messages: [],
      inactivityTimer: null
    }
  },
  
  mounted() {
    this.checkDeviceType();
    window.addEventListener('resize', this.checkDeviceType);
    document.addEventListener('click', this.handleClickOutside);
  },
  
  beforeUnmount() {
    window.removeEventListener('resize', this.checkDeviceType);
    document.removeEventListener('click', this.handleClickOutside);
    if (this.inactivityTimer) {
      clearTimeout(this.inactivityTimer);
    }
  },
  
  methods: {
    checkDeviceType() {
      this.isMobile = window.innerWidth < 768;
    },
    
    toggleChat() {
      this.isActive = !this.isActive;
      this.resetInactivityTimer();
    },
    
    resetInactivityTimer() {
      if (this.inactivityTimer) {
        clearTimeout(this.inactivityTimer);
      }
      
      this.inactivityTimer = setTimeout(() => {
        if (!this.isMobile) {
          this.isActive = false;
        }
      }, 5000);
    },
    
    handleClickOutside(event) {
      const chatWidget = this.$refs.chatWidgetRef;
      if (chatWidget && !chatWidget.contains(event.target) && this.isActive) {
        this.isActive = false;
        // Don't completely hide the bubble, just make it inactive
      }
    },
    
    sendMessage() {
      if (!this.userMessage.trim()) return;
      
      // Add user message
      this.messages.push({
        text: this.userMessage,
        isUser: true
      });
      
      // Clear input
      this.userMessage = '';
      
      // Simulate AI response (in a real app, you would call your API here)
      setTimeout(() => {
        this.messages.push({
          text: 'Gracias por tu mensaje. Estoy procesando tu consulta.',
          isUser: false
        });
      }, 1000);
      
      this.resetInactivityTimer();
    }
  }
}
</script>

<style lang="scss" scoped>
@import '@/styles/variables.scss';

// Main container
.ai-chat-widget {
  position: fixed;
  bottom: 20px;
  right: 20px;
  z-index: 1000;
  font-family: $font-family-base;
  
  &.is-active {
    opacity: 1;
    transition: opacity 0.2s ease-in-out;
  }
  
  &.is-inactive {
    opacity: 0.2; // Maintain 20% opacity when inactive
    transition: opacity 0.2s ease-in-out;
    
    &:hover {
      opacity: 0.8; // Increase opacity on hover
    }
  }
  
  &.is-mobile {
    top: 20px;
    right: 20px;
    bottom: auto;
  }
}

// Mobile trigger button
.ai-chat-widget__mobile-trigger {
  position: fixed;
  top: 20px;
  right: 20px;
  width: 50px;
  height: 50px;
  background-color: rgba($primary, 0.1);
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  cursor: pointer;
  box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
  z-index: 1001;
  transition: all 0.3s ease;
  
  &:hover {
    transform: scale(1.05);
    background-color: rgba($primary, 0.15);
    box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
  }
  
  img {
    width: 30px;
    height: 30px;
    border-radius: 0;
  }
}

// Main chat panel
.ai-chat-widget__panel {
  width: 350px;
  height: 450px;
  background-color: rgba(255, 255, 255, 0.95);
  border-radius: 20px;
  overflow: hidden;
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.12);
  display: flex;
  flex-direction: column;
  transition: all 0.3s ease;
  backdrop-filter: blur(10px);
  border: 1px solid rgba(0, 0, 0, 0.03);
  
  @media (max-width: $breakpoint-md) {
    position: fixed;
    top: 0;
    right: 0;
    width: 100%;
    height: 100%;
    border-radius: 0;
    z-index: 1002;
  }
}

// Chat header
.ai-chat-widget__header {
  padding: 15px;
  display: flex;
  align-items: center;
  background-color: $primary;
  color: white;
  border-bottom: 1px solid rgba(0, 0, 0, 0.05);
  
  img {
    width: 30px;
    height: 30px;
    border-radius: 0;
    margin-right: 10px;
  }
}

// Messages container
.ai-chat-widget__messages {
  flex: 1;
  padding: 15px;
  overflow-y: auto;
  background-color: rgba(255, 255, 255, 0.7);
  
  &::-webkit-scrollbar {
    width: 5px;
  }
  
  &::-webkit-scrollbar-track {
    background: rgba(0, 0, 0, 0.05);
    border-radius: 5px;
  }
  
  &::-webkit-scrollbar-thumb {
    background-color: rgba($primary, 0.3);
    border-radius: 5px;
  }
}

// Individual message
.ai-chat-widget__message {
  margin-bottom: 15px;
  padding: 12px 15px;
  border-radius: 18px;
  max-width: 80%;
  position: relative;
  line-height: 1.5;
  font-size: 0.95rem;
  
  &--user {
    background-color: rgba($primary, 0.1);
    margin-left: auto;
    border-bottom-right-radius: 5px;
    color: $dark;
  }
  
  &--ai {
    background-color: rgba($gray-200, 0.3);
    margin-right: auto;
    border-bottom-left-radius: 5px;
    color: $dark;
  }
}

// Input area
.ai-chat-widget__input {
  padding: 10px 15px;
  display: flex;
  align-items: center;
  background-color: white;
  border-top: 1px solid rgba(0, 0, 0, 0.05);
  
  input {
    flex: 1;
    border: none;
    padding: 12px;
    border-radius: 30px;
    background-color: rgba($gray-100, 0.3);
    transition: all 0.3s ease;
    font-size: 0.9rem;
    
    &:focus {
      outline: none;
      background-color: rgba($gray-100, 0.5);
      box-shadow: 0 0 0 2px rgba($primary, 0.1);
    }
  }
  
  button {
    width: 40px;
    height: 40px;
    border-radius: 50%;
    border: none;
    background-color: $primary;
    color: white;
    margin-left: 10px;
    cursor: pointer;
    display: flex;
    align-items: center;
    justify-content: center;
    transition: all 0.3s ease;
    
    &:hover {
      background-color: darken($primary, 5%);
      transform: scale(1.05);
    }
    
    i {
      font-size: 0.85rem;
    }
  }
}

// Bubble (minimized state)
.ai-chat-widget__bubble {
  position: fixed;
  top: 50%;
  right: 20px;
  transform: translateY(-50%);
  width: 60px;
  height: 60px;
  border-radius: 50%;
  background-color: transparent;
  display: flex;
  align-items: center;
  justify-content: center;
  cursor: pointer;
  box-shadow: 0 5px 20px rgba(0, 0, 0, 0.12);
  transition: all 0.3s ease;
  overflow: hidden;
  
  &::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background: rgba(255, 255, 255, 0.6);
    backdrop-filter: blur(5px);
    border-radius: 50%;
    z-index: -1;
  }
  
  &:hover {
    transform: translateY(-50%) scale(1.05);
    box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
    
    &::before {
      background: rgba(255, 255, 255, 0.75);
    }
  }
  
  img {
    width: 40px;
    height: 40px;
    border-radius: 0;
    object-fit: contain;
  }
}
</style> 