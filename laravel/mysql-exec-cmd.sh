#!/bin/bash
echo "executing this command: $1"
docker-compose exec app mysql -h database --port=3306 -u homestead -p --execute="$1" homestead
