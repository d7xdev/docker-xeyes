# Docker Xeyes

Simple Docker image for testing X11 with Xeyes.


# How to Build

```
docker build \
        -t d7xdev/xeyes \
        -f Dockerfile.alpine \
    github.com/d7xdev/docker-xeyes
```


# How to Run

```
xhost local:root
docker run \
        --rm \
        --net=host \
        -e DISPLAY=:0 \
    d7xdev/xeyes
```
