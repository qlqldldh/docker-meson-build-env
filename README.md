# Docker Image for Meson-build Developing Environment

## Build

```sh
docker build -t {img-name} --build-arg GITHUB_USERNAME={username} --build-arg GITHUB_PASSWORD={password} .
```

## Create Container

```sh
docker run --name {container-name} {img-name}
```

## Run Container

```sh
docker container start {container-name}
```
