<template>
  <div 
    class="ai-chat-widget" 
    :class="{ 'mobile': isMobile, 'active': isActive }"
    @focusin="handleWidgetFocus"
    @focusout="handleWidgetBlur"
  >
    <!-- Chat panel - Always visible with white transparent background -->
    <div class="chat-panel">
      <div class="chat-header">
        <div class="header-title">
          <h3>Maia</h3>
        </div>
      </div>
      
      <div class="messages-container" ref="messagesContainer">
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
      
      <div class="chat-input">
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
import { ref, onMounted, nextTick } from 'vue';

// Chat state
const isOpen = ref(false);
const isMobile = ref(false);
const inputMessage = ref('');
const messages = ref([]);
const isTyping = ref(false);
const messagesContainer = ref(null);
const inputField = ref(null);
const isActive = ref(false); // Track if the widget is being interacted with

// Toggle chat panel
const toggleChat = () => {
  isOpen.value = !isOpen.value;
  
  if (isOpen.value) {
    nextTick(() => {
      scrollToBottom();
      inputField.value?.focus();
    });
  }
};

// Check if device is mobile
const checkMobile = () => {
  isMobile.value = window.innerWidth < 768;
};

// Send message
const sendMessage = () => {
  if (!inputMessage.value.trim() || isTyping.value) return;
  
  // Add user message
  messages.value.push({
    text: inputMessage.value,
    sender: 'user',
    time: new Date().toLocaleTimeString([], {hour: '2-digit', minute:'2-digit'})
  });
  
  // Clear input
  const userMessage = inputMessage.value;
  inputMessage.value = '';
  
  // Auto resize textarea
  adjustTextareaHeight();
  
  // Scroll to bottom
  nextTick(() => {
    scrollToBottom();
  });
  
  // Show typing indicator
  isTyping.value = true;
  
  // Simulate bot response (in a real app, this would call an API)
  setTimeout(() => {
    isTyping.value = false;
    // Demo responses
    let botResponse;
    if (userMessage.toLowerCase().includes('precio') || userMessage.toLowerCase().includes('costo') || userMessage.toLowerCase().includes('tarifa')) {
      botResponse = 'Tenemos varios planes disponibles desde $40/mes. ¿Te gustaría conocer más detalles sobre nuestros planes y precios?';
    } else if (userMessage.toLowerCase().includes('demo') || userMessage.toLowerCase().includes('prueba') || userMessage.toLowerCase().includes('probar')) {
      botResponse = 'Con gusto puedo ayudarte a programar una demostración personalizada. ¿Prefieres una demostración virtual o te gustaría que un agente te contacte directamente?';
    } else if (userMessage.toLowerCase().includes('inmobiliaria') || userMessage.toLowerCase().includes('propiedad') || userMessage.toLowerCase().includes('casa')) {
      botResponse = 'Maia ayuda a inmobiliarias a automatizar la atención de clientes para propiedades. ¿Tienes alguna propiedad específica de la que quieras hablar?';
    } else {
      botResponse = 'Gracias por tu mensaje. ¿Hay algo más específico en lo que pueda ayudarte sobre nuestro servicio de asistencia virtual para inmobiliarias?';
    }
    
    messages.value.push({
      text: botResponse,
      sender: 'bot',
      time: new Date().toLocaleTimeString([], {hour: '2-digit', minute:'2-digit'})
    });
    
    // Scroll to bottom after new message
    nextTick(() => {
      scrollToBottom();
    });
  }, 1500);
};

// Scroll to bottom of messages
const scrollToBottom = () => {
  if (messagesContainer.value) {
    messagesContainer.value.scrollTop = messagesContainer.value.scrollHeight;
  }
};

// Handle keydown for Enter key
const handleKeydown = (e) => {
  if (e.key === 'Enter' && !e.shiftKey) {
    e.preventDefault();
    sendMessage();
  }
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

// Handle widget interaction
const handleWidgetFocus = () => {
  isActive.value = true;
};

const handleWidgetBlur = (e) => {
  // Only blur if the new focus element is outside the chat widget
  if (!e.currentTarget.contains(e.relatedTarget)) {
    isActive.value = false;
  }
};

onMounted(() => {
  checkMobile();
  window.addEventListener('resize', checkMobile);
  
  // Clean up
  return () => {
    window.removeEventListener('resize', checkMobile);
  };
});

// Format message with links and emojis
const formatMessage = (text) => {
  // Convert URLs to clickable links
  const linkedText = text.replace(
    /(https?:\/\/[^\s]+)/g, 
    '<a href="$1" target="_blank">$1</a>'
  );
  
  return linkedText;
};
</script>

<style lang="scss" scoped>
@import "@/styles/variables.scss";

// Define variables
$primary-gradient: linear-gradient(135deg, $primary 0%, lighten($primary, 15%) 100%);

.ai-chat-widget {
  position: fixed;
  bottom: 30px;
  right: 30px;
  width: 350px;
  max-width: calc(100vw - 40px);
  max-height: 600px;
  z-index: 9999;
  font-family: $font-family-base;
  box-shadow: $shadow-lg;
  border-radius: $border-radius-lg;
  overflow: hidden;
  background-color: rgba(255, 255, 255, 0.3);
  border: 1px solid rgba($primary, 0.2);
  transition: all 0.3s ease;
  display: flex;
  flex-direction: column;
  
  &.mobile {
    width: calc(100% - 40px);
    max-height: 70vh;
  }
  
  &.active {
    background-color: rgba(255, 255, 255, 0.7);
    
    .chat-panel,
    .messages-container, 
    .message-content {
      background-color: rgba(255, 255, 255, 0.7);
    }
  }
}

.chat-panel {
  display: flex;
  flex-direction: column;
  height: 500px;
  max-height: 70vh;
  background-color: rgba(255, 255, 255, 0.3);
  border-radius: $border-radius-lg;
  overflow: hidden;
}

.chat-header {
  background: $primary-gradient;
  color: white;
  padding: $spacing-md;
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.header-title {
  display: flex;
  align-items: center;
  
  h3 {
    font-size: 1.2rem;
    font-weight: 500;
    margin: 0;
  }
}

.messages-container {
  flex: 1;
  overflow-y: auto;
  padding: $spacing-md;
  background-color: rgba(255, 255, 255, 0.3);
  display: flex;
  flex-direction: column;
  gap: $spacing-sm;
  scroll-behavior: smooth;
}

.message {
  display: flex;
  margin-bottom: $spacing-sm;
  max-width: 85%;
  
  &.user {
    margin-left: auto;
    
    .message-content {
      background-color: rgba(255, 255, 255, 0.3);
      color: #000000;
      border-radius: $border-radius $border-radius 0 $border-radius;
    }
  }
  
  &.bot {
    margin-right: auto;
    
    .message-content {
      background-color: rgba(255, 255, 255, 0.3);
      color: #000000;
      border-radius: 0 $border-radius $border-radius $border-radius;
      box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1);
    }
  }
}

.message-content {
  padding: $spacing-md;
  border-radius: $border-radius;
  font-size: 0.95rem;
  line-height: 1.4;
  
  p {
    margin: 0 0 $spacing-sm;
    
    &:last-child {
      margin-bottom: 0;
    }
  }
  
  a {
    color: inherit;
    text-decoration: underline;
    
    &:hover {
      opacity: 0.9;
    }
  }
}

.typing-indicator {
  display: flex;
  align-items: center;
  gap: 4px;
  padding: $spacing-md;
  
  span {
    display: block;
    width: 8px;
    height: 8px;
    border-radius: 50%;
    background-color: $gray-400;
    animation: typingBounce 1.5s infinite ease-in-out;
    
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

@keyframes typingBounce {
  0%, 60%, 100% {
    transform: translateY(0);
  }
  30% {
    transform: translateY(-5px);
  }
}

.chat-input {
  display: flex;
  padding: $spacing-sm;
  background-color: white;
  border-top: 1px solid $gray-200;
}

.input-field {
  flex: 1;
  padding: $spacing-sm $spacing-md;
  border: 1px solid $gray-300;
  border-radius: $border-radius;
  resize: none;
  font-family: inherit;
  font-size: 0.95rem;
  outline: none;
  
  &:focus {
    border-color: $primary;
  }
  
  &::placeholder {
    color: $gray-500;
  }
}

.send-button {
  background-color: $primary;
  color: white;
  border: none;
  width: 36px;
  height: 36px;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  margin-left: $spacing-sm;
  cursor: pointer;
  transition: $transition-base;
  
  &:hover {
    background-color: darken($primary, 5%);
  }
  
  &:disabled {
    background-color: $gray-400;
    cursor: not-allowed;
  }
}
</style> 