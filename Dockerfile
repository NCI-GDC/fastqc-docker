FROM ubuntu:artful-20171019

MAINTAINER Jeremiah H. Savage <jeremiahsavage@gmail.com>

RUN apt-get update \
    && apt-get install -y \
       openjdk-8-jre-headless \
       perl-modules \
       unzip \
       wget \
    && apt-get clean \
    && wget http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.5.zip \
    && unzip fastqc_v0.11.5.zip \
    && rm *.zip \
    && mv FastQC /usr/local/ \
    && chmod 755 /usr/local/FastQC/fastqc \
    && sed -i 's/assistive_technologies/#assistive_technologies/' /etc/java-8-openjdk/accessibility.properties \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*