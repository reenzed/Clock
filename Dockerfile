FROM ubuntu:22.04

RUN apt update && \
    apt install -y --no-install-recommends \
                language-pack-en locales locales-all ca-certificates \
                zip unzip \
                git make cmake g++ \
                libgl1-mesa-dev libglvnd-dev \
    && apt clean

ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8

RUN apt install -y qt6-base-dev qt6-declarative-dev qml6-module-qtquick* \
    && apt clean

WORKDIR /tmp

CMD []
