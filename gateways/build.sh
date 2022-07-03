#!/usr/bin/env bash

cd ./gateways/api
pwd
docker-compose build
cd ../..

cd ./gateways/event
pwd
docker-compose build
cd ../..
