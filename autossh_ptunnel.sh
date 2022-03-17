#! /bin/bash
while true; do
    /usr/bin/autossh -p 8888 -M 0 -N -R 12222:localhost:22 root@localhost
    sleep 5
done