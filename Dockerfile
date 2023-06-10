FROM linuxserver/webtop:arch-xfce

ARG TARGETARCH
RUN pacman -Sy
RUN pacman -S --noconfirm ttyd chromium


EXPOSE 3000
WORKDIR /root

CMD ["/bin/ttyd","-p" ,"80","/bin/bash"]
