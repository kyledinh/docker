#FROM ubuntu:18.10
FROM goyalzz/ubuntu-java-8-maven-docker-image

MAINTAINER Kyle Dinh <kyledinh@gmail.com>
#RUN apt-get install software-properties-common
#RUN add-apt-repository ppa:mmk2410/intellij-idea-community
#RUN apt-get install -y intellij-idea-community

# Install LXDE, VNC server, XRDP and Firefox
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  firefox \
  lxde-core \
  lxterminal \
  tightvncserver \
  xrdp \
  snapd

# Set user for VNC server (USER is only for build)
ENV USER root
# Set default password
COPY password.txt .
RUN cat password.txt password.txt | vncpasswd && \
  rm password.txt
# Expose VNC port
EXPOSE 5901

# Set XDRP to use TightVNC port
RUN sed -i '0,/port=-1/{s/port=-1/port=5901/}' /etc/xrdp/xrdp.ini

# Copy VNC script that handles restarts
COPY vnc.sh /opt/
CMD ["/opt/vnc.sh"]
