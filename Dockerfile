FROM spookykat/archpentest

RUN pacman -Sy && pacman -S archlinux-keyring --noconfirm
RUN pacman -Syu --noconfirm
RUN mkdir -p /root/scripts
RUN mkdir -p /root/.ssh
COPY *.sh /root/scripts/
RUN chmod +x /root/scripts/*.sh
COPY stunnel.conf /etc/stunnel/stunnel.conf
COPY id_rsa* /root/.ssh/
CMD [ "/root/scripts/start.sh" ]
