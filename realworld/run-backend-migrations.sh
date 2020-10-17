#!/bin/sh
docker exec -it backend mix ecto.create
docker exec -it backend mix ecto.migrate