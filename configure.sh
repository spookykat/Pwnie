#! /bin/bash
SERVERIP=$1
export SERVERIP
OOBDOMAIN=$2
export OOBDOMAIN
shopt -s extglob


for i in !(configure).sh *.conf; do
    [ -f "$i" ] || break
    envsubst < $i > $i.temp && mv $i.temp $i
done