FROM ubuntu:latest

RUN apt-get update
RUN apt-get update && apt-get upgrade -y

RUN apt-get -y install swig3.0 python3-dev python3-pip build-essential pkg-config libssl-dev libffi-dev libhwloc-dev libboost-dev cmake libleveldb-dev
RUN apt install python3.12-venv -y
RUN python3 -m venv qrl
RUN source qrl/bin/activate
RUN pip3 install -U setuptools

RUN pip3 install service-identity==21.1.0
RUN pip3 install -U qrl


CMD ["python3 install -U qrl"] 
