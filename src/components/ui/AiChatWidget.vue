<template>
  <div class="ai-chat-widget" :class="{ 'is-active': isActive, 'is-typing': isTyping }">
    <!-- Always visible chat panel -->
    <div class="ai-chat-widget__panel" @mouseenter="setActive(true)" @mouseleave="setInactive">
      <div class="ai-chat-widget__header" v-show="isActive">
        <div class="ai-chat-widget__title">
          <img src="@/assets/logomaia.png" alt="Maia AI" class="ai-chat-widget__header-logo">
          <h3>Chat con Maia</h3>
        </div>
      </div>
      
      <div class="ai-chat-widget__messages" ref="messagesContainer" v-show="isActive">
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
      
      <div class="ai-chat-widget__suggestions" v-if="suggestions.length > 0 && !hasUserSentMessage && isActive">
        <button 
          v-for="(suggestion, index) in suggestions" 
          :key="index"
          class="suggestion-btn"
          @click="sendMessage(suggestion)"
        >
          {{ suggestion }}
        </button>
      </div>
      
      <div class="ai-chat-widget__input" v-show="isActive">
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
      
      <!-- Minimized bubble view (always visible) -->
      <div class="ai-chat-widget__bubble" v-show="!isActive" @click="setActive(true)">
        <img src="@/assets/logomaia.png" alt="Maia AI" class="ai-chat-widget__bubble-logo">
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, computed, onMounted, nextTick, watch, onUnmounted } from 'vue';

const isActive = ref(false);
const userInput = ref('');
const messages = ref([]);
const isTyping = ref(false);
const messagesContainer = ref(null);
const hasUserSentMessage = ref(false);
const inactivityTimer = ref(null);

const suggestions = [
  '¿Cómo funciona Maia?',
  '¿Cuáles son los planes disponibles?',
  '¿Puedo probar una demo?',
  '¿Cómo integro Maia en mi inmobiliaria?'
];

// Set the widget to active state
const setActive = (showInitialMessage = false) => {
  isActive.value = true;
  clearTimeout(inactivityTimer.value);
  
  // If first time activating and no messages, add initial message
  if (showInitialMessage && messages.value.length === 0) {
    addMessage('¡Hola! Soy Maia, tu asistente virtual para la venta inmobiliaria. ¿En qué puedo ayudarte hoy?', 'ai');
  }
};

// Set the widget to inactive state after a delay
const setInactive = () => {
  // Only set inactive if user isn't typing and there's no ongoing conversation
  if (!userInput.value.trim() && !isTyping.value) {
    inactivityTimer.value = setTimeout(() => {
      isActive.value = false;
    }, 5000); // 5 second delay before becoming inactive
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

// Initialize with welcome message when component is mounted
onMounted(() => {
  // Show initial message after a short delay
  setTimeout(() => {
    setActive(true);
  }, 1500);
});

// Clean up when component is unmounted
onUnmounted(() => {
  clearTimeout(inactivityTimer.value);
});
</script>

<style lang="scss" scoped>
.ai-chat-widget {
  position: fixed;
  right: 20px;
  bottom: 20px;
  z-index: $z-index-modal;
  
  &__panel {
    position: relative;
    width: 350px;
    height: 500px;
    max-height: 80vh;
    background-color: white;
    border-radius: 20px;
    box-shadow: 0 5px 25px rgba($dark, 0.1);
    display: flex;
    flex-direction: column;
    overflow: hidden;
    transition: opacity 0.3s ease, transform 0.3s ease;
    opacity: 0.85;
    
    &:hover {
      opacity: 1;
      transform: translateY(-5px);
    }
  }
  
  &.is-active {
    .ai-chat-widget__panel {
      opacity: 1;
    }
  }
  
  &.is-typing {
    .ai-chat-widget__panel {
      opacity: 1;
    }
  }
  
  &__bubble {
    position: absolute;
    bottom: 0;
    right: 0;
    width: 60px;
    height: 60px;
    border-radius: 50%;
    background-color: white;
    box-shadow: 0 3px 15px rgba($dark, 0.1);
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    
    &:hover {
      transform: scale(1.05);
      box-shadow: 0 5px 20px rgba($dark, 0.15);
    }
    
    &-logo {
      width: 35px;
      height: 35px;
      object-fit: contain;
    }
  }
  
  &__header {
    padding: $spacing-md;
    background: white;
    border-bottom: 1px solid $gray-200;
    display: flex;
    align-items: center;
    justify-content: space-between;
  }
  
  &__title {
    display: flex;
    align-items: center;
    
    h3 {
      margin: 0;
      font-weight: $font-weight-medium;
      color: $dark;
      font-size: 1.1rem;
    }
  }
  
  &__header-logo {
    width: 24px;
    height: 24px;
    margin-right: $spacing-sm;
    object-fit: contain;
  }
  
  &__messages {
    flex: 1;
    padding: $spacing-md;
    overflow-y: auto;
    display: flex;
    flex-direction: column;
    gap: $spacing-sm;
    background-color: rgba($gray-100, 0.5);
    
    &::-webkit-scrollbar {
      width: 4px;
    }
    
    &::-webkit-scrollbar-track {
      background: rgba($gray-200, 0.3);
    }
    
    &::-webkit-scrollbar-thumb {
      background: rgba($gray-400, 0.5);
      border-radius: 10px;
    }
  }
  
  &__message {
    max-width: 80%;
    padding: $spacing-sm $spacing-md;
    border-radius: 15px;
    margin-bottom: $spacing-xs;
    
    &.ai-message {
      align-self: flex-start;
      background-color: white;
      border: 1px solid $gray-200;
      border-bottom-left-radius: 4px;
      
      .message-time {
        text-align: left;
      }
    }
    
    &.user-message {
      align-self: flex-end;
      background-color: $gray-200;
      border-bottom-right-radius: 4px;
      
      .message-time {
        text-align: right;
      }
    }
    
    .message-content {
      p {
        margin: 0 0 $spacing-xs;
        line-height: 1.4;
        
        a {
          color: $primary;
          text-decoration: underline;
          
          &:hover {
            text-decoration: none;
          }
        }
      }
    }
    
    .message-time {
      font-size: 0.7rem;
      color: $gray-600;
      display: block;
    }
    
    &.typing {
      padding: $spacing-xs $spacing-sm;
      background: white;
      border: 1px solid $gray-200;
      box-shadow: none;
      
      .typing-indicator {
        display: flex;
        align-items: center;
        gap: 4px;
        
        span {
          width: 6px;
          height: 6px;
          border-radius: 50%;
          background-color: $gray-500;
          animation: typing 1.4s infinite ease-in-out;
          
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
    padding: $spacing-sm;
    display: flex;
    flex-wrap: wrap;
    gap: $spacing-xs;
    border-top: 1px solid $gray-200;
    background: white;
    
    .suggestion-btn {
      background: $gray-100;
      border: 1px solid $gray-200;
      border-radius: 15px;
      padding: $spacing-xs $spacing-sm;
      font-size: 0.8rem;
      cursor: pointer;
      transition: all 0.2s ease;
      
      &:hover {
        background: $gray-200;
      }
    }
  }
  
  &__input {
    padding: $spacing-sm;
    border-top: 1px solid $gray-200;
    display: flex;
    gap: $spacing-sm;
    background: white;
    
    input {
      flex: 1;
      padding: $spacing-sm;
      border: 1px solid $gray-300;
      border-radius: 15px;
      outline: none;
      transition: all 0.2s ease;
      font-size: 0.9rem;
      
      &:focus {
        border-color: $gray-400;
      }
    }
    
    .send-btn {
      width: 32px;
      height: 32px;
      border-radius: 50%;
      background: $gray-200;
      color: $gray-700;
      border: none;
      display: flex;
      align-items: center;
      justify-content: center;
      cursor: pointer;
      transition: all 0.2s ease;
      
      &:hover:not(:disabled) {
        background: $gray-300;
      }
      
      &:disabled {
        background: $gray-100;
        color: $gray-400;
        cursor: not-allowed;
      }
    }
  }
  
  @media (max-width: $breakpoint-md) {
    right: 10px;
    bottom: 10px;
    
    &__panel {
      width: 300px;
      height: 450px;
    }
  }
}

@keyframes typing {
  0%, 60%, 100% {
    transform: translateY(0);
  }
  30% {
    transform: translateY(-3px);
  }
}
</style> 