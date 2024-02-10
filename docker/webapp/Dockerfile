FROM node:18.13.0-alpine

RUN apk update && apk add --no-cache bash curl git

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

RUN echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.bashrc
RUN echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"' >> ~/.bashrc
RUN echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"' >> ~/.bashrc

ENV NVM_DIR /root/.nvm
ENV NODE_VERSION 18.13.0
RUN . $NVM_DIR/nvm.sh && nvm install $NODE_VERSION && nvm alias default $NODE_VERSION

EXPOSE 3000

WORKDIR /app

COPY . .

RUN . $NVM_DIR/nvm.sh


