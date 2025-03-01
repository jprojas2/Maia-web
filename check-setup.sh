#!/bin/bash

# Colors
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}=== Maia AI - Verificación de Configuración ===${NC}"
echo -e "${BLUE}Este script verificará si todos los archivos necesarios están presentes.${NC}"
echo ""

# Function to check if a file exists
check_file() {
    if [ -f "$1" ]; then
        echo -e "${GREEN}✓ $1 encontrado${NC}"
        return 0
    else
        echo -e "${RED}✗ $1 no encontrado${NC}"
        return 1
    fi
}

# Function to check if a directory exists
check_dir() {
    if [ -d "$1" ]; then
        echo -e "${GREEN}✓ Directorio $1 encontrado${NC}"
        return 0
    else
        echo -e "${RED}✗ Directorio $1 no encontrado${NC}"
        return 1
    fi
}

# Check Node.js and npm
echo -e "${BLUE}Verificando Node.js y npm...${NC}"
if command -v node &> /dev/null; then
    NODE_VERSION=$(node -v)
    echo -e "${GREEN}✓ Node.js encontrado (versión: $NODE_VERSION)${NC}"
else
    echo -e "${RED}✗ Node.js no encontrado. Por favor instala Node.js desde https://nodejs.org/${NC}"
fi

if command -v npm &> /dev/null; then
    NPM_VERSION=$(npm -v)
    echo -e "${GREEN}✓ npm encontrado (versión: $NPM_VERSION)${NC}"
else
    echo -e "${RED}✗ npm no encontrado. Normalmente viene con Node.js${NC}"
fi

echo ""

# Check essential files
echo -e "${BLUE}Verificando archivos esenciales...${NC}"
ESSENTIAL_FILES=(
    "package.json"
    "vite.config.js"
    "index.html"
    "src/main.js"
    "src/App.vue"
    "src/router/index.js"
    "src/styles/main.scss"
    "src/styles/variables.scss"
    "src/components/ui/AiChatWidget.vue"
    "src/components/layout/AppHeader.vue"
    "src/components/layout/AppFooter.vue"
    "src/views/HomeView.vue"
    "src/assets/logomaia.png"
)

MISSING_FILES=0
for file in "${ESSENTIAL_FILES[@]}"; do
    if ! check_file "$file"; then
        MISSING_FILES=$((MISSING_FILES + 1))
    fi
done

echo ""

# Check essential directories
echo -e "${BLUE}Verificando directorios esenciales...${NC}"
ESSENTIAL_DIRS=(
    "src"
    "src/assets"
    "src/components"
    "src/router"
    "src/styles"
    "src/views"
    "public"
)

MISSING_DIRS=0
for dir in "${ESSENTIAL_DIRS[@]}"; do
    if ! check_dir "$dir"; then
        MISSING_DIRS=$((MISSING_DIRS + 1))
    fi
done

echo ""

# Check if setup.sh is executable
echo -e "${BLUE}Verificando permisos de setup.sh...${NC}"
if [ -f "setup.sh" ]; then
    if [ -x "setup.sh" ]; then
        echo -e "${GREEN}✓ setup.sh tiene permisos de ejecución${NC}"
    else
        echo -e "${YELLOW}⚠ setup.sh no tiene permisos de ejecución. Ejecuta: chmod +x setup.sh${NC}"
    fi
else
    echo -e "${RED}✗ setup.sh no encontrado${NC}"
fi

echo ""

# Summary
echo -e "${BLUE}=== Resumen ===${NC}"
if [ $MISSING_FILES -eq 0 ] && [ $MISSING_DIRS -eq 0 ]; then
    echo -e "${GREEN}✓ Todos los archivos y directorios necesarios están presentes.${NC}"
    echo -e "${GREEN}✓ Puedes ejecutar ./setup.sh para iniciar la aplicación.${NC}"
else
    echo -e "${RED}✗ Faltan $MISSING_FILES archivos y $MISSING_DIRS directorios.${NC}"
    echo -e "${YELLOW}⚠ La aplicación puede no funcionar correctamente.${NC}"
fi

echo ""
echo -e "${BLUE}Para probar la aplicación:${NC}"
echo -e "1. Ejecuta ${GREEN}./setup.sh${NC} para instalar dependencias e iniciar el servidor"
echo -e "2. Abre ${GREEN}http://localhost:5173${NC} en tu navegador"
echo -e "3. Alternativamente, abre ${GREEN}test.html${NC} para ser redirigido automáticamente"
echo "" 