#! /bin/bash
SERVERIP=$1
export SERVERIP
OOBDOMAIN=$2
export OOBDOMAIN
shopt -s extglob

envsubst < "stunnel.conf" > /etc/stunnel/stunnel.conf
for i in !(configure).sh; do
    [ -f "$i" ] || break
    envsubst < $i > temp && mv temp $i
    chmod +x $i
    ./$i &
done                  