#!/bin/bash
docker-compose exec app php artisan migrate --env=production
