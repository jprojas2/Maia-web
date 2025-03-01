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
      <img src="@/assets/logomaia.png" alt="Maia" style="border-radius: 50%;" />
    </div>

    <!-- Chat panel (visible on desktop, hidden on mobile unless active) -->
    <div 
      class="ai-chat-widget__panel"
      v-show="!isMobile || (isMobile && isActive)"
    >
      <div class="ai-chat-widget__header">
        <img src="@/assets/logomaia.png" alt="Maia" style="border-radius: 50%;" />
        <span>Chat con Maia</span>
      </div>
      
      <div class="ai-chat-widget__messages">
        <div class="ai-chat-widget__message ai-chat-widget__message--ai">
          ¡Hola! Soy Maia, tu vendedora virtual. ¿En qué puedo ayudarte hoy?
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
      <!-- No content, will be completely transparent -->
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
  top: 50%;
  right: 20px;
  transform: translateY(-50%);
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
    transform: none;
  }
}

// Mobile trigger button
.ai-chat-widget__mobile-trigger {
  position: fixed;
  top: 20px;
  right: 20px;
  width: 50px;
  height: 50px;
  background-color: white;
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
    box-shadow: 0 6px 20px rgba(0, 0, 0, 0.15);
  }
  
  img {
    width: 30px;
    height: 30px;
  }
}

// Main chat panel
.ai-chat-widget__panel {
  width: 350px;
  height: 450px;
  background-color: rgba(255, 255, 255, 0.9);
  border-radius: 20px;
  overflow: hidden;
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.08);
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
  background-color: white;
  color: $dark;
  border-bottom: 1px solid rgba(0, 0, 0, 0.05);
  
  img {
    width: 30px;
    height: 30px;
    margin-right: 10px;
  }
  
  span {
    font-weight: 600;
  }
}

// Messages container
.ai-chat-widget__messages {
  flex: 1;
  padding: 15px;
  overflow-y: auto;
  background-color: rgba(255, 255, 255, 0.7);
}

// Individual message
.ai-chat-widget__message {
  margin-bottom: 15px;
  padding: 12px 15px;
  border-radius: 18px;
  max-width: 80%;
  word-break: break-word;
  line-height: 1.5;
  
  &--ai {
    background-color: rgba(240, 248, 255, 0.9);
    color: $dark;
    border-bottom-left-radius: 4px;
    align-self: flex-start;
  }
  
  &--user {
    background-color: rgba($primary, 0.1);
    color: $dark;
    border-bottom-right-radius: 4px;
    align-self: flex-end;
    margin-left: auto;
  }
}

// Input area
.ai-chat-widget__input {
  display: flex;
  align-items: center;
  padding: 10px 15px;
  background-color: white;
  border-top: 1px solid rgba(0, 0, 0, 0.05);
  
  input {
    flex: 1;
    border: none;
    padding: 10px 0;
    outline: none;
    background: transparent;
    font-size: 0.95rem;
    color: $dark;
    
    &::placeholder {
      color: rgba($dark, 0.5);
    }
  }
  
  button {
    width: 36px;
    height: 36px;
    border-radius: 50%;
    background-color: rgba($primary, 0.1);
    border: none;
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    transition: all 0.2s ease;
    margin-left: 10px;
    color: $primary;
    
    &:hover {
      background-color: $primary;
      color: white;
    }
    
    i {
      font-size: 0.9rem;
    }
  }
}

// Bubble view
.ai-chat-widget__bubble {
  width: 60px;
  height: 60px;
  background-color: rgba(255, 255, 255, 0);
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  cursor: pointer;
  transition: all 0.3s ease;
  
  &:hover {
    transform: scale(1.05);
  }
}
</style> 