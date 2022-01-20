FROM ubuntu:20.04

MAINTAINER Github.com/Anselmos

RUN apt-get update && apt-get update --fix-missing && \
    apt-get purge -y python python-pip && \
    apt-get install -y make python3 python3-pip python3-dev libffi-dev libssl-dev && \
    pip install --upgrade pip && \
    pip install pelican==3.7.1 Markdown==2.6.8 Fabric==1.13.1 BeautifulSoup4 redis && \
    rm -rf /var/lib/apt/lists/*
ENV PYTHONDONTWRITEBYTECODE=true

WORKDIR "/data"
ENTRYPOINT "pelican"
