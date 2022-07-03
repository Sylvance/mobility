#!/usr/bin/env bash

cd ./gateways/api
pwd
docker-compose up --detach
cd ../..

cd ./gateways/event
pwd
docker-compose up --detach
cd ../..
