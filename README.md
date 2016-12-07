# Overview

Dockerfiles for building things.

# Usage

Run `./build_me.sh` to build the images.

# Docker Notes

Start a detached container with an environment varialb set

    docker run -d -t -i -e ENVIRONMENT_VARIABLE='staging' ubuntu-base

Forward a port

    docker run -p 80:80 -it ubuntu-base

List the containers

    docker ps

Attach to a detached container

    docker attach 3a96f0f31f

Detach an attached container

    cntrl+p, cntrl+q

