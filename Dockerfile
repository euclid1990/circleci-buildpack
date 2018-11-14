FROM circleci/buildpack-deps:stretch

ENV DEBIAN_FRONTEND noninteractive

RUN sudo apt-get update && \
    sudo apt-get install -y gettext-base curl && \
    sudo apt-get clean && \
    sudo rm -rf /var/cache/apt/* && \
    sudo rm -rf /var/lib/apt/lists/* && \
    sudo rm -rf /tmp/*
