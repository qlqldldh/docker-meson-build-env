FROM ubuntu:20.04

ARG GITHUB_USERNAME
ARG GITHUB_EMAIL
ARG PROJ_NAME

RUN apt-get update
RUN apt-get install -y sudo
RUN apt-get install -y build-essential
RUN apt-get install -y git

RUN git config --global user.name "${GITHUB_USERNAME}"
RUN git config --global user.email "${GITHUB_EMAIL}"

RUN apt-get update && apt-get install -y \
    python3.8 \
    python3-dev \
    python3-pip
RUN apt-get install ninja-build
RUN pip install ninja
RUN pip install meson

WORKDIR /usr/src/${PROJ_NAME}

RUN git init
RUN meson init
