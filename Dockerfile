FROM arch_pwnie
RUN pacman -Syu --noconfirm
RUN mkdir /root/scripts
COPY *.sh /root/scripts
COPY stunnel.conf /etc/stunnel/stunnel.conf
CMD [ "/root/scripts/start.sh" ]