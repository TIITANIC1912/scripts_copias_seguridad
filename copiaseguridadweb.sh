#!/bin/sh
#COMANDO PARA EXTRAER LA BASE DE DATOS DE MYSQL, ESPEFICICAR RUTA DE LA COPIA DE SEGURIDAD.
mysqldump --user=usuario --password=contraseña --events --all-databases > /DIRECTORIORESPALDOS/RESPALDO.sql
#CAMBIAR POR TUTA EN LA QUE SE GUARDAN LAS COPIAS DE SEGURIDAD.
cd /DIRECTORIORESPALDOS
#COMANDO DE EMPAQUETADO DE LA BASE DE DE DATOS
zip -r RESPALDO_MYSQL_$(date +%d%m%y).tgz *.sql  >> /var/log/COPIAS_SEGURIDAD.log
echo Empaquetado De MYSQL Finalizado >> /var/log/COPIAS_SEGURIDAD.log
echo Empaquetado De MYSQL Finalizado
#ESTE COMANDO BUSCARA EL ARCHIVO DE BASE DE DATOS NO EMPAQUETADO PARA BORRARLO
find -type f -name "*.sql" -exec rm -f {} \;
#COMANDO PARA EMPAQUETAR LA CARPETAS DE LAS WEB, SE RECOMIENDA INDICAR LA RUTA
#EN LA QUE ESTA LA RAIZ DE TODAS LAS WEB P.E. /var/www/html/
zip -r RESPALDO_WEB_$(date +%d%m%y).tgz /var/www/html/ >> /var/log/COPIAS_SEGURIDAD.log
echo Empaquetado De Paginas Web Finalizado >> /var/log/COPIAS_SEGURIDAD.log
echo Empaquetado De Paginas Web Finalizado
#COMANDO QUE BUSCARA LOS ARCHIVOS DE RESPALDO MAS ANTIGUOS DE X DIAS, PUEDES CAMBIAR EL -mtime +n
#A SEGUN EL NUMERO DE DIAS QUE QUIERES QUE CONSERVE LOS RESPALDOS.
#OJO: SE SUELE GUARDAR UNO MAS AL NUMERO.
find -type f -name "*.zip" -mtime +31 -exec rm -f {} \;
#FIN DEL SCRIPT LINEAS Y LINEAS DE CREDITOS
echo Script finalizado >> /var/log/COPIAS_SEGURIDAD.log
echo Script finalizado
echo >> /var/log/COPIAS_SEGURIDAD.log
echo 
echo SCRIPT CREADO POR: TIITANIC_1912 >> /var/log/COPIAS_SEGURIDAD.log
echo SCRIPT CREADO POR: TIITANIC_1912