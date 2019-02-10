FROM node:latest

RUN set -xe \
    && apt-get update \
    && apt-get -yq install bash git openssh-server autoconf automake gcc \
    && npm install -g npm \
    && apt-get -yq clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && git --version && bash --version && ssh -V && npm -v && node -v && yarn -v && autoconf -V && automake --version \
        && gcc --version
