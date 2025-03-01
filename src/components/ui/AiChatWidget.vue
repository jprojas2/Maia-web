<template>
  <div 
    class="ai-chat-widget" 
    :class="{ 
      'open': isOpen, 
      'mobile': isMobile,
      'inactive': !isHovered && !isOpen
    }"
    @mouseenter="handleMouseEnter"
    @mouseleave="handleMouseLeave"
  >
    <!-- Chat panel - Always visible with white transparent background -->
    <div class="chat-panel">
      <div class="chat-header">
        <div class="header-title">
          <h3>Maia</h3>
        </div>
        
        <div class="header-actions">
          <button 
            @click="toggleMinimize"
            aria-label="Minimize"
            v-if="isOpen"
          >
            <i class="fas" :class="isMinimized ? 'fa-expand' : 'fa-minus'"></i>
          </button>
          <button 
            class="toggle-btn"
            @click="toggleChat"
            aria-label="Toggle Chat"
          >
            <i class="fas" :class="isOpen ? 'fa-times' : 'fa-comment'"></i>
          </button>
        </div>
      </div>
      
      <div v-if="isOpen && !isMinimized" class="messages-container" ref="messagesContainer">
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
          <div class="message-content" v-html="formatMessage(message.text)"></div>
        </div>
        
        <div v-if="isTyping" class="message bot typing">
          <div class="typing-indicator">
            <span></span>
            <span></span>
            <span></span>
          </div>
        </div>
      </div>
      
      <div v-if="isOpen && !isMinimized" class="chat-input">
        <textarea 
          ref="inputField"
          v-model="inputMessage" 
          class="input-field"
          placeholder="Escribe un mensaje..."
          @keypress.enter.prevent="sendMessage"
          @input="adjustTextareaHeight"
          :disabled="isTyping"
          rows="1"
        ></textarea>
        <button 
          class="send-button" 
          @click="sendMessage"
          :disabled="!inputMessage.trim() || isTyping"
        >
          <i class="fas fa-paper-plane"></i>
        </button>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted, nextTick, computed } from 'vue';

// State
const inputMessage = ref('');
const messages = ref([]);
const isOpen = ref(false);
const isMinimized = ref(false);
const isTyping = ref(false);
const isMobile = ref(false);
const isHovered = ref(false);
const messagesContainer = ref(null);
const inputField = ref(null);

// Check if mobile device
onMounted(() => {
  checkMobile();
  window.addEventListener('resize', checkMobile);
  
  // Start with welcome message
  setTimeout(() => {
    isTyping.value = true;
    setTimeout(() => {
      isTyping.value = false;
    }, 1500);
  }, 500);
});

const checkMobile = () => {
  isMobile.value = window.innerWidth < 768;
};

// Handle mouse hover for opacity
const handleMouseEnter = () => {
  isHovered.value = true;
};

const handleMouseLeave = () => {
  isHovered.value = false;
};

// Toggle chat open/closed
const toggleChat = () => {
  isOpen.value = !isOpen.value;
  if (isOpen.value) {
    isMinimized.value = false;
    nextTick(() => {
      if (inputField.value) {
        inputField.value.focus();
      }
      scrollToBottom();
    });
  }
};

// Toggle minimize
const toggleMinimize = () => {
  isMinimized.value = !isMinimized.value;
  if (!isMinimized.value) {
    nextTick(() => {
      scrollToBottom();
    });
  }
};

// Send a message
const sendMessage = () => {
  const messageText = inputMessage.value.trim();
  if (!messageText || isTyping.value) return;
  
  // Add user message
  messages.value.push({
    text: messageText,
    sender: 'user',
    time: new Date().toLocaleTimeString([], {hour: '2-digit', minute:'2-digit'})
  });
  
  // Clear input
  inputMessage.value = '';
  
  // Auto resize textarea
  adjustTextareaHeight();
  
  // Scroll to bottom
  nextTick(() => {
    scrollToBottom();
  });
  
  // Simulate bot typing
  simulateBotResponse(messageText);
};

// Simulate bot response
const simulateBotResponse = (userMessage) => {
  // Set typing indicator
  isTyping.value = true;
  
  // Simulate typing delay based on response length
  setTimeout(() => {
    isTyping.value = false;
    
    // Generate response based on user message
    const botResponse = generateBotResponse(userMessage);
    
    // Add bot message
    messages.value.push({
      text: botResponse,
      sender: 'bot',
      time: new Date().toLocaleTimeString([], {hour: '2-digit', minute:'2-digit'})
    });
    
    // Scroll to bottom
    nextTick(() => {
      scrollToBottom();
    });
  }, Math.random() * 1000 + 1000); // Random delay between 1-2 seconds
};

// Generate a response based on user message
const generateBotResponse = (userMessage) => {
  const message = userMessage.toLowerCase();
  
  if (message.includes('hola') || message.includes('buenos días') || message.includes('buenas')) {
    return '¡Hola! 👋 ¿Cómo puedo ayudarte hoy con tu búsqueda de propiedades?';
  }
  else if (message.includes('precio') || message.includes('costo') || message.includes('planes')) {
    return 'Tenemos varios planes disponibles: <br><br>• <strong>Básico:</strong> $40/mes para 5 propiedades<br>• <strong>Profesional:</strong> $120/mes para 20 propiedades<br>• <strong>Empresarial:</strong> $200/mes para propiedades ilimitadas<br><br>¿Te gustaría conocer más detalles sobre alguno de ellos?';
  }
  else if (message.includes('demo') || message.includes('prueba')) {
    return 'Puedes probar nuestra demo interactiva en la parte superior de la página principal. Te permite experimentar cómo Maia guía a los potenciales compradores a través de recorridos virtuales de propiedades.';
  }
  else if (message.includes('funciona') || message.includes('cómo')) {
    return 'Maia utiliza inteligencia artificial para guiar a los clientes en recorridos virtuales de propiedades, destacando características según sus intereses y recopilando información valiosa sobre su comportamiento. Analiza las preferencias en tiempo real para personalizar la experiencia.';
  }
  else if (message.includes('integrar') || message.includes('implementar') || message.includes('integración')) {
    return 'La integración de Maia es muy sencilla. Solo necesitas agregar un código a tu sitio web y configurar tus propiedades en nuestro panel. No requiere conocimientos técnicos especiales y ofrecemos soporte durante todo el proceso.';
  }
  else if (message.includes('gracias')) {
    return '¡De nada! Estoy aquí para ayudarte. ¿Hay algo más que necesites saber sobre Maia?';
  }
  else {
    return 'Entiendo tu consulta. Para información más detallada, te recomendaría contactar con nuestro equipo a través de <a href="mailto:info@maiavr.cl">info@maiavr.cl</a> o programar una demostración personalizada donde podamos mostrarte cómo Maia puede adaptarse a tus necesidades específicas.';
  }
};

// Scroll messages container to bottom
const scrollToBottom = () => {
  if (messagesContainer.value) {
    messagesContainer.value.scrollTop = messagesContainer.value.scrollHeight;
  }
};

// Format message with links and emojis
const formatMessage = (text) => {
  // Convert URLs to clickable links
  const linkedText = text.replace(
    /(https?:\/\/[^\s]+)/g, 
    '<a href="$1" target="_blank">$1</a>'
  );
  
  return linkedText;
};

// Adjust textarea height based on content
const adjustTextareaHeight = () => {
  if (!inputField.value) return;
  
  // Reset height to auto
  inputField.value.style.height = 'auto';
  
  // Set to scrollHeight, but cap at 100px
  const newHeight = Math.min(inputField.value.scrollHeight, 100);
  inputField.value.style.height = `${newHeight}px`;
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
  
  &.inactive {
    opacity: 0.3;
  }
  
  &.open {
    width: 360px;
    max-width: 95vw;
    opacity: 1;
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
    background-color: rgba(255, 255, 255, 0.4);
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
      background-color: transparent;
      border-bottom: 1px solid rgba(0, 0, 0, 0.1);
      color: $dark;
      
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
          color: $dark;
          cursor: pointer;
          font-size: 1.1rem;
          padding: $spacing-xs;
          transition: $transition-fast;
          
          &:hover {
            color: darken($dark, 10%);
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
  background-color: transparent;
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
  background-color: transparent;
  display: flex;
  align-items: center;
  justify-content: space-between;
  border-bottom: 1px solid rgba(0, 0, 0, 0.1);
  
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
  background-color: transparent;
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
  background-color: transparent;
  border-top: 1px solid rgba(0, 0, 0, 0.1);
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