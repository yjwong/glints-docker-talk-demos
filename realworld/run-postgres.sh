#!/bin/sh
docker network create realworld
docker run -it --rm \
    -e POSTGRES_USER=postgres \
    -e POSTGRES_PASSWORD=postgres \
    -e POSTGRES_DB=real_world_dev \
    -p 5432:5432 \
    --network=realworld \
    --name postgres \
    postgres:13.0-alpine
