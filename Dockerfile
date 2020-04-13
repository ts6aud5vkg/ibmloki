FROM ubuntu:16.04

# Upgrade base system
RUN apt-get update
WORKDIR /venv
COPY ubuntu_ibm.sh /venv
RUN chmod a+x /venv/*
CMD ./ubuntu_ibm.sh
