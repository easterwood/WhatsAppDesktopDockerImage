# Xubuntu-Desktop in Spice Docker
# To build:
# 1) Install docker (http://docker.io)
# 2) Run:
# docker run -d <imageid>
#
# VERSION                0.3
# DOCKER-VERSION        1.3.2

FROM       gauthierc/dockerspicexfce4
MAINTAINER Alex.
run        apt-get -y update
run        apt-get -y install wget
run        wget http://github.com/Aluxian/WhatsApp-Desktop/releases/download/v1.1.0/UnofficialWhatsApp_linux64.deb
run        apt-get -y install libnss3
run        apt-get -y install libgconf-2-4
run        apt-get -y install libXtst6
run        dpkg -i UnofficialWhatsApp_linux64.deb
ENV        SPICE_LOCAL "en_EN.UTF-8"
ENV        SUDO "user"