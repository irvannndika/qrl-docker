FROM ubuntu:latest

RUN apt-get update
RUN apt-get update && apt-get upgrade -y

RUN apt-get -y install swig3.0 python3-dev python3-pip build-essential pkg-config libssl-dev libffi-dev libhwloc-dev libboost-dev cmake libleveldb-dev
RUN apt install python3.12-venv -y
 
