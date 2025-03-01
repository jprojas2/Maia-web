<template>
  <div class="ai-chat-widget" :class="{ 'is-open': isOpen }">
    <!-- Tab with logo -->
    <div class="ai-chat-widget__tab" @click="toggleChat">
      <img src="@/assets/logomaia.png" alt="Maia AI" class="ai-chat-widget__logo">
    </div>
    
    <!-- Chat panel -->
    <div class="ai-chat-widget__panel">
      <div class="ai-chat-widget__header">
        <div class="ai-chat-widget__title">
          <img src="@/assets/logomaia.png" alt="Maia AI" class="ai-chat-widget__header-logo">
          <h3>Chat con Maia</h3>
        </div>
        <button class="ai-chat-widget__close" @click="toggleChat">
          <i class="fas fa-times"></i>
        </button>
      </div>
      
      <div class="ai-chat-widget__messages" ref="messagesContainer">
        <div 
          v-for="(message, index) in messages" 
          :key="index" 
          class="ai-chat-widget__message"
          :class="{ 'ai-message': message.sender === 'ai', 'user-message': message.sender === 'user' }"
        >
          <div class="message-content">
            <p v-html="formatMessage(message.text)"></p>
            <span class="message-time">{{ formatTime(message.timestamp) }}</span>
          </div>
        </div>
        
        <div v-if="isTyping" class="ai-chat-widget__message ai-message typing">
          <div class="typing-indicator">
            <span></span>
            <span></span>
            <span></span>
          </div>
        </div>
      </div>
      
      <div class="ai-chat-widget__suggestions" v-if="suggestions.length > 0 && !hasUserSentMessage">
        <button 
          v-for="(suggestion, index) in suggestions" 
          :key="index"
          class="suggestion-btn"
          @click="sendMessage(suggestion)"
        >
          {{ suggestion }}
        </button>
      </div>
      
      <div class="ai-chat-widget__input">
        <input 
          type="text" 
          v-model="userInput" 
          placeholder="Escribe tu mensaje..." 
          @keyup.enter="sendUserMessage"
        >
        <button class="send-btn" @click="sendUserMessage" :disabled="!userInput.trim()">
          <i class="fas fa-paper-plane"></i>
        </button>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, computed, onMounted, nextTick, watch } from 'vue';

const isOpen = ref(false);
const userInput = ref('');
const messages = ref([]);
const isTyping = ref(false);
const messagesContainer = ref(null);
const hasUserSentMessage = ref(false);

const suggestions = [
  '¿Cómo funciona Maia?',
  '¿Cuáles son los planes disponibles?',
  '¿Puedo probar una demo?',
  '¿Cómo integro Maia en mi inmobiliaria?'
];

const toggleChat = () => {
  isOpen.value = !isOpen.value;
  
  if (isOpen.value && messages.value.length === 0) {
    // Add initial message when opening for the first time
    addMessage('¡Hola! Soy Maia, tu asistente virtual para la venta inmobiliaria. ¿En qué puedo ayudarte hoy?', 'ai');
  }
};

const sendUserMessage = () => {
  if (!userInput.value.trim()) return;
  
  const message = userInput.value;
  userInput.value = '';
  
  addMessage(message, 'user');
  hasUserSentMessage.value = true;
  
  // Simulate AI typing
  isTyping.value = true;
  
  // Simulate AI response time (1-3 seconds)
  setTimeout(() => {
    isTyping.value = false;
    respondToMessage(message);
  }, 1000 + Math.random() * 2000);
};

const sendMessage = (text) => {
  addMessage(text, 'user');
  hasUserSentMessage.value = true;
  
  // Simulate AI typing
  isTyping.value = true;
  
  // Simulate AI response time (1-3 seconds)
  setTimeout(() => {
    isTyping.value = false;
    respondToMessage(text);
  }, 1000 + Math.random() * 2000);
};

const addMessage = (text, sender) => {
  messages.value.push({
    text,
    sender,
    timestamp: new Date()
  });
  
  // Scroll to bottom on next tick
  nextTick(() => {
    if (messagesContainer.value) {
      messagesContainer.value.scrollTop = messagesContainer.value.scrollHeight;
    }
  });
};

const respondToMessage = (message) => {
  const lowerMessage = message.toLowerCase();
  
  // Simple response logic based on keywords
  if (lowerMessage.includes('hola') || lowerMessage.includes('buenos días') || lowerMessage.includes('buenas tardes')) {
    addMessage('¡Hola! ¿En qué puedo ayudarte hoy?', 'ai');
  } 
  else if (lowerMessage.includes('cómo funciona') || lowerMessage.includes('como funciona')) {
    addMessage('Maia utiliza inteligencia artificial para guiar a los compradores en recorridos virtuales de propiedades. Nuestro sistema analiza las preferencias del cliente y destaca las características más relevantes para ellos, acelerando el proceso de decisión.', 'ai');
  }
  else if (lowerMessage.includes('planes') || lowerMessage.includes('precios') || lowerMessage.includes('precio')) {
    addMessage('Ofrecemos tres planes:<br><br><strong>Básico:</strong> $40/mes - 5 propiedades activas<br><strong>Profesional:</strong> $120/mes - 20 propiedades activas<br><strong>Empresarial:</strong> $200/mes - Propiedades ilimitadas<br><br>Puedes ver más detalles en nuestra <a href="/pricing">página de precios</a>.', 'ai');
  }
  else if (lowerMessage.includes('demo') || lowerMessage.includes('prueba')) {
    addMessage('¡Claro! Puedes ver una demostración de Maia en acción directamente en nuestra página principal. Simplemente haz clic en "Comenzar Demo" en la sección superior.', 'ai');
  }
  else if (lowerMessage.includes('integr') || lowerMessage.includes('implementa')) {
    addMessage('Integrar Maia en tu inmobiliaria es muy sencillo. Nuestro equipo te guiará en todo el proceso, desde la configuración inicial hasta la capacitación de tu personal. Además, ofrecemos soporte continuo para asegurar que obtengas el máximo beneficio de nuestra plataforma.', 'ai');
  }
  else if (lowerMessage.includes('contacto') || lowerMessage.includes('hablar') || lowerMessage.includes('asesor')) {
    addMessage('Por supuesto, puedes contactar con nuestro equipo a través de:<br><br>Email: <a href="mailto:info@maiavr.cl">info@maiavr.cl</a><br>O agendar una reunión con nuestro CCO Federico: <a href="https://calendar.app.google/CjKqkYmZtZNg2jFb8" target="_blank">Calendario</a>', 'ai');
  }
  else {
    addMessage('Gracias por tu mensaje. ¿Te gustaría saber más sobre cómo Maia puede ayudar a tu inmobiliaria a vender propiedades más rápido? O si prefieres, puedes contactar directamente con nuestro equipo.', 'ai');
  }
};

const formatTime = (timestamp) => {
  return new Intl.DateTimeFormat('es', {
    hour: '2-digit',
    minute: '2-digit'
  }).format(timestamp);
};

const formatMessage = (text) => {
  // Convert URLs to links
  return text.replace(
    /(https?:\/\/[^\s]+)/g, 
    '<a href="$1" target="_blank">$1</a>'
  );
};

// Auto-scroll when new messages are added
watch(messages, () => {
  nextTick(() => {
    if (messagesContainer.value) {
      messagesContainer.value.scrollTop = messagesContainer.value.scrollHeight;
    }
  });
});

onMounted(() => {
  // Check if the chat should be open by default (e.g., based on URL parameter)
  const urlParams = new URLSearchParams(window.location.search);
  if (urlParams.get('openChat') === 'true') {
    toggleChat();
  }
});
</script>

<style lang="scss" scoped>
.ai-chat-widget {
  position: fixed;
  right: 0;
  top: 50%;
  transform: translateY(-50%);
  z-index: $z-index-modal;
  display: flex;
  align-items: stretch;
  
  &__tab {
    width: 60px;
    height: 60px;
    background: $gradient-1;
    border-radius: $border-radius-pill 0 0 $border-radius-pill;
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    box-shadow: $shadow;
    transition: $transition-base;
    
    &:hover {
      transform: translateX(-5px);
    }
  }
  
  &__logo {
    width: 40px;
    height: 40px;
    object-fit: contain;
  }
  
  &__panel {
    width: 0;
    height: 600px;
    background-color: white;
    border-radius: $border-radius-lg 0 0 $border-radius-lg;
    box-shadow: $shadow-lg;
    display: flex;
    flex-direction: column;
    overflow: hidden;
    transition: width 0.3s ease;
  }
  
  &.is-open {
    .ai-chat-widget__panel {
      width: 350px;
    }
  }
  
  &__header {
    padding: $spacing-md;
    background: $gradient-1;
    color: white;
    display: flex;
    align-items: center;
    justify-content: space-between;
  }
  
  &__title {
    display: flex;
    align-items: center;
    
    h3 {
      margin: 0;
      font-weight: $font-weight-semibold;
    }
  }
  
  &__header-logo {
    width: 30px;
    height: 30px;
    margin-right: $spacing-sm;
    object-fit: contain;
  }
  
  &__close {
    background: none;
    border: none;
    color: white;
    font-size: 1.2rem;
    cursor: pointer;
    transition: $transition-base;
    
    &:hover {
      transform: scale(1.1);
    }
  }
  
  &__messages {
    flex: 1;
    padding: $spacing-md;
    overflow-y: auto;
    display: flex;
    flex-direction: column;
    gap: $spacing-sm;
  }
  
  &__message {
    max-width: 80%;
    padding: $spacing-sm $spacing-md;
    border-radius: $border-radius-lg;
    margin-bottom: $spacing-sm;
    
    &.ai-message {
      align-self: flex-start;
      background-color: $gray-100;
      border-bottom-left-radius: 0;
      
      .message-time {
        text-align: left;
      }
    }
    
    &.user-message {
      align-self: flex-end;
      background-color: $primary;
      color: white;
      border-bottom-right-radius: 0;
      
      .message-time {
        text-align: right;
        color: rgba(255, 255, 255, 0.8);
      }
    }
    
    .message-content {
      p {
        margin: 0 0 $spacing-xs;
        
        a {
          color: inherit;
          text-decoration: underline;
        }
      }
    }
    
    .message-time {
      font-size: 0.8rem;
      opacity: 0.7;
      display: block;
    }
    
    &.typing {
      padding: $spacing-sm;
      
      .typing-indicator {
        display: flex;
        align-items: center;
        gap: 4px;
        
        span {
          width: 8px;
          height: 8px;
          border-radius: 50%;
          background-color: $gray-500;
          animation: typing 1s infinite ease-in-out;
          
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
  }
  
  &__suggestions {
    padding: $spacing-md;
    display: flex;
    flex-wrap: wrap;
    gap: $spacing-sm;
    border-top: 1px solid $gray-200;
    
    .suggestion-btn {
      background-color: $gray-100;
      border: 1px solid $gray-300;
      border-radius: $border-radius-pill;
      padding: $spacing-xs $spacing-md;
      font-size: 0.9rem;
      cursor: pointer;
      transition: $transition-base;
      
      &:hover {
        background-color: $gray-200;
      }
    }
  }
  
  &__input {
    padding: $spacing-md;
    border-top: 1px solid $gray-200;
    display: flex;
    gap: $spacing-sm;
    
    input {
      flex: 1;
      padding: $spacing-sm $spacing-md;
      border: 1px solid $gray-300;
      border-radius: $border-radius-pill;
      outline: none;
      
      &:focus {
        border-color: $primary;
      }
    }
    
    .send-btn {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      background-color: $primary;
      color: white;
      border: none;
      display: flex;
      align-items: center;
      justify-content: center;
      cursor: pointer;
      transition: $transition-base;
      
      &:hover:not(:disabled) {
        background-color: $primary-dark;
        transform: scale(1.05);
      }
      
      &:disabled {
        background-color: $gray-400;
        cursor: not-allowed;
      }
    }
  }
}

@keyframes typing {
  0%, 60%, 100% {
    transform: translateY(0);
  }
  30% {
    transform: translateY(-4px);
  }
}
</style> 