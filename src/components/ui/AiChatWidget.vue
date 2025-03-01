<template>
  <div 
    class="ai-chat-widget" 
    :class="{ 
      'open': isOpen, 
      'mobile': isMobile,
      'minimized': isMinimized && !isOpen
    }"
  >
    <!-- Chat panel -->
    <div v-if="isOpen" class="chat-panel">
      <div class="chat-header">
        <div class="header-title">
          <h3>Maia</h3>
        </div>
        
        <div class="header-actions">
          <button 
            @click="toggleMinimize"
            aria-label="Minimize"
          >
            <i class="fas" :class="isMinimized ? 'fa-expand' : 'fa-minus'"></i>
          </button>
          <button 
            class="close-btn"
            @click="closeChat"
            aria-label="Close"
          >
            <i class="fas fa-times"></i>
          </button>
        </div>
      </div>
      
      <div v-if="!isMinimized" class="messages-container" ref="messagesContainer">
        <div class="message bot">
          <div class="message-content">
            <p>Hola 👋 Soy Maia, tu vendedora virtual.</p>
            <p>¿En qué puedo ayudarte hoy?</p>
          </div>
        </div>
        
        <div 
          v-for="(message, index) in messages" 
          :key="index" 
          class="message" 
          :class="{ 
            'user': message.sender === 'user',
            'bot': message.sender === 'bot'
          }"
        >
          <div class="message-content" v-html="message.text"></div>
          <div class="message-time" v-if="message.time">{{ message.time }}</div>
        </div>
        
        <div v-if="isTyping" class="typing-indicator">
          <div class="dot"></div>
          <div class="dot"></div>
          <div class="dot"></div>
        </div>
      </div>
      
      <div v-if="!isMinimized" class="input-area">
        <div class="input-field">
          <textarea 
            ref="inputField"
            v-model="userInput" 
            placeholder="Escribe tu mensaje..."
            @keydown.enter.prevent="sendMessage"
            rows="1"
          ></textarea>
          
          <button 
            class="send-btn" 
            @click="sendMessage"
            :disabled="!userInput.trim()"
            aria-label="Send message"
          >
            <i class="fas fa-paper-plane"></i>
          </button>
        </div>
      </div>
    </div>
    
    <!-- Bubble view -->
    <div v-if="!isOpen" class="bubble-container">
      <div class="bubble-text" v-if="!isMobile">
        ¿Necesitas ayuda? Chat con Maia
      </div>
      <div class="bubble" @click="openChat">
        <i class="fas fa-comment"></i>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'AiChatWidget',
  
  data() {
    return {
      isOpen: false,
      isMinimized: false,
      isMobile: false,
      userInput: '',
      messages: [],
      isTyping: false,
      lastInteraction: Date.now(),
      inactivityTimer: null,
      autoCloseTimer: null,
      suggestedResponses: [
        '¿Cómo puedo solicitar una demo?',
        '¿Cuáles son los planes disponibles?',
        '¿Cómo funciona la integración?'
      ]
    };
  },
  
  mounted() {
    this.checkDeviceType();
    window.addEventListener('resize', this.checkDeviceType);
    
    // Auto-open chat after a delay on desktop
    if (!this.isMobile) {
      setTimeout(() => {
        if (!this.isOpen && !this.hasInteracted()) {
          this.openChat();
        }
      }, 5000);
    }
    
    // Setup inactivity detection
    document.addEventListener('click', this.resetInactivityTimer);
    document.addEventListener('keypress', this.resetInactivityTimer);
    this.setupInactivityTimer();
  },
  
  beforeUnmount() {
    window.removeEventListener('resize', this.checkDeviceType);
    document.removeEventListener('click', this.resetInactivityTimer);
    document.removeEventListener('keypress', this.resetInactivityTimer);
    clearTimeout(this.inactivityTimer);
    clearTimeout(this.autoCloseTimer);
  },
  
  methods: {
    checkDeviceType() {
      this.isMobile = window.innerWidth < 768;
      
      // Adjust UI based on screen size change
      if (this.isMobile && this.isOpen) {
        this.isMinimized = false;
      }
    },
    
    toggleChat() {
      if (this.isOpen) {
        this.closeChat();
      } else {
        this.openChat();
      }
    },
    
    openChat() {
      this.isOpen = true;
      this.isMinimized = false;
      this.recordInteraction();
      
      // Focus input field when chat opens
      this.$nextTick(() => {
        if (this.$refs.inputField) {
          this.$refs.inputField.focus();
        }
      });
      
      // Clear auto-close timer when manually opened
      clearTimeout(this.autoCloseTimer);
    },
    
    closeChat() {
      this.isOpen = false;
      this.recordInteraction();
    },
    
    toggleMinimize() {
      this.isMinimized = !this.isMinimized;
      this.recordInteraction();
    },
    
    sendMessage() {
      const message = this.userInput.trim();
      if (!message) return;
      
      // Add user message
      this.messages.push({
        sender: 'user',
        text: message
      });
      
      this.userInput = '';
      this.isTyping = true;
      this.recordInteraction();
      
      // Scroll to bottom
      this.$nextTick(() => {
        this.scrollToBottom();
      });
      
      // Simulate bot response
      setTimeout(() => {
        this.isTyping = false;
        
        let botResponse;
        if (message.toLowerCase().includes('demo')) {
          botResponse = '¡Claro! Puedes solicitar una demo gratuita completando el formulario en nuestra página de <a href="#demo">Demo</a> o contáctanos directamente por email.';
        } else if (message.toLowerCase().includes('precio') || message.toLowerCase().includes('plan')) {
          botResponse = 'Ofrecemos diferentes planes para adaptarnos a tus necesidades. Puedes ver todos nuestros planes y precios en la sección de <a href="#pricing">Precios</a>.';
        } else if (message.toLowerCase().includes('vendedora') || message.toLowerCase().includes('funciona')) {
          botResponse = 'Maia es una vendedora virtual que se integra con tus recorridos inmobiliarios y que analiza el comportamiento de los visitantes para proporcionar respuestas personalizadas en tiempo real.';
        } else {
          botResponse = 'Gracias por tu mensaje. ¿Te gustaría agendar una llamada con uno de nuestros especialistas para obtener más información?';
        }
        
        this.messages.push({
          sender: 'bot',
          text: botResponse
        });
        
        // Scroll to bottom after bot responds
        this.$nextTick(() => {
          this.scrollToBottom();
        });
      }, 1500);
    },
    
    scrollToBottom() {
      if (this.$refs.messagesContainer) {
        this.$refs.messagesContainer.scrollTop = this.$refs.messagesContainer.scrollHeight;
      }
    },
    
    hasInteracted() {
      return localStorage.getItem('chatInteraction') === 'true';
    },
    
    recordInteraction() {
      localStorage.setItem('chatInteraction', 'true');
      this.lastInteraction = Date.now();
    },
    
    resetInactivityTimer() {
      this.lastInteraction = Date.now();
      clearTimeout(this.autoCloseTimer);
      
      if (this.isOpen) {
        this.setupAutoCloseTimer();
      }
    },
    
    setupInactivityTimer() {
      this.inactivityTimer = setInterval(() => {
        const inactiveTime = Date.now() - this.lastInteraction;
        
        // If user has been inactive for 3 minutes and chat is closed
        if (inactiveTime > 3 * 60 * 1000 && !this.isOpen && !this.hasInteracted()) {
          this.openChat(); // Show chat
          this.setupAutoCloseTimer(); // Set up auto-close timer
        }
      }, 60 * 1000); // Check every minute
    },
    
    setupAutoCloseTimer() {
      // Auto close after 1 minute of inactivity if no messages exchanged
      this.autoCloseTimer = setTimeout(() => {
        if (this.messages.length === 0) {
          this.closeChat();
        }
      }, 60 * 1000);
    }
  }
};
</script>

<style lang="scss" scoped>
@import '@/styles/variables.scss';

// Define variables
$light-blue-bg: #f0f8ff;
$primary-gradient: linear-gradient(135deg, $primary 0%, lighten($primary, 15%) 100%);

.ai-chat-widget {
  position: fixed;
  right: 20px;
  top: 50%;
  transform: translateY(-50%);
  z-index: $z-index-modal;
  font-family: $font-family-base;
  
  &.open {
    width: 360px;
    max-width: 95vw;
  }
  
  &.mobile {
    bottom: 0;
    right: 0;
    left: 0;
    width: 100%;
    max-width: 100%;
    
    .chat-panel {
      border-radius: 0;
      border-top-left-radius: $border-radius-lg;
      border-top-right-radius: $border-radius-lg;
      height: 80vh;
    }
  }
  
  .chat-panel {
    background-color: rgba(255, 255, 255, 0.8);
    backdrop-filter: blur(10px);
    border-radius: $border-radius-lg;
    box-shadow: $shadow-lg;
    display: flex;
    flex-direction: column;
    height: 500px;
    max-height: 70vh;
    overflow: hidden;
    transition: $transition-base;
    
    .chat-header {
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: $spacing-md $spacing-lg;
      border-bottom: 1px solid $gray-200;
      
      .header-title {
        display: flex;
        align-items: center;
        
        h3 {
          font-size: 1.2rem;
          font-weight: $font-weight-semibold;
          color: $dark;
          margin: 0;
        }
      }
      
      .header-actions {
        display: flex;
        gap: $spacing-xs;
        
        button {
          background: none;
          border: none;
          color: $gray-600;
          cursor: pointer;
          font-size: 1.1rem;
          padding: $spacing-xs;
          transition: $transition-fast;
          
          &:hover {
            color: $dark;
          }
          
          &.close-btn:hover {
            color: #e74c3c;
          }
        }
      }
    }
    
    .messages-container {
      flex: 1;
      overflow-y: auto;
      padding: $spacing-md $spacing-lg;
      
      .message {
        margin-bottom: $spacing-md;
        max-width: 85%;
        
        &.user {
          margin-left: auto;
          
          .message-content {
            background-color: $primary;
            color: white;
            border-radius: $border-radius $border-radius $border-radius-sm $border-radius;
          }
        }
        
        &.bot {
          margin-right: auto;
          
          .message-content {
            background-color: $gray-200;
            color: $dark;
            border-radius: $border-radius $border-radius $border-radius $border-radius-sm;
          }
        }
        
        .message-content {
          padding: $spacing-sm $spacing-md;
          font-size: 0.95rem;
          line-height: 1.5;
        }
        
        .message-time {
          font-size: 0.75rem;
          color: $gray-500;
          margin-top: $spacing-xs;
          text-align: right;
        }
      }
      
      .typing-indicator {
        display: flex;
        gap: 4px;
        margin-bottom: $spacing-md;
        
        .dot {
          width: 8px;
          height: 8px;
          background-color: $gray-400;
          border-radius: 50%;
          animation: typing-animation 1.4s infinite ease-in-out;
          
          &:nth-child(1) {
            animation-delay: 0s;
          }
          
          &:nth-child(2) {
            animation-delay: 0.2s;
          }
          
          &:nth-child(3) {
            animation-delay: 0.4s;
          }
        }
      }
    }
    
    .input-area {
      border-top: 1px solid $gray-200;
      padding: $spacing-md;
      
      .input-field {
        position: relative;
        
        textarea {
          width: 100%;
          border: 1px solid $gray-300;
          border-radius: $border-radius;
          padding: $spacing-sm $spacing-md;
          padding-right: 50px;
          font-family: $font-family-base;
          font-size: 0.95rem;
          resize: none;
          height: 60px;
          max-height: 120px;
          background-color: white;
          
          &:focus {
            outline: none;
            border-color: $primary;
          }
        }
        
        .send-btn {
          position: absolute;
          right: $spacing-sm;
          bottom: $spacing-sm;
          background-color: $primary;
          color: white;
          border: none;
          border-radius: 50%;
          width: 32px;
          height: 32px;
          display: flex;
          align-items: center;
          justify-content: center;
          cursor: pointer;
          transition: $transition-fast;
          
          &:hover {
            background-color: $primary-dark;
          }
          
          &:disabled {
            background-color: $gray-400;
            cursor: not-allowed;
          }
          
          i {
            font-size: 0.9rem;
          }
        }
      }
    }
  }
  
  .bubble-container {
    position: relative;
    display: flex;
    flex-direction: column;
    align-items: flex-end;
    
    .bubble {
      width: 60px;
      height: 60px;
      background-color: rgba(255, 255, 255, 0.2);
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      cursor: pointer;
      box-shadow: $shadow;
      transition: $transition-base;
      color: $primary;
      font-size: 1.5rem;
      margin-top: $spacing-md;
      opacity: 0.2;
      
      &:hover {
        background-color: rgba(255, 255, 255, 0.8);
        opacity: 1;
      }
    }
    
    .bubble-text {
      background-color: rgba(255, 255, 255, 0.8);
      padding: $spacing-sm $spacing-md;
      border-radius: $border-radius;
      font-size: 0.9rem;
      margin-bottom: $spacing-sm;
      box-shadow: $shadow-sm;
      color: $dark;
      max-width: 200px;
      text-align: center;
      opacity: 0.2;
      
      &:hover {
        opacity: 1;
      }
    }
  }
}

@keyframes typing-animation {
  0%, 60%, 100% { transform: translateY(0); }
  30% { transform: translateY(-5px); }
}

// Make chat window fully visible when interacting
.ai-chat-widget:hover,
.ai-chat-widget:focus-within,
.ai-chat-widget.open {
  .bubble,
  .bubble-text {
    opacity: 1;
  }
}

// Mobile trigger button
.chat-trigger {
  border: none;
  outline: none;
  cursor: pointer;
  transition: all 0.3s ease;
  
  &--mobile {
    display: flex;
    align-items: center;
    padding: 10px 15px;
    margin: 0 auto;
    background: $primary-gradient;
    color: white;
    border-radius: 30px;
    box-shadow: 0 4px 10px rgba($primary, 0.3);
    
    .chat-trigger__icon {
      font-size: 24px;
      margin-right: 10px;
    }
    
    .chat-trigger__text {
      font-weight: 500;
    }
  }
}

// Chat panel (main widget)
.chat-panel {
  width: 360px;
  max-width: 100%;
  height: 500px;
  max-height: 80vh;
  border-radius: 15px;
  display: flex;
  flex-direction: column;
  overflow: hidden;
  background-color: rgba(255, 255, 255, 0.9);
  box-shadow: 0 12px 30px rgba(0, 0, 0, 0.1);
  border: 1px solid rgba(0, 0, 0, 0.1);
  
  .is-mobile & {
    border-radius: 0;
  }
  
  .is-minimized & {
    height: auto;
  }
}

// Chat header
.chat-header {
  padding: 15px 20px;
  background-color: rgba(255, 255, 255, 0.95);
  display: flex;
  align-items: center;
  justify-content: space-between;
  border-bottom: 1px solid rgba(0, 0, 0, 0.05);
  
  &__title {
    display: flex;
    align-items: center;
    
    .title-text {
      font-size: 18px;
      font-weight: 600;
      color: $dark;
    }
  }
  
  &__actions {
    display: flex;
    gap: 10px;
  }
}

.action-button {
  width: 32px;
  height: 32px;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  background: transparent;
  border: none;
  cursor: pointer;
  color: rgba($dark, 0.6);
  transition: all 0.2s ease;
  
  &:hover {
    background-color: rgba(0, 0, 0, 0.05);
    color: $dark;
  }
}

// Chat body (messages area)
.chat-body {
  flex: 1;
  display: flex;
  flex-direction: column;
  background-color: rgba(255, 255, 255, 0.8);
}

.messages {
  flex: 1;
  padding: 20px;
  overflow-y: auto;
  display: flex;
  flex-direction: column;
  gap: 15px;
}

.message {
  max-width: 80%;
  
  &--user {
    align-self: flex-end;
    
    .message__content {
      background-color: $primary;
      color: white;
      border-radius: 18px 18px 4px 18px;
    }
  }
  
  &--bot {
    align-self: flex-start;
    
    .message__content {
      background-color: rgba(0, 0, 0, 0.05);
      color: $dark;
      border-radius: 18px 18px 18px 4px;
      
      a {
        color: $primary;
        text-decoration: none;
        font-weight: 500;
        
        &:hover {
          text-decoration: underline;
        }
      }
    }
  }
  
  &__content {
    padding: 12px 16px;
    font-size: 14px;
    line-height: 1.5;
    
    p {
      margin: 0 0 8px 0;
      
      &:last-child {
        margin-bottom: 0;
      }
    }
  }
}

// Typing indicator
.typing-indicator {
  display: flex;
  align-items: center;
  justify-content: flex-start;
  padding: 12px 16px;
  
  span {
    height: 8px;
    width: 8px;
    float: left;
    margin: 0 1px;
    background-color: rgba($dark, 0.3);
    display: block;
    border-radius: 50%;
    opacity: 0.4;
    
    &:nth-child(1) {
      animation: typing 1s infinite;
    }
    
    &:nth-child(2) {
      animation: typing 1s infinite 0.2s;
    }
    
    &:nth-child(3) {
      animation: typing 1s infinite 0.4s;
    }
  }
}

@keyframes typing {
  0% { transform: translateY(0px); }
  33% { transform: translateY(-5px); }
  66% { transform: translateY(0px); }
}

// Input area
.chat-input {
  display: flex;
  align-items: center;
  padding: 10px 15px;
  background-color: rgba(255, 255, 255, 0.95);
  border-top: 1px solid rgba(0, 0, 0, 0.05);
}

.input-field {
  flex: 1;
  border: 1px solid rgba(0, 0, 0, 0.1);
  padding: 12px 15px;
  border-radius: 20px;
  font-family: $font-family-base;
  font-size: 14px;
  resize: none;
  outline: none;
  max-height: 100px;
  background-color: white;
  
  &:focus {
    border-color: $primary;
  }
}

.send-button {
  width: 40px;
  height: 40px;
  border-radius: 50%;
  background-color: $primary;
  color: white;
  border: none;
  margin-left: 10px;
  display: flex;
  align-items: center;
  justify-content: center;
  cursor: pointer;
  transition: all 0.2s ease;
  
  &:hover {
    background-color: darken($primary, 5%);
    transform: scale(1.05);
  }
  
  &:disabled {
    background-color: rgba(0, 0, 0, 0.1);
    color: rgba(0, 0, 0, 0.3);
    cursor: not-allowed;
    transform: none;
  }
}

// Floating bubble for desktop
.chat-bubble {
  position: fixed;
  bottom: 20px;
  right: 20px;
  padding: 12px 20px;
  background: transparent;
  border: 1px solid rgba(0, 0, 0, 0.1);
  border-radius: 50px;
  cursor: pointer;
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.08);
  display: flex;
  align-items: center;
  gap: 10px;
  transition: all 0.3s ease;
  
  &:hover {
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.12);
    transform: translateY(-2px);
  }
  
  &__content {
    color: $dark;
    font-size: 14px;
    font-weight: 500;
  }
}
</style> 