#!/bin/bash
docker-compose up -d
a=$(docker ps | awk 'NR > 1 {print $1; exit}')
echo $a
docker exec -it $a rails db:create
docker exec -it $a rails db:migrate
