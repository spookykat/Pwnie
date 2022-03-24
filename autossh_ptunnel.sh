#! /bin/bash
while true; do
    /usr/bin/autossh -p 8888 -M 0 -N -R 10${n}24:localhost:22 -o "StrictHostKeyChecking no" root@localhost
    sleep 5
done
