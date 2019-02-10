FROM node:alpine

RUN set -xe \
    && apk add --no-cache bash git openssh autoconf automake gcc \
    && npm install -g npm \
    && git --version && bash --version && ssh -V && npm -v && node -v && yarn -v && autoconf -V && automake --version \
        && gcc --version
