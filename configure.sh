#! /bin/bash
SERVERIP=$1
export SERVERIP
shopt -s extglob

for i in !(configure).sh; do
    [ -f "$i" ] || break
    chmod +x $i
    ./$i &
done                  