FROM ubuntu:xenial-20160809

MAINTAINER Jeremiah H. Savage <jeremiahsavage@gmail.com>

USER root

RUN apt-get update && apt-get install -y \
    openjdk-8-jre \
    perl-modules \
    unzip \
    wget

RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN wget http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.5.zip \
    && unzip fastqc_v0.11.5.zip \
    && rm *.zip \
    && mv FastQC /usr/local/ \
    && chmod 755 /usr/local/FastQC/fastqc