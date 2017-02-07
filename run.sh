#!/bin/bash

echo "Entering in the Docker"

docker run -it -v `pwd`/shared_files:/root/shared_files --rm php-ubuntu-docker

