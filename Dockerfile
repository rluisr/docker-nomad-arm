FROM ubuntu:21.04

LABEL maintainer="rluisr" \
  org.opencontainers.image.url="https://github.com/rluisr/docker-nomad-arm" \
  org.opencontainers.image.source="https://github.com/rluisr/docker-nomad-arm" \
  org.opencontainers.image.vendor="rluisr" \
  org.opencontainers.image.title="docker-nomad-arm" \
  org.opencontainers.image.description="A container image installed Nomad(arm64)" \
  org.opencontainers.image.licenses="WTFPL"

RUN set -eux; \
  apt-get update -y; \
  apt-get install wget unzip -y; \
  wget https://releases.hashicorp.com/nomad/1.0.2/nomad_1.0.2_linux_arm64.zip; \
  unzip nomad_1.0.2_linux_arm64.zip; \
  mv nomad /usr/bin
