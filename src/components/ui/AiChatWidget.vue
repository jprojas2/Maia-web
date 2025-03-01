<template>
  <div class="ai-chat-widget" :class="{ 'is-open': isOpen }">
    <!-- Fluid tab that connects seamlessly with the bubble -->
    <div class="ai-chat-widget__tab" @click="toggleChat">
      <div class="ai-chat-widget__tab-glow"></div>
      <img src="@/assets/logomaia.png" alt="Maia AI" class="ai-chat-widget__logo">
    </div>
    
    <!-- Chat panel as an elegant floating bubble -->
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
    
    <!-- Overlay for mobile -->
    <div class="ai-chat-widget__overlay" @click="toggleChat" v-if="isOpen"></div>
  </div>
</template>

<script setup>
import { ref, computed, onMounted, nextTick, watch, onUnmounted } from 'vue';

const isOpen = ref(false); // Start closed by default
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
  // Apply transition class before changing state
  document.body.classList.add('chat-transitioning');
  
  // Toggle the state after a small delay to ensure transition class is applied
  setTimeout(() => {
    isOpen.value = !isOpen.value;
    
    // Add class to body to shift content
    if (isOpen.value) {
      document.body.classList.add('chat-open');
      // If first time opening, add initial message
      if (messages.value.length === 0) {
        addMessage('¡Hola! Soy Maia, tu asistente virtual para la venta inmobiliaria. ¿En qué puedo ayudarte hoy?', 'ai');
      }
    } else {
      document.body.classList.remove('chat-open');
    }
    
    // Remove transition class after animation completes
    setTimeout(() => {
      document.body.classList.remove('chat-transitioning');
    }, 300);
  }, 10);
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

// Clean up when component is unmounted
onUnmounted(() => {
  document.body.classList.remove('chat-open');
  document.body.classList.remove('chat-transitioning');
});
</script>

<style lang="scss" scoped>
.ai-chat-widget {
  position: fixed;
  right: 0;
  top: 0;
  bottom: 0;
  z-index: $z-index-modal;
  display: flex;
  align-items: stretch;
  
  &__tab {
    position: fixed;
    right: 0;
    top: 50%;
    transform: translateY(-50%);
    width: 60px;
    height: 60px;
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    z-index: $z-index-modal + 1;
    transition: all 0.5s cubic-bezier(0.34, 1.56, 0.64, 1);
    
    &::before {
      content: '';
      position: absolute;
      top: 0;
      right: 0;
      width: 100%;
      height: 100%;
      background: $light;
      border-radius: 30px 0 0 30px;
      box-shadow: -5px 0 20px rgba($primary, 0.15);
      transition: all 0.5s cubic-bezier(0.34, 1.56, 0.64, 1);
    }
    
    &-glow {
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      width: 45px;
      height: 45px;
      background: radial-gradient(circle, rgba($primary, 0.2) 0%, rgba($primary, 0) 70%);
      border-radius: 50%;
      opacity: 0.8;
      animation: pulse-glow 3s infinite ease-in-out;
    }
    
    &:hover {
      transform: translateY(-50%) translateX(-5px);
      
      &::before {
        box-shadow: -8px 0 25px rgba($primary, 0.25);
      }
    }
  }
  
  &__logo {
    width: 30px;
    height: 30px;
    object-fit: contain;
    position: relative;
    z-index: 2;
    filter: drop-shadow(0 2px 4px rgba($dark, 0.1));
    transition: transform 0.3s ease;
    
    &:hover {
      transform: scale(1.1);
    }
  }
  
  &__panel {
    position: fixed;
    right: 30px;
    top: 50%;
    transform: translateY(-50%) translateX(calc(100% + 30px));
    width: 350px;
    height: 80vh;
    max-height: 600px;
    background-color: $light;
    border-radius: 24px;
    box-shadow: 0 10px 40px rgba($primary, 0.2);
    display: flex;
    flex-direction: column;
    overflow: hidden;
    transition: transform 0.5s cubic-bezier(0.34, 1.56, 0.64, 1);
    z-index: $z-index-modal;
    
    &::before {
      content: '';
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      border-radius: 24px;
      padding: 2px;
      background: linear-gradient(135deg, $primary, rgba($secondary, 0.5));
      -webkit-mask: linear-gradient(#fff 0 0) content-box, linear-gradient(#fff 0 0);
      -webkit-mask-composite: xor;
      mask-composite: exclude;
      pointer-events: none;
    }
  }
  
  &__overlay {
    display: none;
    
    @media (max-width: $breakpoint-md) {
      display: block;
      position: fixed;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      background-color: rgba($dark, 0.3);
      backdrop-filter: blur(3px);
      opacity: 0;
      visibility: hidden;
      transition: opacity 0.3s ease, visibility 0.3s ease;
      z-index: $z-index-modal - 1;
    }
  }
  
  &.is-open {
    .ai-chat-widget__panel {
      transform: translateY(-50%) translateX(0);
    }
    
    .ai-chat-widget__tab {
      right: 365px;
      
      &::before {
        border-radius: 30px;
        width: 60px;
        background: linear-gradient(90deg, $light, $light);
      }
    }
    
    .ai-chat-widget__overlay {
      opacity: 1;
      visibility: visible;
    }
  }
  
  &__header {
    padding: $spacing-md $spacing-lg;
    background: linear-gradient(135deg, $primary, $secondary);
    color: white;
    display: flex;
    align-items: center;
    justify-content: space-between;
    border-radius: 22px 22px 0 0;
  }
  
  &__title {
    display: flex;
    align-items: center;
    
    h3 {
      margin: 0;
      font-weight: $font-weight-semibold;
      text-shadow: 0 1px 2px rgba($dark, 0.1);
    }
  }
  
  &__header-logo {
    width: 30px;
    height: 30px;
    margin-right: $spacing-sm;
    object-fit: contain;
    filter: drop-shadow(0 1px 2px rgba($dark, 0.2));
  }
  
  &__close {
    background: none;
    border: none;
    color: white;
    font-size: 1.2rem;
    cursor: pointer;
    transition: $transition-base;
    width: 30px;
    height: 30px;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    
    &:hover {
      background-color: rgba(white, 0.2);
      transform: rotate(90deg);
    }
  }
  
  &__messages {
    flex: 1;
    padding: $spacing-md;
    overflow-y: auto;
    display: flex;
    flex-direction: column;
    gap: $spacing-sm;
    
    &::-webkit-scrollbar {
      width: 6px;
    }
    
    &::-webkit-scrollbar-track {
      background: rgba($gray-200, 0.5);
      border-radius: 10px;
    }
    
    &::-webkit-scrollbar-thumb {
      background: rgba($primary, 0.2);
      border-radius: 10px;
      
      &:hover {
        background: rgba($primary, 0.4);
      }
    }
  }
  
  &__message {
    max-width: 80%;
    padding: $spacing-sm $spacing-md;
    border-radius: 18px;
    margin-bottom: $spacing-sm;
    box-shadow: 0 2px 5px rgba($dark, 0.05);
    transition: transform 0.2s ease;
    
    &:hover {
      transform: translateY(-2px);
    }
    
    &.ai-message {
      align-self: flex-start;
      background: linear-gradient(135deg, rgba($gray-100, 0.8), $gray-100);
      border-bottom-left-radius: 4px;
      
      .message-time {
        text-align: left;
      }
    }
    
    &.user-message {
      align-self: flex-end;
      background: linear-gradient(135deg, $primary, rgba($primary-dark, 0.9));
      color: white;
      border-bottom-right-radius: 4px;
      
      .message-time {
        text-align: right;
        color: rgba(white, 0.8);
      }
    }
    
    .message-content {
      p {
        margin: 0 0 $spacing-xs;
        line-height: 1.4;
        
        a {
          color: inherit;
          text-decoration: underline;
          
          &:hover {
            text-decoration: none;
          }
        }
      }
    }
    
    .message-time {
      font-size: 0.75rem;
      opacity: 0.7;
      display: block;
    }
    
    &.typing {
      padding: $spacing-sm;
      background: rgba($gray-100, 0.5);
      box-shadow: none;
      
      .typing-indicator {
        display: flex;
        align-items: center;
        gap: 4px;
        
        span {
          width: 8px;
          height: 8px;
          border-radius: 50%;
          background-color: rgba($primary, 0.5);
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
    padding: $spacing-md;
    display: flex;
    flex-wrap: wrap;
    gap: $spacing-sm;
    border-top: 1px solid rgba($gray-200, 0.7);
    background: linear-gradient(to bottom, rgba($light, 0.5), $light);
    
    .suggestion-btn {
      background: linear-gradient(135deg, rgba($gray-100, 0.8), $gray-100);
      border: none;
      border-radius: 18px;
      padding: $spacing-xs $spacing-md;
      font-size: 0.9rem;
      cursor: pointer;
      transition: all 0.3s ease;
      box-shadow: 0 2px 5px rgba($dark, 0.05);
      
      &:hover {
        background: linear-gradient(135deg, rgba($primary, 0.1), rgba($primary, 0.05));
        transform: translateY(-2px);
        box-shadow: 0 4px 8px rgba($primary, 0.15);
      }
    }
  }
  
  &__input {
    padding: $spacing-md;
    border-top: 1px solid rgba($gray-200, 0.7);
    display: flex;
    gap: $spacing-sm;
    background: $light;
    border-radius: 0 0 22px 22px;
    
    input {
      flex: 1;
      padding: $spacing-sm $spacing-md;
      border: 1px solid rgba($gray-300, 0.5);
      border-radius: 20px;
      outline: none;
      transition: all 0.3s ease;
      background: rgba(white, 0.8);
      
      &:focus {
        border-color: rgba($primary, 0.5);
        box-shadow: 0 0 0 3px rgba($primary, 0.1);
        background: white;
      }
    }
    
    .send-btn {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      background: linear-gradient(135deg, $primary, $primary-dark);
      color: white;
      border: none;
      display: flex;
      align-items: center;
      justify-content: center;
      cursor: pointer;
      transition: all 0.3s ease;
      box-shadow: 0 2px 5px rgba($primary, 0.3);
      
      &:hover:not(:disabled) {
        transform: scale(1.05) rotate(10deg);
        box-shadow: 0 4px 10px rgba($primary, 0.4);
      }
      
      &:disabled {
        background: linear-gradient(135deg, $gray-300, $gray-400);
        cursor: not-allowed;
        box-shadow: none;
      }
    }
  }
}

@keyframes typing {
  0%, 60%, 100% {
    transform: translateY(0);
    opacity: 0.6;
  }
  30% {
    transform: translateY(-4px);
    opacity: 1;
  }
}

@keyframes pulse-glow {
  0% {
    opacity: 0.4;
    transform: translate(-50%, -50%) scale(0.9);
  }
  50% {
    opacity: 0.8;
    transform: translate(-50%, -50%) scale(1.1);
  }
  100% {
    opacity: 0.4;
    transform: translate(-50%, -50%) scale(0.9);
  }
}
</style> 