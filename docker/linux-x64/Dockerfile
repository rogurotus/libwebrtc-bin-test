FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN rm -f /etc/apt/apt.conf.d/docker-clean \
 && echo 'Binary::apt::APT::Keep-Downloaded-Packages "true";' \
    > /etc/apt/apt.conf.d/keep-cache

RUN apt update \
 && apt upgrade -y \
 && apt install -y build-essential \
                   cmake \
                   curl \
                   git \
                   libncurses5 \
                   lsb-release \
                   python \
                   pkg-config \
                   rsync

COPY build/ /root/build/
COPY Makefile VERSION /root/
COPY scripts/ /root/scripts/

RUN cd /root/ \
 && make USE_CCACHE=0 -C build linux-x64.fetch
