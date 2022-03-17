#! /bin/bash
while true; do
    iodine -f -P testpassword $SERVERIP $OOBDOMAIN
    sleep 5
done