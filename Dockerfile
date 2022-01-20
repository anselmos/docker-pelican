FROM ubuntu:trusty

MAINTAINER Github.com/Anselmos

RUN apt-get update && apt-get update --fix-missing && \
    apt-get install -y wget ssh rsync make lftp && \
    apt-get purge -y python-pip && \
    apt-get install -y python python-dev libffi-dev libssl-dev && \
    wget https://bootstrap.pypa.io/get-pip.py && \
    python /get-pip.py
