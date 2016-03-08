# Xubuntu-Desktop in Spice Docker
# To build:
# 1) Install docker (http://docker.io)
# 2) Run:
# docker run -d <imageid>
#
# VERSION                0.3
# DOCKER-VERSION        1.3.2

FROM        ubuntu:14.04
MAINTAINER Gauthier C.
run        apt-get update && apt-get -y install software-properties-common 
run	   add-apt-repository ppa:serge-hallyn/virt &&  apt-get update
run        DEBIAN_FRONTEND=noninteractive  apt-get upgrade -y
run	   DEBIAN_FRONTEND=noninteractive  apt-get -y install xserver-xspice x11-xserver-utils
run        DEBIAN_FRONTEND=noninteractive  apt-get update && apt-get -y --no-install-recommends install xfce4
run        DEBIAN_FRONTEND=noninteractive  apt-get update && apt-get -y --no-install-recommends install tango-icon-theme xfce4-notifyd xfce4-terminal xfce4-artwork xubuntu-icon-theme
run        apt-get -y install wget
run        wget http://github.com/Aluxian/WhatsApp-Desktop/releases/download/v1.1.0/UnofficialWhatsApp_linux64.deb
run        apt-get -y install libnss3
run        apt-get -y install libgconf-2-4
run        apt-get -y install libXtst6
run        dpkg -i UnofficialWhatsApp_linux64.deb
COPY	   spiceqxl.xorg.conf /etc/X11/	   
COPY	   resolution.desktop /etc/xdg/autostart/
COPY	   keyboard.desktop /etc/xdg/autostart/
COPY 	   run.sh	/root/
VOLUME	   ["/home"]
EXPOSE     5900
CMD        /root/run.sh
