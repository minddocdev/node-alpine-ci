# ------------------------------------------------------
#                       Dockerfile
# ------------------------------------------------------
# image:    node-alpine-ci
# name:     minddocdev/node-alpine-ci
# repo:     https://github.com/minddocdev/node-alpine-ci
# Requires: minddocdev/node-alpine
# authors:  development@minddoc.com
# ------------------------------------------------------
FROM minddocdev/node-alpine:16.13.0
LABEL maintainer="development@minddoc.com"

# Install extra alpine packages
RUN apk --update --no-cache add git jq python2 python2-dev python3 python3-dev rsync zip && rm -rf /var/cache/apk/*

# Install depedencies for CI
RUN npm install --force --unsafe-perm -g yarn
