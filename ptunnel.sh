#! /bin/bash
while true; do
    ptunnel-ng -p $SERVERIP -l 8888 -R22
    sleep 5
done