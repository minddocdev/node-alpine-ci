# node-alpine-ci
CI Node image with `node`, the `full-icu` npm package and other apk packages like `jq` and `rsync`. 

```sh
docker run -it minddocdev/node-alpine-ci
```

## Docker Hub

### `docker pull`

You can pull the image from Docker Hub using the `docker pull minddocdev/node-alpine-ci` command. We are using [automated build set up](https://docs.docker.com/docker-hub/builds/#create-an-automated-build).

```sh
docker pull minddocdev/node-alpine-ci
```

### `docker run`

To jump into the container's `bash` shell, run `docker run -it minddocdev/node-alpine-ci`.

If you want to load a volume, you can execute:

```
$ docker run --rm --workdir /app --volume "$PWD:/app" --interactive --tty minddocdev/node-alpine-ci /bin/bash
## Or using shorthand flags
$ docker run -w /app -v "$PWD:/app" -it minddocdev/node-alpine-ci /bin/bash
## Install dependencies and run tests with npm
root@c0ff3e:/app# npm i && npm t
```

It's also likely that you don't want to jump into `bash`, because you understand already how things work and you just want to execute your e2e test suite.

To run the tests using one npm script (for example, if you have `npm install` in your `pretest` script), run:

```
docker run --rm -w /app -v "$PWD:/app" -t minddocdev/node-alpine-ci npm test
```

### `docker build`

You can also build the image yourself. Checkout the repository

```
$ git clone https://github.com/minddocdev/node-alpine-ci
$ cd node-alpine-ci
$ docker build -t minddocdev/node-alpine-ci:latest .
$ docker images minddocdev/node-alpine-ci
```

# Links

- [Docker Hub `minddocdev/node-alpine-ci`](https://hub.docker.com/r/minddocdev/node-alpine-ci/)
- [GitHub `minddocdev/node-alpine-ci`](https://github.com/minddocdev/node-alpine-ci)
