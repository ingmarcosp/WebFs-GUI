#! /bin/bash
killall webfsd
zenity --notification\
          --window-icon="info" \
          --text="!WebFS Terminado!"
exit
