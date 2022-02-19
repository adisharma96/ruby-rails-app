#!/bin/bash
if [ "-d tmp/db" ]
then
echo "Old DB removed: $(sudo rm -rf tmp/db)"
else
echo "No DB exist"
fi

if [ "-f tmp/pids/server.pid" ]
then
echo "server.pid removed : $(sudo rm -rf tmp/pids/server.pid)"
else
echo "server.pid not found"
fi

sudo docker-compose up -d
a=$(docker ps | awk 'NR > 1 {print $1; exit}')
echo $a
#echo "$(sleep 5)"
sudo docker exec -it $a rails db:create
sudo docker exec -it $a rails db:migrate
