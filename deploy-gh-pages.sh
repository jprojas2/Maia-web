#!/bin/bash

# Colors
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[0;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${BLUE}=== Maia AI - Despliegue a GitHub Pages ===${NC}"
echo -e "${BLUE}Este script instalará las dependencias necesarias y desplegará tu sitio a GitHub Pages.${NC}"
echo ""

# Check if npm is installed
if ! command -v npm &> /dev/null; then
    echo -e "${RED}npm no está instalado. Por favor instala Node.js antes de continuar.${NC}"
    exit 1
fi

# Install gh-pages if not already installed
echo -e "${BLUE}Verificando si gh-pages está instalado...${NC}"
if ! npm list -g gh-pages &> /dev/null && ! npm list gh-pages &> /dev/null; then
    echo -e "${YELLOW}Instalando gh-pages...${NC}"
    npm install --save-dev gh-pages
    
    if [ $? -ne 0 ]; then
        echo -e "${RED}Error al instalar gh-pages. Abortando.${NC}"
        exit 1
    fi
    
    echo -e "${GREEN}gh-pages instalado correctamente.${NC}"
else
    echo -e "${GREEN}gh-pages ya está instalado.${NC}"
fi

# Build the project
echo -e "${BLUE}Construyendo el proyecto...${NC}"
npm run build

if [ $? -ne 0 ]; then
    echo -e "${RED}Error al construir el proyecto. Abortando.${NC}"
    exit 1
fi

echo -e "${GREEN}Proyecto construido correctamente.${NC}"

# Deploy to GitHub Pages
echo -e "${BLUE}Desplegando a GitHub Pages...${NC}"
npx gh-pages -d dist --cname maiavr.cl

if [ $? -ne 0 ]; then
    echo -e "${RED}Error al desplegar a GitHub Pages. Verifica tu configuración de Git.${NC}"
    exit 1
fi

echo -e "${GREEN}¡Sitio desplegado correctamente a GitHub Pages!${NC}"
echo -e "${GREEN}Tu sitio estará disponible en: https://$(git config --get remote.origin.url | sed 's/.*github.com[:/]\([^/]*\)\/\([^.]*\).*/\1.github.io\/\2/').${NC}"
echo -e "${YELLOW}Nota: Puede tomar unos minutos para que los cambios sean visibles.${NC}"

echo ""
echo -e "${BLUE}=== Proceso completado ===${NC}" 