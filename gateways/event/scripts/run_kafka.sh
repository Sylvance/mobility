#!/bin/bash
docker build -t event-gateway-kafka .
docker run --name event-gateway-kafka -d event-gateway-kafka

or

docker-compose up --detach