#!/bin/bash

# Colors
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

clear
echo -e "${BLUE}╔════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║                                                            ║${NC}"
echo -e "${BLUE}║${CYAN}                      MAIA AI TESTER                       ${BLUE}║${NC}"
echo -e "${BLUE}║                                                            ║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════╝${NC}"
echo ""

# Function to open a URL in the default browser
open_url() {
    URL=$1
    if [[ "$OSTYPE" == "darwin"* ]]; then
        # macOS
        open "$URL"
    elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
        # Linux
        xdg-open "$URL" &> /dev/null
    elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
        # Windows
        start "$URL"
    else
        echo -e "${YELLOW}No se pudo abrir el navegador automáticamente. Por favor abre manualmente: ${URL}${NC}"
    fi
}

# Function to check if a process is running on port 5173
check_server_running() {
    if command -v lsof &> /dev/null; then
        if lsof -i:5173 &> /dev/null; then
            return 0
        else
            return 1
        fi
    elif command -v netstat &> /dev/null; then
        if netstat -an | grep 5173 &> /dev/null; then
            return 0
        else
            return 1
        fi
    else
        # If we can't check, assume it's not running
        return 1
    fi
}

# Main menu
show_menu() {
    echo -e "${BLUE}Selecciona una opción:${NC}"
    echo -e "${CYAN}1)${NC} Verificar configuración"
    echo -e "${CYAN}2)${NC} Instalar dependencias"
    echo -e "${CYAN}3)${NC} Iniciar servidor de desarrollo"
    echo -e "${CYAN}4)${NC} Abrir aplicación en el navegador"
    echo -e "${CYAN}5)${NC} Todo en uno (instalar e iniciar)"
    echo -e "${CYAN}6)${NC} Salir"
    echo ""
    echo -ne "${BLUE}Opción:${NC} "
    read -r option
    
    case $option in
        1)
            echo ""
            echo -e "${BLUE}Verificando configuración...${NC}"
            ./check-setup.sh
            echo ""
            read -p "Presiona Enter para continuar..."
            clear
            show_menu
            ;;
        2)
            echo ""
            echo -e "${BLUE}Instalando dependencias...${NC}"
            npm install
            echo ""
            echo -e "${GREEN}Dependencias instaladas correctamente.${NC}"
            echo ""
            read -p "Presiona Enter para continuar..."
            clear
            show_menu
            ;;
        3)
            echo ""
            if check_server_running; then
                echo -e "${YELLOW}El servidor ya está en ejecución en el puerto 5173.${NC}"
                echo -e "${YELLOW}Puedes acceder a la aplicación en: http://localhost:5173${NC}"
                echo ""
                read -p "Presiona Enter para continuar..."
                clear
                show_menu
            else
                echo -e "${BLUE}Iniciando servidor de desarrollo...${NC}"
                echo -e "${YELLOW}(Presiona Ctrl+C para detener el servidor)${NC}"
                echo ""
                npm run dev
                # This will block until the server is stopped
                clear
                show_menu
            fi
            ;;
        4)
            echo ""
            if check_server_running; then
                echo -e "${BLUE}Abriendo aplicación en el navegador...${NC}"
                open_url "http://localhost:5173"
                echo ""
                read -p "Presiona Enter para continuar..."
                clear
                show_menu
            else
                echo -e "${RED}El servidor no está en ejecución.${NC}"
                echo -e "${YELLOW}Primero debes iniciar el servidor (opción 3) o usar la opción 5.${NC}"
                echo ""
                read -p "Presiona Enter para continuar..."
                clear
                show_menu
            fi
            ;;
        5)
            echo ""
            echo -e "${BLUE}Instalando dependencias e iniciando servidor...${NC}"
            echo -e "${YELLOW}(Presiona Ctrl+C para detener el servidor)${NC}"
            echo ""
            ./setup.sh
            # This will block until the server is stopped
            clear
            show_menu
            ;;
        6)
            echo ""
            echo -e "${BLUE}¡Gracias por probar Maia AI!${NC}"
            exit 0
            ;;
        *)
            echo ""
            echo -e "${RED}Opción inválida. Por favor intenta de nuevo.${NC}"
            echo ""
            read -p "Presiona Enter para continuar..."
            clear
            show_menu
            ;;
    esac
}

# Check if setup.sh is executable
if [ ! -x "setup.sh" ]; then
    echo -e "${YELLOW}Haciendo setup.sh ejecutable...${NC}"
    chmod +x setup.sh
fi

# Check if check-setup.sh is executable
if [ ! -x "check-setup.sh" ]; then
    echo -e "${YELLOW}Haciendo check-setup.sh ejecutable...${NC}"
    chmod +x check-setup.sh
fi

# Start the menu
show_menu