FROM ubuntu:16.04
MAINTAINER Aset Madraimov <xiaset@gmail.com>
RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" > \ 
    /etc/apt/sources.list.d/webupd8team-ubuntu-java-xenial.list && \
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886 && \
    apt-get update && apt-get dist-upgrade -y && \
    echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
    apt-get install -y oracle-java8-installer && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /var/cache/oracle-jdk*
