FROM ubuntu:18.04

RUN apt-get update \
 && apt-get install -y m4 software-properties-common \
 && add-apt-repository -y ppa:reactos/rosbe-unix \
 && apt-get install -y rosbe-unix \
 && mkdir -p /build

WORKDIR /build

RUN git clone https://github.com/reactos/reactos.git
COPY init.sh ./
COPY build.sh ./

VOLUME /build/reactos/output-MinGW-i386
