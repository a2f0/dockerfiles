# Overview

Dockerfiles for building things.

# Usage

Run `./build_me.sh` to build the images.

# Docker Notes

Start a detached container with an environment variable set

    docker run -d -t -i -e ENVIRONMENT_VARIABLE='staging' ubuntu-base

Forward a port

    docker run -p 80:80 -it ubuntu-base

List the running containers

    docker ps

List running and terminated containers

    docker ps -a

Attach to a detached container

    docker attach 3a96f0f31f

Detach an attached container

    cntrl+p, cntrl+q

