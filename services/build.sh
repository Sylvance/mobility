#!/usr/bin/env bash

cd ./services/battery
pwd
docker-compose build
cd ../..

cd ./services/distance
pwd
docker-compose build
cd ../..

cd ./services/energy
pwd
docker-compose build
cd ../..

cd ./services/location
pwd
docker-compose build
cd ../..

cd ./services/notification
pwd
docker-compose build
cd ../..

cd ./services/payment
pwd
docker-compose build
cd ../..

cd ./services/swap
pwd
docker-compose build
cd ../..

cd ./services/driver
pwd
docker-compose build
cd ../..

cd ./services/flight
pwd
docker-compose build
cd ../..

cd ./services/motorcycle
pwd
docker-compose build
cd ../..

cd ./services/operator
pwd
docker-compose build
cd ../..

cd ./services/prediction
pwd
docker-compose build
cd ../..

cd ./services/station
pwd
docker-compose build
cd ../..
