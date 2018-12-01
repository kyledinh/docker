#!/bin/bash
docker-compose exec app mysql -h database --port=3306 -u homestead -p 
