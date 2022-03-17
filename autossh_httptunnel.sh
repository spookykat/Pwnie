#! /bin/bash
while true; do
    /usr/bin/autossh -p 1234 -M 0 -N -R 10222:localhost:22 -o "StrictHostKeyChecking no" root@localhost
    sleep 5
done
