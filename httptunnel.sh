#! /bin/bash
while true; do
    sudo -u hackerman bash -c '/usr/bin/htc --no-daemon -F 1234 $SERVERIP:8080 -k 10'
    sleep 5
done