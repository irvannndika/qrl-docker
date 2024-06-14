FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y python-dev python-pip git


RUN pip install --upgrade pip
RUN git clone https://github.com/theQRL/QRL /QRL
RUN pip install -r /QRL/requirements.txt

VOLUME /QRL /data
WORKDIR /data

CMD ["/usr/bin/python", "/QRL/main.py"] 
