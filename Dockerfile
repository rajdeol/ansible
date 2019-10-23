# Pull Base OS Image
FROM ubuntu:18.04

MAINTAINER Rajinder Deol <deol.rajinder@gmail.com>


RUN apt-get update && apt-get install -y software-properties-common && \
    apt-add-repository --yes --update ppa:ansible/ansible && \
    apt-get install -y ansible && \
    apt-get install -y python-pip

# this is optional, hvac is required if you are using hashicorp for your
# secrect storage. Hvac is required for accessing Hasicorp vault from the container
RUN python -m pip install hvac

# this is optional utility, it is used to run dig command and update known_hosts of the container
# to avoid ssh prompt when you add new servers in your inventory
RUN apt install dnsutils

# create ansible directory for easily managing playbooks
RUN mkdir /ansible
