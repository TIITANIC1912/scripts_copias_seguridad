#!/bin/sh
#CAMBIAR POR TUTA EN LA QUE SE GUARDAN LAS COPIAS DE SEGURIDAD.
cd /rutadirectoriodebackups
#COMANDO PARA EMPAQUETAR LA CARPETAS DE LAS WEB, SE RECOMIENDA INDICAR LA RUTA
#EN LA QUE ESTA LA RAIZ DE TODAS LAS WEB P.E. /var/www/html/
zip -r carpetapersonal1_$(date +%d%m%y).zip "/rutacarpetapersonal1" >> /var/log/COPIAS_SEGURIDAD.log
zip -r carpetapersonal2_$(date +%d%m%y).zip "/rutacarpetapersonal2" >> /var/log/COPIAS_SEGURIDAD.log
echo Empaquetado De Carpetas Personales Finalizado. >> /var/log/COPIAS_SEGURIDAD.log
echo Empaquetado De Carpetas Personales Finalizado. 
#COMANDO QUE BUSCARA LOS ARCHIVOS DE RESPALDO MAS ANTIGUOS DE X DIAS, PUEDES CAMBIAR EL -mtime +n
#A SEGUN EL NUMERO DE DIAS QUE QUIERES QUE CONSERVE LOS RESPALDOS.
#OJO: SE SUELE GUARDAR UNO MAS AL NUMERO.
find -type f -name "*.zip" -mtime +3 -exec rm -f {} \;
#FIN DEL SCRIPT LINEAS Y LINEAS DE CREDITOS
echo Script finalizado >> /var/log/COPIAS_SEGURIDAD.log
echo Script finalizado
echo >> /var/log/COPIAS_SEGURIDAD.log
echo 
echo SCRIPT CREADO POR: TIITANIC_1912 >> /var/log/COPIAS_SEGURIDAD.log
echo SCRIPT CREADO POR: TIITANIC_1912