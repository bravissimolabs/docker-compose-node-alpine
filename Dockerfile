ARG NODE_TAG=alpine
FROM node:${NODE_TAG:-alpine}

RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/main >> /etc/apk/repositories && \
    echo http://dl-cdn.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories && \
    apk add --update --no-cache docker curl bash

RUN curl -L --fail https://github.com/docker/compose/releases/download/1.17.0/run.sh -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose

CMD /bin/sh
