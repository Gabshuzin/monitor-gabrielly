#!/bin/bash

#Variaveis
LOG_ONLINE=~/nginx_monitor/script_nginx_online.log
LOG_OFFLINE=~/nginx_monitor/script_nginx_offline.log

#Data e Hora
DATA_HORA=$(date '+%Y-%m-%d %H:%M:%S')

#Status do Nginx
STATUS=$(systemctl is-active nginx)


if [ "$STATUS" == "active" ]; then

   echo "$DATA_HORA - Nginx - ONLINE - O serviço está funcionando corretamente." >> "$LOG_ONLINE"
else
   echo "$DATA_HORA - Nginx - OFFLINE - O serviço está parado." >> "$LOG_OFFLINE"
fi
