<template>
  <div 
    class="ai-chat-widget open" 
    :class="{ 
      'mobile': isMobile
    }"
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

// State
const inputMessage = ref('');
const messages = ref([]);
const isTyping = ref(false);
const isMobile = ref(false);
const messagesContainer = ref(null);
const inputField = ref(null);

// Check if mobile device
onMounted(() => {
  checkMobile();
  window.addEventListener('resize', checkMobile);
  
  // Focus input field on mount
  nextTick(() => {
    if (inputField.value) {
      inputField.value.focus();
    }
  });
  
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
  
  // Simulate bot response
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
  background-color: rgba(255, 255, 255, 0.4);
  border: 1px solid rgba($primary, 0.2);
  transition: all 0.3s ease;
  display: flex;
  flex-direction: column;
  
  &.mobile {
    width: calc(100% - 40px);
    max-height: 70vh;
  }
}

.chat-panel {
  display: flex;
  flex-direction: column;
  height: 500px;
  max-height: 70vh;
  background-color: rgba(255, 255, 255, 0.4);
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
  background-color: rgba(255, 255, 255, 0.4);
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
      background-color: rgba(255, 255, 255, 0.4);
      color: #000000;
      border-radius: $border-radius $border-radius 0 $border-radius;
      border: 1px solid rgba($primary, 0.3);
    }
  }
  
  &.bot {
    margin-right: auto;
    
    .message-content {
      background-color: rgba(255, 255, 255, 0.4);
      color: #000000;
      border-radius: 0 $border-radius $border-radius $border-radius;
      box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1);
      border: 1px solid rgba($gray-300, 0.5);
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