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
        --init \
        --rm \
        --network=host \
        -e DISPLAY=${DISPLAY} \
    d7xdev/xeyes
```

| Run Option | Required? | Description |
| ---------- | --------- | ----------- |
| --init | No, but is convenient | Run an init inside the container that forwards signals and reaps processes. |
| --rm | No, but is convenient | Automatically remove the container when it exits. |
| --network=host | Yes | Required to forward X11 client to host display. |
| -e DISPLAY=${DISPLAY} | Yes | Required to forward X11 client to host display. |
