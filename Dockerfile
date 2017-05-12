####################################################################
#
# Docker image to run Udacity SDC-ND Term 2 Project 4 PID Controller
#
####################################################################

FROM ubuntu:16.04

LABEL maintainer https://github.com/AndreaIncertiDelmonte

RUN apt-get update && apt-get install -y --no-install-recommends \
        build-essential \
        cmake \
        git \
        wget \
        libssl-dev \
	libuv1-dev && \      
	rm -rf /var/lib/apt/lists/*

WORKDIR /src

COPY uWebSockets/ ./uWebSockets

RUN cd uWebSockets && \ 
    git checkout e94b6e1 && \ 
    mkdir build && \ 
    cd build && \
    cmake .. && \ 
    make && \ 
    make install && \
    ln -s /usr/lib64/libuWS.so /usr/lib/libuWS.so

WORKDIR /src/second_term


