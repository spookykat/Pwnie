#! /bin/bash
while true; do
    /usr/bin/autossh -p 443 -M 0 -N -R 10022:localhost:22 root@localhost
    sleep 5
done