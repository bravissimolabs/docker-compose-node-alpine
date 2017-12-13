# bravissimolabs/docker-compose-node-alpine:6.12.1

A docker image based on the official [node:6.12.1-alpine](https://hub.docker.com/_/node/) image that also contains docker and docker-compose. Intended for use in build pipelines, therefore also includes git and bash and some image handling binaries.

Set `--build-arg NODE_TAG=xxx` when building the image to control the base node image used.
