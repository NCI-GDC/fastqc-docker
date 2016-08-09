FROM ubuntu:xenial-20160713

MAINTAINER Jeremiah H. Savage <jeremiahsavage@gmail.com>

USER root

RUN apt-get update && apt-get install -y --force-yes \
    openjdk-8-jre \
    unzip \
    wget

RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
    
WORKDIR /usr/local/

RUN wget http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.5.zip \
    && unzip fastqc_v0.11.5.zip \
<<<<<<< HEAD
    && rm *.zip \
    && chmod 755 FastQC/fastqc
=======
    && rm *.zip

RUN chmod +x  ${HOME}/tools/FastQC/fastqc

WORKDIR ${HOME}

ENV fastqc_docker 0.1

RUN pip install --user virtualenvwrapper \
    && /bin/bash -c "source ${HOME}/.local/bin/virtualenvwrapper.sh \
    && mkvirtualenv --python=/usr/bin/python3 p3 \
    && pip install ipython pandas sqlalchemy \
    && echo source ${HOME}/.local/bin/virtualenvwrapper.sh >> ${HOME}/.bashrc \
    && echo source ${HOME}/.virtualenvs/p3/bin/activate >> ${HOME}/.bashrc"
>>>>>>> 0d0456b439d50f1133ebdfa1ab8d91935f685a0d
