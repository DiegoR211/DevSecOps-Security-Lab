# 1. Usamos una imagen base obsoleta a propósito para simular un entorno vulnerable
FROM ubuntu:18.04

# 2. Actualizamos los repositorios e instalamos un servidor web Apache y Curl
RUN apt-get update && \
    apt-get install -y apache2 curl && \
    apt-get clean

# 3. Configuramos una página web básica para verificar la red
# Escribimos un mensaje para confirmar que la conexión interna funciona
RUN echo "<h1>Prueba de conexión establecida. Servidor de pruebas iniciado.</h1>" > /var/www/html/index.html

# 4. Exponemos el puerto 80 para el tráfico web
EXPOSE 80

# 5. Arrancamos el servicio de Apache en primer plano
CMD ["apache2ctl", "-D", "FOREGROUND"]
