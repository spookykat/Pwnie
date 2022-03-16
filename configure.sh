#! /bin/bash
SERVERIP=$1
export SERVERIP

envsubst < stunnel.conf > /etc/stunnel/stunnel.conf

envsubst < httptunnel.service > /etc/systemd/system/httptunnel.service
envsubst < ptunnel.service > /etc/systemd/system/ptunnel.service
envsubst < iodine.service > /etc/systemd/system/iodine.service

cp autossh_httptunnel.service /etc/systemd/system/autossh_httptunnel.service
cp autossh_ptunnel.service /etc/systemd/system/autossh_stunnel.service
cp autossh_ptunnel.service /etc/systemd/system/autossh_stunnel.service
cp stunnel.service /etc/systemd/system/stunnel.service

systemctl enable httptunnel
systemctl enable ptunnel
systemctl enable iodine
systemctl enable autossh_httptunnel
systemctl enable autossh_ptunnel
systemctl enable autossh_stunnel
systemctl enable stunnel

systemctl start httptunnel
systemctl start ptunnel
systemctl start iodine
systemctl start autossh_httptunnel
systemctl start autossh_ptunnel
systemctl start autossh_stunnel
systemctl start stunnel