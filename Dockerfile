ARG NODE_TAG=alpine
FROM node:${NODE_TAG:-alpine}

RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/main >> /etc/apk/repositories && \
    echo http://dl-cdn.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories && \
    echo http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories && \
    apk add --update --no-cache docker py-pip build-base git bash automake autoconf nasm zlib-dev libpng-dev libwebp-dev libjeg-turbo-dev && \
    pip install docker-compose && \
    rm -r ~/.cache/pip

CMD /bin/bash
