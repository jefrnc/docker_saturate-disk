#!/bin/bash

while true; do
    # Generar un archivo temporal con contenido aleatorio
    dd if=/dev/urandom of=/temp_files/temp_file bs=1M count=100

    # Dormir durante un segundo antes de generar el siguiente archivo
    sleep 1
done
