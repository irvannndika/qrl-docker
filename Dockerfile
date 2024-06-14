FROM ubuntu:latest

RUN apt-get update
RUN sudo apt update && sudo apt upgrade -y

RUN sudo apt-get -y install swig3.0 python3-dev python3-pip build-essential pkg-config libssl-dev libffi-dev libhwloc-dev libboost-dev cmake libleveldb-dev
RUN pip3 install -U setuptools

RUN pip3 install service-identity==21.1.0
RUN pip3 install -U qrl


CMD ["/usr/bin/python3", "install -U qrl"] 
