#! /bin/bash
while true; do
    /usr/bin/autossh -p 443 -M 0 -N -R 10$n22:localhost:22 -o "StrictHostKeyChecking no" root@localhost
    sleep 5
done
