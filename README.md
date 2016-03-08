## WhatsAppDesktopDockerImage

This repository contains **Dockerfile** of [Ubuntu Desktop (Xfce4)](http://xfce.org/) for [Docker](https://www.docker.com/)'s. 
It than installs the [WhatsApp Desktop client](https://github.com/Aluxian/WhatsApp-Desktop/).


### Base Docker Image

* [ubuntu:14.04](https://registry.hub.docker.com/_/ubuntu/)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Build an image from Dockerfile: `docker build -t="easterwood/whatsappdesktop" github.com/easterwood/WhatsAppDesktopDockerImage`)


### Usage


	docker run -p 5900:5900 easterwood/whatsappdesktop

If you local user is 'myusername' and your uid is '1000' and you want map your /home/myusername in Docker:


	docker run -p 5900:5900 -e SPICE_USER=myusername -e SPICE_UID=1000 -v /home/myusername:/home/myusername -e SPICE_PASSWD="azerty" -e SPICE_LOCAL="fr_FR.UTF-8" -e SPICE_RES="1366x768" gauthierc/dockerspicexfce4

Connect via Spice client 
	
	remote-viewer spice://localhost:5900

The default password is 'password'.

