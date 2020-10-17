#!/bin/sh
docker run -it --rm \
    -p 4000:4000 \
    --network=realworld \
    --name=backend \
    realworld-backend:latest
