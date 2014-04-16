FROM ubuntu
MAINTAINER Brandon R. Stoner <monokrome@monokro.me>

RUN apt-get update && apt-get upgrade
RUN apt-get install -y python-software-properties python g++ make
RUN add-apt-repository -y ppa:chris-lea/node.js && apt-get update
RUN apt-get purge -y python-software-properties python g++ make
RUN apt-get install -y nodejs

