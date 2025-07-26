# syntax=docker/dockerfile:1
FROM docker.io/nvidia/cuda:12.9.1-runtime-ubuntu24.04

# Install packages
RUN /bin/sh -c 'export DEBIAN_FRONTEND=noninteractive \
    && apt-get update \
    && apt-get install -y bzip2 ca-certificates curl jq g++ gcc git gzip lld make python3 tar xz-utils \
    && apt-get --purge autoremove -y \
    && apt-get autoclean \
    && rm -rf /var/lib/apt/lists/*'
