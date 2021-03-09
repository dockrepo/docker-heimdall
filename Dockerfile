FROM ghcr.io/linuxserver/heimdall:latest

LABEL maintainer="Zyao89 <zyao89@gmail.com>"

# add local files
COPY root/ /
