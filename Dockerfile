FROM ubuntu:20.04

ARG GITHUB_USERNAME
ARG GITHUB_PASSWORD

RUN apt-get update
RUN apt-get install -y sudo
RUN apt-get install -y build-essential
RUN apt-get install -y git

RUN git config --global user.name "${GITHUB_USERNAME}}"
RUN git config --global user.password "${GITHUB_PASSWORD}"

RUN apt-get update && apt-get install -y \
    python3.8 \
    python3-dev \
    python3-pip
RUN apt-get install ninja-build
RUN pip install ninja
RUN pip install meson

WORKDIR /usr/src/veritas

RUN git init
RUN meson init
