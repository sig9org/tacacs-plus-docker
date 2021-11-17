FROM ubuntu:18.04

RUN apt-get update && \
    apt install -y tacacs+ && \
    apt-get clean

EXPOSE 49
ENTRYPOINT service tacacs_plus restart && bash
