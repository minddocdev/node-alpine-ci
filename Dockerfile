# ------------------------------------------------------
#                       Dockerfile
# ------------------------------------------------------
# image:    node-alpine-ci
# name:     minddocdev/node-alpine-ci
# repo:     https://github.com/minddocdev/node-alpine-ci
# Requires: minddocdev/node-alpine
# authors:  development@minddoc.com
# ------------------------------------------------------
FROM minddocdev/node-alpine:14.16.0
LABEL maintainer="development@minddoc.com"

# Install extra alpine packages
RUN apk --update --no-cache add git jq python python-dev rsync zip && rm -rf /var/cache/apk/*

# Install depedencies for CI
RUN npm install --force --unsafe-perm -g yarn
