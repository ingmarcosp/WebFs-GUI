#! /bin/bash

## Zenity


ruta=`zenity --title="WEBFS - HTTP FILE SHARING www.psixofxp.com" --file-selection --directory`
port=`zenity --list --title="WEBFS - HTTP FILE SHARING www.psicofxp.com" --width="520" --height="400" --text="Seleccione el puerto que desea utilizar" --radiolist --column "Usar" --column "Puerto" --editable TRUE 2000 FALSE 8001 FALSE 8002 FALSE 8003 FALSE 8004 FALSE 8005 FALSE 8006 FALSE 8007 FALSE 8008 FALSE 8009 FALSE 8010`
user=`zenity --title="WEBFS - HTTP FILE SHARING www.psixofxp.com" --entry --text="Si desea utilizar seguridad en el servidor coloque usuario y contraseña de la siguiente manera USER:PASS (recomendado)_"`

webfsd -r $ruta -p $port -b $user

#saber ip
MYIP=`/sbin/ifconfig eth0 | grep inet | cut -f2 -d ":" | cut -f1 -d " "`

gdialog --msgbox "
Directorio Compartido: $ruta

Puerto: $port
User:Pass: $user
Acceso: $own

Direccion Remota: http://$MYIP:$port

Autor: Leandro Bergero
http://www.psicofxp.com
Colaboracion: koxmoz kox (suselife.wordpress.com)"

zenity --notification\
          --window-icon="info" \
          --text="!Esta compartiendo $ruta con WebFS!"
exit 
