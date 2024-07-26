FROM ubuntu:22.04
RUN apt update
RUN apt install -y zip unzip
RUN apt install -y cmake gcc
RUN apt install -y qt6-base-dev
RUN apt install -y qml6-module-qtquick*
