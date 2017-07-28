#!/bin/bash
docker run -d \
-p 137:137/udp \
-p 138:138/udp \
-p 139:139 \
-p 445:445 \
-p 445:445/udp \
--restart='always' \
--hostname 'openhab-docker' \
--volumes-from openhab \
-v /home/pi/docker_custom:/home/pi/docker_custom \
--name samba mikecrisis/rpi-samba:v3 \
-u "mikecrisis69:robateau" \
-s "Scripts:/home/pi/docker_custom:rw:mikecrisis69" \
-s "OpenHAB:/openhab/:rw:mikecrisis69"