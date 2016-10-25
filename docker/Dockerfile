FROM ubuntu:xenial-20161010

MAINTAINER Jeremiah H. Savage <jeremiahsavage@gmail.com>

RUN apt-get update \
    && apt-get install -y \
       openjdk-8-jre \
       perl-modules \
       unzip \
       wget \
    && apt-get clean \
    && wget http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.5.zip \
    && unzip fastqc_v0.11.5.zip \
    && rm *.zip \
    && mv FastQC /usr/local/ \
    && chmod 755 /usr/local/FastQC/fastqc \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
