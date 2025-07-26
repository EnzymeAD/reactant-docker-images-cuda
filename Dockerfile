# syntax=docker/dockerfile:1
FROM docker.io/nvidia/cuda:12.9.1-devel-ubuntu24.04

# Install packages
RUN /bin/sh -c 'export DEBIAN_FRONTEND=noninteractive \
    && apt-get update \
    && apt-get install -y ca-certificates git jq gcc g++ python3 \
    && apt-get --purge autoremove -y \
    && apt-get autoclean \
    && rm -rf /var/lib/apt/lists/*'
