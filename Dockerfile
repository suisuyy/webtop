FROM linuxserver/webtop:arch-xfce

ARG TARGETARCH
RUN pacman -Sy
RUN pacman -S --noconfirm ttyd chromium


EXPOSE 80
WORKDIR /root

CMD ["/bin/ttyd","-p" ,"81","/bin/bash"]
