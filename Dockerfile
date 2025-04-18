FROM ubuntu:noble

# Metadata
LABEL maintainer="UC San Diego Research IT Services Ian Kaufman <ikaufman@ucsd.edu>"
LABEL description="Docker image based on Ubuntu 24.04"

# 2) change to root to install packages
USER root

# Set up some CUDA environment vars
#ARG LIBNVINFER=7.2.2 LIBNVINFER_MAJOR_VERSION=7 CUDA_VERSION=11.8

ENV DEBIAN_FRONTEND noninteractive
ENV DEBCONF_NOWARNINGS="yes"

# Update package lists and install necessary packages
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    curl wget vim git htop \
    && rm -rf /var/lib/apt/lists/*

# Set up working directory
WORKDIR /app

# Copy application files (if applicable)
# COPY . /app

# Expose ports (if applicable)
# EXPOSE 8080

# Define the command to run when the container starts
# CMD ["/bin/bash"]
