#!/bin/bash

docker run -dP -v $(pwd)/code:/root/code kyledinh/intellij-java8
docker ps
