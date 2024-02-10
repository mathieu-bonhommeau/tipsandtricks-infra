#!/bin/sh

mkdir -p /etc/nginx/sites-enabled

# Copier les fichiers de configuration directement dans le dossier sites-enabled
cp /etc/nginx/sites-available/node_server.conf /etc/nginx/sites-enabled/node_server.conf
cp /etc/nginx/sites-available/webapp.conf /etc/nginx/sites-enabled/webapp.conf

nginx -g 'daemon off;'

