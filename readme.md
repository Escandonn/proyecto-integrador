Aquí tienes los comandos que necesitas para construir y ejecutar la imagen de Docker con el contenido de tu `Dockerfile`:

### 1. **Construir la imagen de Docker**
Este comando construye la imagen de Docker a partir del `Dockerfile`. Asegúrate de estar en el mismo directorio donde tienes tu `Dockerfile`, `index.html`, `styles.css` y la carpeta `img`.

```bash
docker build -t mi-nginx-imagen .
```

Aquí, `-t mi-nginx-imagen` asigna un nombre (`mi-nginx-imagen`) a la imagen. El punto (`.`) indica el contexto de construcción, es decir, el directorio actual.

### 2. **Ejecutar el contenedor**
Una vez que la imagen se ha construido correctamente, puedes ejecutar el contenedor usando el siguiente comando:

```bash
docker run -d -p 8080:80 mi-nginx-imagen
```

- `-d` ejecuta el contenedor en modo *desacoplado* (en segundo plano).
- `-p 8080:80` mapea el puerto 80 del contenedor al puerto 8080 de tu máquina local. De este modo, podrás acceder a la aplicación web en `http://localhost:8080`.
- `mi-nginx-imagen` es el nombre de la imagen que has creado.

### 3. **Verificar el contenedor en ejecución**
Para verificar que el contenedor está corriendo, usa el siguiente comando:

```bash
docker ps
```

Esto te mostrará una lista de los contenedores activos y el puerto mapeado.

### 4. **Detener el contenedor**
Si deseas detener el contenedor en ejecución, puedes hacerlo con el comando:

```bash
docker stop <container_id>
```

Donde `<container_id>` es el identificador del contenedor que puedes obtener con `docker ps`.

¡Con esto deberías tener todo listo para correr tu aplicación en NGINX dentro de Docker!# proyecto-integrador
