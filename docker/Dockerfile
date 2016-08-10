FROM ubuntu:xenial-20160713

MAINTAINER Jeremiah H. Savage <jeremiahsavage@gmail.com>

USER root

ENV fastqc_docker 0.1

RUN apt-get update && apt-get install -y --force-yes \
    openjdk-8-jre \
    perl-modules \
    unzip \
    wget

RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
    
WORKDIR /usr/local/

RUN wget http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.5.zip \
    && unzip fastqc_v0.11.5.zip \
    && rm *.zip \
    && chmod 755 FastQC/fastqc