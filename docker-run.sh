#!/bin/bash
docker run -d \
-p 137:137/udp \
-p 138:138/udp \
-p 139:139 \
-p 445:445 \
-p 445:445/udp \
--restart='always' \
--hostname 'openhab-docker' \
-v /media/stick:/share/stick \
-v /home/pi/docker_custom:/home/pi/docker_custom \
-v /opt/openhab/:/openhab \
--name samba mikecrisis/rpi-samba:v3 \
-u "mikecrisis69:robateau" \
-s "Scripts:/home/pi/docker_custom:rw:mikecrisis69" \
-s "Openhab:/openhab:rw:mikecrisis69" \
-s "Stick:/share/stick/:rw:mikecrisis69"
#--volumes-from openhab \
