# scripts_copias_seguridad
Coleccion de Scripts Linux, para realziar copias de seguridad completas bajo programación de cron.

Hace uso del comando zip, que es necesario que esté instalado en la maquina linux para su funcionamiento.

*****copiaseguridadweb.sh*****
Realiza copias de seguridad completas de los directorios especificados en su interior, y de todas las bases de datos MYSQL, separandolos en archivos zip, necesario indicar el directorio en el que se encuentran todas las paginas web.

Al Comando cd, indicar el directorio en el que se guardarán las copias de seguridad de las paginas web.

Al comando mysqldump, indicar el usuario administrador de todas las bases de datos, y la contraseña de acceso.

al comando zip, inidicar el directorio de las paginas web, para que las comprima en el directorio de las copias de seguridad.

al comando find -type f -name "*.zip" -mtime +31 -exec rm -f {} \;
donde +31 es el numero de dias que persiten las copias. (siendo siempre una copia mas que el numero que se indica en el comando).

*****copiascarpetaspersonales_generico.sh*****
Realiza copias de seguridad completas de los directorios especicados en su interior, ideal para realizar copias de seguridad completas de carpetas personales,separandolos en archivos zip.


al comando, o comandos zip, inidicar el directorio de la carpeta personal a guardar.

al comando find -type f -name "*.zip" -mtime +31 -exec rm -f {} \;
donde +31 es el numero de dias que persiten las copias. (siendo siempre una copia mas que el numero que se indica en el comando).
