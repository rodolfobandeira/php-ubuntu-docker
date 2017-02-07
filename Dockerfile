#
# PHP Ubuntu Dockerfile
#
# https://github.com/rodolfobandeira/php-ubuntu-docker
#

# Pull base image.
FROM ubuntu

# Install.

RUN \
  apt-get -y update && \
  apt-get -y upgrade && \
  apt-get install -y php && \
#  apt-get install -y git htop vim && \
  rm -rf /var/lib/apt/lists/*

# Set environment variables.
ENV HOME /root

# Add volume shared_files between Docker and Host
ADD ./shared_files /root/shared_files

# Define working directory.
WORKDIR /root

VOLUME ["/root/shared_files"]

CMD ["bash"]

