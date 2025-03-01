<template>
  <div class="ai-chat-widget" :class="{ 'open': isOpen }">
    <!-- Chat toggle button -->
    <button 
      class="chat-toggle" 
      @click="toggleChat" 
      :aria-label="isOpen ? 'Close chat' : 'Open chat'"
      :aria-expanded="isOpen ? 'true' : 'false'"
    >
      <div class="toggle-icon">
        <i :class="isOpen ? 'fas fa-times' : 'fas fa-comment'"></i>
      </div>
      <span v-if="!isOpen" class="toggle-label">Chat con Maia</span>
    </button>
    
    <!-- Chat container -->
    <div class="chat-container" v-show="isOpen">
      <div class="chat-header">
        <div class="chat-avatar">
          <img src="@/assets/logomaia.png" alt="Maia Logo" class="avatar-image">
        </div>
        <div class="chat-title">
          <h3>Maia Asistente</h3>
          <p>Tu guía inmobiliaria inteligente</p>
        </div>
      </div>
      
      <div class="chat-messages" ref="messagesContainer">
        <div 
          v-for="(message, index) in messages" 
          :key="index" 
          class="message" 
          :class="message.sender"
        >
          <p v-html="formatMessage(message.text)"></p>
          <span class="message-time">{{ formatTime(message.timestamp) }}</span>
        </div>
        <div v-if="isTyping" class="message ai typing">
          <div class="typing-indicator">
            <span></span>
            <span></span>
            <span></span>
          </div>
        </div>
      </div>
      
      <div class="chat-input-area">
        <div class="suggestions" v-if="showSuggestions">
          <button 
            v-for="(suggestion, index) in suggestions" 
            :key="index" 
            class="suggestion-btn"
            @click="selectSuggestion(suggestion)"
          >
            {{ suggestion }}
          </button>
        </div>
        
        <div class="input-container">
          <input 
            type="text" 
            v-model="userInput" 
            @keyup.enter="sendMessage"
            placeholder="Escribe tu mensaje aquí..." 
            :disabled="isTyping"
            ref="inputField"
          >
          <button 
            class="send-button" 
            @click="sendMessage" 
            :disabled="!userInput.trim() || isTyping"
            aria-label="Enviar mensaje"
          >
            <i class="fas fa-paper-plane"></i>
          </button>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, computed, watch, nextTick, onMounted } from 'vue';

// State
const isOpen = ref(false);
const userInput = ref('');
const messages = ref([]);
const isTyping = ref(false);
const showSuggestions = ref(true);
const messagesContainer = ref(null);
const inputField = ref(null);

// Initial message
onMounted(() => {
  addMessage('¡Hola! Soy Maia, tu asistente virtual inmobiliario. Puedo ayudarte a conocer más sobre nuestros servicios, responder preguntas sobre propiedades o guiarte en el proceso de venta. ¿En qué puedo ayudarte hoy?', 'ai');
});

// Suggestions
const suggestions = [
  '¿Cómo funciona Maia?',
  '¿Cuáles son los planes y precios?',
  '¿Cómo puedo integrar Maia en mi inmobiliaria?'
];

// Methods
const toggleChat = () => {
  isOpen.value = !isOpen.value;
  if (isOpen.value) {
    nextTick(() => {
      inputField.value?.focus();
      scrollToBottom();
    });
  }
};

const addMessage = (text, sender) => {
  messages.value.push({
    text,
    sender,
    timestamp: new Date()
  });
  
  nextTick(() => {
    scrollToBottom();
  });
};

const scrollToBottom = () => {
  if (messagesContainer.value) {
    messagesContainer.value.scrollTop = messagesContainer.value.scrollHeight;
  }
};

const sendMessage = () => {
  const message = userInput.value.trim();
  if (!message) return;
  
  // Add user message
  addMessage(message, 'user');
  userInput.value = '';
  showSuggestions.value = false;
  
  // Simulate AI typing
  isTyping.value = true;
  
  // Simulate AI response after delay
  setTimeout(() => {
    isTyping.value = false;
    respondToMessage(message);
  }, 1000 + Math.random() * 1000); // Random delay between 1-2 seconds
};

const selectSuggestion = (suggestion) => {
  userInput.value = suggestion;
  sendMessage();
};

const respondToMessage = (message) => {
  const lowerMessage = message.toLowerCase();
  let response = '';
  
  if (lowerMessage.includes('hola') || lowerMessage.includes('buenos días') || lowerMessage.includes('buenas tardes')) {
    response = '¡Hola! ¿En qué puedo ayudarte hoy? ¿Estás buscando información sobre cómo Maia puede transformar tu negocio inmobiliario?';
  } 
  else if (lowerMessage.includes('precio') || lowerMessage.includes('plan') || lowerMessage.includes('costo')) {
    response = 'Ofrecemos tres planes adaptados a diferentes necesidades:<br><br>• <strong>Básico ($40/mes)</strong>: Ideal para pequeñas inmobiliarias con hasta 5 propiedades activas.<br><br>• <strong>Profesional ($120/mes)</strong>: Para inmobiliarias en crecimiento con hasta 20 propiedades y funciones avanzadas.<br><br>• <strong>Empresarial ($200/mes)</strong>: Propiedades ilimitadas con todas las características premium.<br><br>¿Te gustaría conocer más detalles sobre alguno de estos planes?';
  }
  else if (lowerMessage.includes('demo') || lowerMessage.includes('prueba') || lowerMessage.includes('recorrido')) {
    response = 'Puedes probar nuestro recorrido virtual en la sección Demo de nuestra página. Es una demostración interactiva que te permite experimentar cómo tus clientes navegarían por una propiedad con la asistencia de Maia. ¿Hay alguna característica específica que te gustaría explorar?';
  }
  else if (lowerMessage.includes('contacto') || lowerMessage.includes('hablar') || lowerMessage.includes('asesor')) {
    response = 'Puedes contactarnos a través del formulario en la sección de contacto o directamente al email <a href="mailto:info@maiavr.cl">info@maiavr.cl</a>. También podemos coordinar una demostración personalizada para tu inmobiliaria. ¿Prefieres que un asesor te llame?';
  }
  else if (lowerMessage.includes('cómo funciona') || lowerMessage.includes('como funciona')) {
    response = 'Maia combina recorridos virtuales 3D con inteligencia artificial conversacional para guiar a los potenciales compradores. El sistema:<br><br>1. Permite a los clientes explorar propiedades virtualmente<br>2. Responde preguntas en tiempo real sobre características, precios, etc.<br>3. Recopila datos sobre preferencias para calificar leads<br>4. Programa visitas y conecta con agentes cuando el cliente está listo<br><br>¿Te gustaría saber más sobre alguna de estas funcionalidades?';
  }
  else if (lowerMessage.includes('integrar') || lowerMessage.includes('implementar')) {
    response = 'Integrar Maia en tu inmobiliaria es muy sencillo:<br><br>1. Selecciona un plan según tus necesidades<br>2. Nuestro equipo configura tu cuenta en 24-48 horas<br>3. Subimos tus propiedades y personalizamos la IA<br>4. Te proporcionamos códigos para integrar en tu sitio web<br><br>Ofrecemos soporte completo durante todo el proceso. ¿Te gustaría programar una llamada con nuestro equipo técnico?';
  }
  else if (lowerMessage.includes('gracias')) {
    response = '¡De nada! Estoy aquí para ayudarte. Si tienes más preguntas sobre Maia o quieres conocer más sobre cómo podemos ayudar a tu negocio inmobiliario, no dudes en preguntar.';
  }
  else {
    response = 'Maia está diseñada para transformar la experiencia de venta inmobiliaria, combinando tours virtuales con IA conversacional. Esto permite a tus clientes explorar propiedades desde cualquier lugar, mientras reciben respuestas inmediatas a sus preguntas. ¿Hay algún aspecto específico que te interese conocer?';
  }
  
  addMessage(response, 'ai');
};

const formatTime = (timestamp) => {
  const date = new Date(timestamp);
  return date.toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });
};

const formatMessage = (text) => {
  // Convert URLs to clickable links
  return text.replace(
    /(https?:\/\/[^\s]+)/g, 
    '<a href="$1" target="_blank" rel="noopener noreferrer">$1</a>'
  );
};

// Watch for new messages to scroll to bottom
watch(messages, () => {
  nextTick(() => {
    scrollToBottom();
  });
}, { deep: true });
</script>

<style lang="scss" scoped>
.ai-chat-widget {
  position: fixed;
  bottom: $spacing-lg;
  right: $spacing-lg;
  z-index: $z-index-modal;
  display: flex;
  flex-direction: column;
  align-items: flex-end;
  
  .chat-toggle {
    display: flex;
    align-items: center;
    background: $gradient-1;
    color: white;
    border: none;
    border-radius: $border-radius-pill;
    padding: $spacing-sm $spacing-md;
    cursor: pointer;
    box-shadow: $shadow;
    transition: $transition-base;
    
    &:hover {
      transform: translateY(-3px);
      box-shadow: $shadow-lg;
    }
    
    .toggle-icon {
      display: flex;
      align-items: center;
      justify-content: center;
      width: 36px;
      height: 36px;
      border-radius: 50%;
      background-color: rgba(255, 255, 255, 0.2);
      margin-right: $spacing-sm;
      
      i {
        font-size: 1rem;
      }
    }
    
    .toggle-label {
      font-weight: $font-weight-medium;
      margin-right: $spacing-sm;
    }
  }
  
  .chat-container {
    position: absolute;
    bottom: calc(100% + $spacing-md);
    right: 0;
    width: 350px;
    max-width: calc(100vw - $spacing-lg * 2);
    height: 500px;
    max-height: calc(100vh - 100px);
    background-color: white;
    border-radius: $border-radius-lg;
    box-shadow: $shadow-lg;
    display: flex;
    flex-direction: column;
    overflow: hidden;
    
    .chat-header {
      display: flex;
      align-items: center;
      padding: $spacing-md;
      background: $gradient-1;
      color: white;
      
      .chat-avatar {
        width: 40px;
        height: 40px;
        border-radius: 50%;
        background-color: white;
        display: flex;
        align-items: center;
        justify-content: center;
        margin-right: $spacing-md;
        
        .avatar-image {
          width: 30px;
          height: 30px;
          object-fit: contain;
        }
      }
      
      .chat-title {
        h3 {
          margin: 0;
          font-size: 1.1rem;
          font-weight: $font-weight-semibold;
        }
        
        p {
          margin: 0;
          font-size: 0.8rem;
          opacity: 0.8;
        }
      }
    }
    
    .chat-messages {
      flex: 1;
      padding: $spacing-md;
      overflow-y: auto;
      display: flex;
      flex-direction: column;
      gap: $spacing-md;
      
      .message {
        max-width: 80%;
        padding: $spacing-sm $spacing-md;
        border-radius: $border-radius-lg;
        position: relative;
        
        p {
          margin: 0;
          white-space: pre-line;
        }
        
        .message-time {
          font-size: 0.7rem;
          opacity: 0.6;
          position: absolute;
          bottom: -18px;
        }
        
        &.user {
          align-self: flex-end;
          background-color: $primary;
          color: white;
          border-bottom-right-radius: 0;
          
          .message-time {
            right: 0;
          }
        }
        
        &.ai {
          align-self: flex-start;
          background-color: $gray-200;
          color: $dark;
          border-bottom-left-radius: 0;
          
          .message-time {
            left: 0;
          }
          
          &.typing {
            background-color: transparent;
            padding: 0;
            
            .typing-indicator {
              display: flex;
              align-items: center;
              gap: 4px;
              
              span {
                display: block;
                width: 8px;
                height: 8px;
                border-radius: 50%;
                background-color: $gray-400;
                animation: typing 1s infinite;
                
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
      }
    }
    
    .chat-input-area {
      padding: $spacing-md;
      border-top: 1px solid $gray-200;
      
      .suggestions {
        display: flex;
        flex-wrap: wrap;
        gap: $spacing-xs;
        margin-bottom: $spacing-sm;
        
        .suggestion-btn {
          background-color: $gray-100;
          border: 1px solid $gray-300;
          border-radius: $border-radius-pill;
          padding: $spacing-xs $spacing-sm;
          font-size: 0.8rem;
          cursor: pointer;
          transition: $transition-base;
          
          &:hover {
            background-color: $gray-200;
          }
        }
      }
      
      .input-container {
        display: flex;
        gap: $spacing-sm;
        
        input {
          flex: 1;
          padding: $spacing-sm $spacing-md;
          border: 1px solid $gray-300;
          border-radius: $border-radius-pill;
          outline: none;
          transition: $transition-base;
          
          &:focus {
            border-color: $primary;
            box-shadow: 0 0 0 2px rgba($primary, 0.2);
          }
        }
        
        .send-button {
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
          }
          
          &:disabled {
            opacity: 0.5;
            cursor: not-allowed;
          }
        }
      }
    }
  }
  
  &.open {
    .chat-toggle {
      width: 50px;
      height: 50px;
      border-radius: 50%;
      padding: 0;
      
      .toggle-icon {
        margin: 0;
        width: 100%;
        height: 100%;
        background-color: transparent;
      }
      
      .toggle-label {
        display: none;
      }
    }
  }
}

@keyframes typing {
  0% {
    transform: translateY(0px);
    opacity: 0.4;
  }
  50% {
    transform: translateY(-5px);
    opacity: 0.8;
  }
  100% {
    transform: translateY(0px);
    opacity: 0.4;
  }
}

// Deep selector for links in messages
:deep(a) {
  color: $primary;
  text-decoration: underline;
  
  &:hover {
    color: $primary-dark;
  }
}
</style> 