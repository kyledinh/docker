#!/bin/bash
open https://portal.incisive.com
cp ./custom/database.php ../web/app/config/.
docker-compose up --force-recreate
