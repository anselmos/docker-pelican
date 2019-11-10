FROM ubuntu:trusty

MAINTAINER Github.com/Anselmos

RUN apt-get update
RUN apt-get update --fix-missing
RUN apt-get install -y wget ssh rsync make lftp
RUN apt-get purge -y python-pip
RUN apt-get install -y python
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python /get-pip.py

RUN pip install pelican==3.7.1
RUN pip install Markdown==2.6.8
RUN pip install Fabric==1.13.1 BeautifulSoup4 redis
RUN apt-get install -y python-dev
# fix for iffi problem
RUN apt-get install -y libffi-dev
# fix for openssl not in docker-image
RUN apt-get install -y libssl-dev
# fix for "no-module-named-packaging-version"
