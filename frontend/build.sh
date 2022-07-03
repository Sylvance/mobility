#!/usr/bin/env bash

cd ./frontend/admin
pwd
docker-compose build
cd ../..

cd ./frontend/driver
pwd
docker-compose build
cd ../..

cd ./frontend/operator
pwd
docker-compose build
cd ../..