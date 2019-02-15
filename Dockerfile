FROM node:10-alpine
MAINTAINER formio
RUN apk update && \
    apk upgrade && \
    apk add --no-cache --virtual .build-deps bash git make gcc g++ python openssh-client && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*
