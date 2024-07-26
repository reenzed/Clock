FROM ubuntu:22.04

RUN apt update && \
    apt install -y --no-install-recommends \
                ca-certificates \
                zip unzip \
                git make cmake g++ \
                libgl1-mesa-dev \
    && apt clean

RUN apt install -y qt6-base-dev qt6-declarative-dev qml6-module-qtquick* \
    && apt clean

WORKDIR /tmp

CMD []
