FROM ubuntu:21.04

RUN set -eux; \
  apt-get update -y; \
  apt-get install wget unzip -y; \
  wget https://releases.hashicorp.com/nomad/1.0.2/nomad_1.0.2_linux_arm64.zip; \
  unzip nomad_1.0.2_linux_arm64.zip; \
  mv nomad /usr/bin
