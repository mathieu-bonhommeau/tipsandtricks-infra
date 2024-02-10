#!/bin/sh

mkdir /etc/nginx/sites-enabled
ln -s /etc/nginx/sites-available/node_server.conf /etc/nginx/sites-enabled/node_server.conf
ln -s /etc/nginx/sites-available/webapp.conf /etc/nginx/sites-enabled/webapp.conf

nginx -g 'daemon off;'
