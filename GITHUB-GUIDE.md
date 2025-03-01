# Guía para GitHub y Despliegue - Maia AI

## Parte 1: Subir el Proyecto a GitHub

### Paso 1: Crear un Repositorio en GitHub

1. Inicia sesión en tu cuenta de [GitHub](https://github.com/)
2. Haz clic en el botón "+" en la esquina superior derecha y selecciona "New repository"
3. Nombra tu repositorio (por ejemplo, "maia-ai")
4. Opcionalmente, añade una descripción: "Maia AI - Transformando la venta inmobiliaria con IA"
5. Elige la visibilidad (público o privado)
6. No inicialices el repositorio con README, .gitignore o licencia
7. Haz clic en "Create repository"

### Paso 2: Inicializar Git en tu Proyecto Local

Abre una terminal en la carpeta de tu proyecto y ejecuta:

```bash
# Inicializar un repositorio Git local
git init

# Añadir todos los archivos al área de preparación
git add .

# Crear el primer commit
git commit -m "Versión inicial de Maia AI"
```

### Paso 3: Conectar y Subir a GitHub

GitHub te mostrará los comandos necesarios después de crear el repositorio. Serán similares a estos:

```bash
# Conectar tu repositorio local con el remoto
git remote add origin https://github.com/TU-USUARIO/maia-ai.git

# Subir tu código al repositorio remoto
git push -u origin main
```

Nota: Dependiendo de tu configuración, puede que necesites usar `master` en lugar de `main`.

## Parte 2: Desplegar el Sitio

Tienes varias opciones para desplegar tu sitio Vue.js. Aquí te muestro las más populares:

### Opción 1: GitHub Pages

1. Instala el paquete gh-pages:
   ```bash
   npm install --save-dev gh-pages
   ```

2. Añade estos scripts a tu `package.json`:
   ```json
   "scripts": {
     "deploy": "npm run build && gh-pages -d dist"
   }
   ```

3. Configura la base URL en `vite.config.js`:
   ```javascript
   export default defineConfig({
     base: '/maia-ai/',  // Reemplaza 'maia-ai' con el nombre de tu repositorio
     // resto de tu configuración...
   })
   ```

4. Despliega tu sitio:
   ```bash
   npm run deploy
   ```

5. Configura GitHub Pages en tu repositorio:
   - Ve a Settings > Pages
   - Selecciona la rama `gh-pages` como fuente
   - Guarda los cambios

6. Tu sitio estará disponible en: `https://TU-USUARIO.github.io/maia-ai/`

### Opción 2: Netlify (Recomendado)

1. Crea una cuenta en [Netlify](https://www.netlify.com/)
2. Haz clic en "New site from Git"
3. Selecciona GitHub y autoriza a Netlify
4. Selecciona tu repositorio maia-ai
5. Configura:
   - Build command: `npm run build`
   - Publish directory: `dist`
6. Haz clic en "Deploy site"

Netlify desplegará automáticamente tu sitio y te dará una URL (por ejemplo, `https://maia-ai.netlify.app`). Cada vez que hagas push a GitHub, Netlify actualizará automáticamente tu sitio.

### Opción 3: Vercel

1. Crea una cuenta en [Vercel](https://vercel.com/)
2. Haz clic en "New Project"
3. Importa tu repositorio de GitHub
4. Configura:
   - Framework Preset: Vue.js
   - Build Command: `npm run build`
   - Output Directory: `dist`
5. Haz clic en "Deploy"

Vercel desplegará tu sitio y te dará una URL (por ejemplo, `https://maia-ai.vercel.app`).

## Parte 3: Actualizar tu Sitio

Para actualizar tu sitio después de hacer cambios:

1. Realiza tus cambios localmente
2. Añade y haz commit de los cambios:
   ```bash
   git add .
   git commit -m "Descripción de los cambios"
   ```
3. Sube los cambios a GitHub:
   ```bash
   git push
   ```

Si estás usando Netlify o Vercel, tu sitio se actualizará automáticamente. Si estás usando GitHub Pages, necesitarás ejecutar `npm run deploy` nuevamente.

## Parte 4: Dominio Personalizado (Opcional)

Si deseas usar tu propio dominio (por ejemplo, `www.maiavr.cl`):

### Para Netlify:
1. Ve a tu sitio en Netlify
2. Navega a Domain settings > Add custom domain
3. Sigue las instrucciones para configurar los registros DNS

### Para Vercel:
1. Ve a tu proyecto en Vercel
2. Navega a Settings > Domains
3. Añade tu dominio y sigue las instrucciones

### Para GitHub Pages:
1. Ve a Settings > Pages
2. En la sección "Custom domain", añade tu dominio
3. Configura los registros DNS según las instrucciones

---

© 2024 Maia AI 