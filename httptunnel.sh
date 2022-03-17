#! /bin/bash
while true; do
    nohup /usr/bin/htc --no-daemon -F 1234 $SERVERIP:8080 -k 10
    sleep 5
done