#!/bin/bash

# Script para configurar proyectos_unem
# NOTA: Este script debe ejecutarse desde el directorio proyectos_unem

# Aplicar permisos (ruta relativa - requiere ejecutar desde proyectos_unem)
chmod 644 -R sites/

# Añadir a hosts solo si no existen
grep -q "web-nginx01.local" /etc/hosts || echo "127.0.0.1   web-nginx01.local" | sudo tee -a /etc/hosts
grep -q "web-nginx02.local" /etc/hosts || echo "127.0.0.1   web-nginx02.local" | sudo tee -a /etc/hosts
grep -q "portainer" /etc/hosts || echo "127.0.0.1   portainer" | sudo tee -a /etc/hosts
grep -q "traefik" /etc/hosts || echo "127.0.0.1   traefik" | sudo tee -a /etc/hosts

echo "Configuración completada!"
