# Usar la imagen oficial de NGINX como base
FROM nginx:alpine

# Copiar el archivo index.html a la carpeta de NGINX
COPY ./index.html /usr/share/nginx/html/index.html

# Copiar la carpeta css al contenedor
COPY ./styles.css /usr/share/nginx/html/styles.css

# Copiar la carpeta img al contenedor
COPY ./img /usr/share/nginx/html/img

# Exponer el puerto 80
EXPOSE 80

# Iniciar NGINX
CMD ["nginx", "-g", "daemon off;"]
