# Docker Xeyes

Simple Docker image for testing X11 with Xeyes.


## How to Build from GitHub

```
$ docker build \
        -t d7xdev/xeyes \
        -f Dockerfile.alpine \
    github.com/d7xdev/docker-xeyes
```

## How to Download from DockerHub

```
$ docker pull d7xdev/xeyes
```

## How to Run

```
$ xhost local:any_name_here_does_not_matter
$ docker run \
        --rm \
        --net=host \
        -e DISPLAY=:0 \
    d7xdev/xeyes
```
