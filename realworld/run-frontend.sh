#!/bin/sh
docker run -it --rm \
    -p 4200:4200 \
    --network=realworld \
    --name=frontend \
    realworld-frontend:latest
