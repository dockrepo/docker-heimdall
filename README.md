# Heimdall with root

[![Docker Build Status](https://img.shields.io/docker/build/zyao89/heimdall.svg)](https://hub.docker.com/r/zyao89/heimdall) 
[![Docker Automated build](https://img.shields.io/docker/automated/zyao89/heimdall.svg)](https://hub.docker.com/r/zyao89/heimdall) 
[![Docker Stars](https://img.shields.io/docker/stars/zyao89/heimdall.svg)](https://hub.docker.com/r/zyao89/heimdall) 
[![Docker Pulls](https://img.shields.io/docker/pulls/zyao89/heimdall.svg)](https://hub.docker.com/r/zyao89/heimdall)

This Dockerfile build an image for [docker-heimdall](https://github.com/linuxserver/docker-heimdall).

## Quick Start

```shell
docker run -d \
    --name=heimdall \
    -e PUID=$UID \
    -e PGID=$GID \
    -e TZ="Asia/Shanghai" \
    -p 80:80 \
    -p 443:443 \
    -v </path/to/appdata/config>:/config \
    --restart unless-stopped \
    zyao89/heimdall
```

## Docker Compose

```yaml
---
version: "2.1"
services:
  heimdall:
    image: zyao89/heimdall
    container_name: heimdall
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Asia/Shanghai
    volumes:
      - </path/to/appdata/config>:/config
    ports:
      - 80:80
      - 443:443
    restart: unless-stopped
```

## Thanks

This docker image is based on [linuxserver/heimdall](https://hub.docker.com/r/linuxserver/heimdall)'s docker image.
