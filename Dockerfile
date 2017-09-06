# Download base image ubuntu 16.04
FROM ubuntu:16.04

# Add the Ocata repo
RUN apt-get update && apt-get install -y software-properties-common \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
RUN add-apt-repository cloud-archive:ocata

# Update Ubuntu Software repository
RUN apt-get update && apt-get -y dist-upgrade

# Install Openstack dashboard
RUN apt-get install -y openstack-dashboard

EXPOSE 80
