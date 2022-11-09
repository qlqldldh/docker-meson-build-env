# Docker Image for Meson-build Developing Environment

## Build

```sh
docker build -t {img-name} --build-arg GITHUB_USERNAME={username} --build-arg GITHUB_PASSWORD={password} .
```

## Create Container

```sh
docker run --name {container-name} -it {img-name} -d
```

## Run Container

```sh
docker container start {container-name}
```
