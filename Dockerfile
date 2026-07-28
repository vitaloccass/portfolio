# Image légère basée sur Nginx pour servir un site statique
FROM nginx:alpine

# Supprime la config par défaut et copie le site dans le dossier servi par Nginx
RUN rm -rf /usr/share/nginx/html/*
COPY index.html /usr/share/nginx/html/index.html

# Nginx écoute sur le port 80 par défaut
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
