#!/bin/sh
docker run -it --rm \
    -p 8080:8080 \
    --network=realworld \
    --name=frontend \
    realworld-frontend:latest
