#!/usr/bin/env bash

cd ./frontend/admin
pwd
docker-compose up --detach
cd ../..

cd ./frontend/driver
pwd
docker-compose up --detach
cd ../..

cd ./frontend/operator
pwd
docker-compose up --detach
cd ../..