# Docker Image for Meson-build Developing Environment

## Build

```sh
docker build -t {img-name} --build-arg GITHUB_USERNAME={username} --build-arg GITHUB_PASSWORD={password} --build-arg PROJ_NAME={project-name}.
```

## Create Container

```sh
docker container create --name {container-name} -it {img-name}
```

## Start Container

```sh
docker container start {container-name}
```

## Stop Container

```sh
docker container stop {container-name}
```
