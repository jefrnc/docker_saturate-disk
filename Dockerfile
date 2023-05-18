FROM alpine

# Instalar herramientas necesarias
RUN apk add --no-cache stress-ng

# Crear una carpeta para los archivos temporales
RUN mkdir /temp_files

# Copiar script que genera los archivos temporales
COPY generate_files.sh /temp_files/generate_files.sh

# Dar permisos de ejecución al script
RUN chmod +x /temp_files/generate_files.sh

# Ejecutar el script dentro del contenedor para generar los archivos temporales
CMD ["/temp_files/generate_files.sh"]
