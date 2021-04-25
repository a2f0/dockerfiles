# Overview

Dockerfiles for building things.

## Usage

Run `./build.sh` to build the images.

## Notes

### Working with Volumes

List the volumes

    docker volume list

List volumes not referenced by any container

    docker volume ls --filter dangling=true

Remove dangling volumes

    docker volume rm $(docker volume ls -f dangling=true -q)

Delete a docker volume

    docker volume rm 243ea6da32b7c752ebabd9980735bc68ec3fa11c88847031c674a0d6aa922d25

Show what containers are using a volume

    docker ps --filter=volume=ccsbackend_postgres_data_dev

### Misc

Start a detached container with an environment variable set

    docker run -d -t -i -e ENVIRONMENT_VARIABLE='staging' ubuntu-base

Drop to a shell on an already running docker container

    docker exec -it b87d583f31e2 bash

Drop to a shell on an image

    docker run -it ruby:2.3.0 /bin/bash

Forward a port (or multiple)

    docker run -p 80:80 -it ubuntu-base
    docker run -p 14322:22 -p 14323:23 -it amazonlinux

List the images

    docker images

Build an image from a Dockerfile

    docker build -t amazonlinux .

Remove an image

    docker rmi amazon-linux

List the running containers

    docker ps

List running and terminated containers

    docker ps -a

Show statistics (CPU, memory, limits)

    docker stats

Attach to a detached container

    docker attach 3a96f0f31f

Start a stopped container

    docker start 7b95e112cf27

Stop and remove all containers, remove images

    docker stop $(docker ps -a -q)
    docker rm $(docker ps -a -q)
    docker rmi $(docker images -q)

Detach an attached container

    cntrl+p, cntrl+q

## AWS ECS / Docker Compose

Delete the cluster and associated resources

    ecs-cli down --force

Create and start an ECS task definiion from a compose file

    ecs-cli compose --file docker-compose.yml up

Stop running tasks associated with a compose project

    ecs-cli compose --file docker-compose.yml down

List containers in cluster that were started by compose project

    ecs-cli compose --file docker-compose.yml ps
