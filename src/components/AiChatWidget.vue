.ai-chat-widget {
  position: fixed;
  right: 30px;
  top: 50%;
  transform: translateY(-50%);
  width: 350px;
  max-width: calc(100vw - 40px);
  
  &__icon {
    position: absolute;
    bottom: 20px;
    right: 20px;
    width: 60px;
    height: 60px;
    border-radius: 30px;
    background-color: $primary;
    color: white;
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    box-shadow: $shadow;
    transition: $transition-base;
    z-index: 10;
    
    &:hover {
      transform: scale(1.1);
      background-color: lighten($primary, 5%);
    }
    
    i {
      font-size: 2rem;
    }
  }
  
  &__content {
    position: absolute;
    bottom: 0;
    right: 0;
    width: 100%;
    height: 500px;
    max-height: calc(100vh - 100px);
    background-color: white;
    border-radius: 30px;
    box-shadow: $shadow-lg;
    overflow: hidden;
    transition: $transition-base;
    opacity: 0;
    transform: translateY(20px) scale(0.95);
    pointer-events: none;
    
    &.active {
      opacity: 1;
      transform: translateY(0) scale(1);
      pointer-events: all;
    }
  }
  
  &__header {
    padding: $spacing-md $spacing-lg;
    background-color: $primary;
    color: white;
    display: flex;
    align-items: center;
    justify-content: space-between;
    border-top-left-radius: 30px;
    border-top-right-radius: 30px;
    
    .title {
      margin: 0;
      font-size: 1.2rem;
      font-weight: $font-weight-medium;
    }
    
    .close {
      background: none;
      border: none;
      color: white;
      font-size: 1.5rem;
      cursor: pointer;
      display: flex;
      align-items: center;
      justify-content: center;
      width: 30px;
      height: 30px;
      border-radius: 15px;
      
      &:hover {
        background-color: rgba(white, 0.2);
      }
    }
  }
  
  &__body {
    height: calc(100% - 60px);
    display: flex;
    flex-direction: column;
    padding: $spacing-md;
  }
  
  &__messages {
    flex: 1;
    overflow-y: auto;
    padding: $spacing-sm;
    display: flex;
    flex-direction: column;
    gap: $spacing-sm;
  }
  
  &__input {
    padding: $spacing-md;
    border-top: 1px solid $gray-200;
    display: flex;
    gap: $spacing-md;
    
    input {
      flex: 1;
      padding: $spacing-sm $spacing-md;
      border: 1px solid $gray-300;
      border-radius: 25px;
      outline: none;
      transition: $transition-base;
      
      &:focus {
        border-color: $primary;
        box-shadow: 0 0 0 2px rgba($primary, 0.3);
      }
    }
    
    button {
      display: flex;
      align-items: center;
      justify-content: center;
      width: 40px;
      height: 40px;
      background-color: $primary;
      color: white;
      border: none;
      border-radius: 20px;
      cursor: pointer;
      transition: $transition-base;
      
      &:hover {
        background-color: lighten($primary, 5%);
        transform: scale(1.05);
      }
      
      i {
        font-size: 1.2rem;
      }
      
      &:disabled {
        background-color: $gray-400;
        cursor: not-allowed;
        
        &:hover {
          transform: none;
        }
      }
    }
  }
}

.message {
  display: flex;
  flex-direction: column;
  max-width: 85%;
  padding: $spacing-sm $spacing-md;
  border-radius: 20px;
  color: $dark;
  
  &--user {
    align-self: flex-end;
    background-color: $primary;
    color: white;
    border-bottom-right-radius: 4px;
  }
  
  &--ai {
    align-self: flex-start;
    background-color: $gray-200;
    border-bottom-left-radius: 4px;
  }
  
  .message-text {
    margin: 0;
    line-height: 1.4;
    font-size: 0.95rem;
  }
  
  .message-time {
    margin-top: $spacing-xs;
    font-size: 0.75rem;
    opacity: 0.75;
    align-self: flex-end;
  }
} 