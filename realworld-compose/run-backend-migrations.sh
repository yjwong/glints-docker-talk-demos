#!/bin/sh
docker-compose exec backend mix ecto.create
docker-compose exec backend mix ecto.migrate