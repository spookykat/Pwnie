#! /bin/bash
while true; do
    /usr/bin/autossh -p 443 -M 20000 -N -R 10022:localhost:22 root@localhost
    sleep 5
done