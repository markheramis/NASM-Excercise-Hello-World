FROM ubuntu:20.04

RUN apt update
RUN apt -y install nasm make gcc-multilib
RUN rm -rf /var/lib/apt/lists/*
RUN mkdir /code
WORKDIR /code
ADD src/ /code

ENTRYPOINT ["tail", "-f", "/dev/null"]