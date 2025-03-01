#!/bin/bash

# Colors
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[0;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${BLUE}=== Maia AI - Configuración de Git y GitHub ===${NC}"
echo -e "${BLUE}Este script te ayudará a inicializar Git y subir tu proyecto a GitHub.${NC}"
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo -e "${RED}Git no está instalado. Por favor instala Git antes de continuar.${NC}"
    echo -e "${YELLOW}Visita https://git-scm.com/downloads para instrucciones de instalación.${NC}"
    exit 1
fi

# Check if the directory is already a git repository
if [ -d ".git" ]; then
    echo -e "${YELLOW}Este directorio ya es un repositorio Git.${NC}"
    
    # Check if there's a remote origin
    if git remote get-url origin &> /dev/null; then
        REMOTE_URL=$(git remote get-url origin)
        echo -e "${YELLOW}Ya existe un remoto configurado: ${REMOTE_URL}${NC}"
        
        echo -e "${BLUE}¿Qué deseas hacer?${NC}"
        echo -e "1) Continuar con el remoto existente"
        echo -e "2) Configurar un nuevo remoto"
        echo -e "3) Salir"
        echo -ne "${BLUE}Opción:${NC} "
        read -r option
        
        case $option in
            1)
                echo -e "${GREEN}Continuando con el remoto existente.${NC}"
                ;;
            2)
                echo -e "${YELLOW}Eliminando el remoto existente...${NC}"
                git remote remove origin
                ;;
            3)
                echo -e "${YELLOW}Saliendo del script.${NC}"
                exit 0
                ;;
            *)
                echo -e "${RED}Opción inválida. Saliendo.${NC}"
                exit 1
                ;;
        esac
    fi
else
    echo -e "${BLUE}Inicializando un nuevo repositorio Git...${NC}"
    git init
    echo -e "${GREEN}Repositorio Git inicializado.${NC}"
fi

# Configure GitHub remote if needed
if ! git remote get-url origin &> /dev/null; then
    echo -e "${BLUE}Configurando el remoto de GitHub.${NC}"
    echo -e "${YELLOW}Necesitarás la URL de tu repositorio GitHub.${NC}"
    echo -e "${YELLOW}Ejemplo: https://github.com/tu-usuario/maia-ai.git${NC}"
    echo -ne "${BLUE}URL del repositorio:${NC} "
    read -r repo_url
    
    git remote add origin "$repo_url"
    echo -e "${GREEN}Remoto configurado: $repo_url${NC}"
fi

# Check if there are changes to commit
if [ -n "$(git status --porcelain)" ]; then
    echo -e "${BLUE}Hay cambios para añadir al repositorio.${NC}"
    echo -e "${BLUE}¿Deseas añadir todos los archivos y hacer commit? (s/n)${NC}"
    read -r add_changes
    
    if [[ "$add_changes" =~ ^[Ss]$ ]]; then
        echo -e "${BLUE}Añadiendo archivos...${NC}"
        git add .
        
        echo -ne "${BLUE}Mensaje de commit:${NC} "
        read -r commit_message
        
        if [ -z "$commit_message" ]; then
            commit_message="Versión inicial de Maia AI"
        fi
        
        git commit -m "$commit_message"
        echo -e "${GREEN}Commit realizado.${NC}"
    fi
fi

# Push to GitHub
echo -e "${BLUE}¿Deseas subir los cambios a GitHub ahora? (s/n)${NC}"
read -r push_changes

if [[ "$push_changes" =~ ^[Ss]$ ]]; then
    # Determine the default branch
    DEFAULT_BRANCH=$(git symbolic-ref --short HEAD)
    
    echo -e "${BLUE}Subiendo a la rama $DEFAULT_BRANCH...${NC}"
    git push -u origin "$DEFAULT_BRANCH"
    
    if [ $? -eq 0 ]; then
        echo -e "${GREEN}¡Proyecto subido exitosamente a GitHub!${NC}"
        
        # Extract the repository URL for the success message
        REPO_URL=$(git remote get-url origin)
        # Convert SSH URL to HTTPS if needed
        if [[ $REPO_URL == git@github.com:* ]]; then
            REPO_URL=${REPO_URL/git@github.com:/https:\/\/github.com\/}
            REPO_URL=${REPO_URL/.git/}
        else
            REPO_URL=${REPO_URL/.git/}
        fi
        
        echo -e "${GREEN}Puedes ver tu repositorio en: $REPO_URL${NC}"
        echo -e "${YELLOW}Para instrucciones sobre cómo desplegar tu sitio, consulta GITHUB-GUIDE.md${NC}"
    else
        echo -e "${RED}Error al subir a GitHub. Verifica tu conexión y credenciales.${NC}"
    fi
else
    echo -e "${YELLOW}No se han subido los cambios a GitHub.${NC}"
    echo -e "${YELLOW}Puedes hacerlo manualmente con: git push -u origin $(git symbolic-ref --short HEAD)${NC}"
fi

echo ""
echo -e "${BLUE}=== Proceso completado ===${NC}" 