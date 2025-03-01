#!/bin/bash

# Colors
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}=== Maia AI - Setup Script ===${NC}"
echo -e "${BLUE}This script will install dependencies and start the development server.${NC}"
echo ""

# Install dependencies
echo -e "${BLUE}Installing dependencies...${NC}"
npm install

# Check if installation was successful
if [ $? -eq 0 ]; then
    echo -e "${GREEN}Dependencies installed successfully!${NC}"
    echo ""
    
    # Start development server
    echo -e "${BLUE}Starting development server...${NC}"
    echo -e "${BLUE}The application will be available at http://localhost:5173${NC}"
    echo ""
    npm run dev
else
    echo -e "\033[0;31mError installing dependencies. Please check your npm installation.${NC}"
    exit 1
fi 