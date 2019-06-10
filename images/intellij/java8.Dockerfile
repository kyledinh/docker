#FROM ubuntu:18.10
#FROM java:8
FROM adoptopenjdk/openjdk8:jdk8u212-b03

MAINTAINER Kyle Dinh <kyledinh@gmail.com>

# Install LXDE, VNC server, XRDP and Firefox
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  firefox \
  lxde-core \
  lxterminal \
  tightvncserver \
  xrdp

# Set user for VNC server (USER is only for build)
ENV USER root
# Set default password
COPY password.txt .
RUN cat password.txt password.txt | vncpasswd && \
  rm password.txt
# Expose VNC port
EXPOSE 5901

RUN mkdir /opt/intellij
RUN mkdir /opt/tar

COPY tar/ideaIC-2019.1.3-no-jbr.tar.gz /opt/tar/
RUN tar xzvf /opt/tar/ideaIC-2019.1.3-no-jbr.tar.gz --directory /opt/intellij

# Set XDRP to use TightVNC port
RUN sed -i '0,/port=-1/{s/port=-1/port=5901/}' /etc/xrdp/xrdp.ini

# Copy VNC script that handles restarts
COPY vnc.sh /opt/
CMD ["/opt/vnc.sh"]
