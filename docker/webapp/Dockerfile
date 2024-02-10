FROM node:18.13.0-alpine

# Installer les dépendances nécessaires
RUN apk update && \
    apk add --no-cache bash curl git

# Installer NVM
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash && \
    echo 'export NVM_DIR="/root/.nvm"' >> /root/.bashrc && \
    echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> /root/.bashrc && \
    echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"' >> /root/.bashrc

# Définir les variables d'environnement pour NVM et la version de Node.js
ENV NVM_DIR /root/.nvm
ENV NODE_VERSION 18.13.0

# Installer Node.js avec la version spécifiée
RUN . $NVM_DIR/nvm.sh && \
    nvm install $NODE_VERSION && \
    nvm alias default $NODE_VERSION

# Installer PM2 de manière globale
RUN npm install pm2 -g

# Exposer le port 3000 (le cas échéant)
EXPOSE 3000

# Définir le répertoire de travail dans le conteneur
WORKDIR /usr/src/app/webapp

# Copier les fichiers de l'application dans le conteneur
COPY . .

# Créer un répertoire pour PM2
RUN mkdir -p /pm2
ENV PM2_HOME /pm2


