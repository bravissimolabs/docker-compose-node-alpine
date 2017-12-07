ARG NODE_VERSION=alpine
FROM node:${NODE_VERSION:-alpine}

RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/main >> /etc/apk/repositories && \
    echo http://dl-cdn.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories && \
    apk add --update --no-cache docker py-pip && \
    pip install docker-compose && \
    rm -r ~/.cache/pip

CMD /bin/sh
