# ------------------------------------------------------
#                       Dockerfile
# ------------------------------------------------------
# image:    kubernetes-deploy
# name:     minddocdev/node-alpine-ci
# repo:     https://github.com/minddocdev/node-alpine-ci
# Requires: node:12.3.1-alpine
# authors:  development@minddoc.com
# ------------------------------------------------------
FROM node:12.3.1-alpine

# Install full icu for internationalization tests
RUN npm install --unsafe-perm -g full-icu
ENV NODE_ICU_DATA="/usr/local/lib/node_modules/full-icu"
