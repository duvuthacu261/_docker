# FROM: base on this image
FROM ubuntu:12.04

# MAINTAINER: Dockerfile author
MAINTAINER Lam Dang Tung

# ENV: to set an environment variable
ENV USER root
ENV HOME /root

# RUN: run a command
RUN apt-get update
RUN apt-get install -y openssh-server 
RUN mkdir /var/run/sshd
RUN echo "root:123456" | chpasswd

# EXPOSE: exposes port for container
EXPOSE 22

# ENTRYPOINT: make container executable with command
ENTRYPOINT /usr/sbin/sshd -D
