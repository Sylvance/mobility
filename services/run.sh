#!/usr/bin/env bash

#!/usr/bin/env bash

cd ./services/battery
pwd
docker-compose up --detach
cd ../..

cd ./services/distance
pwd
docker-compose up --detach
cd ../..

cd ./services/energy
pwd
docker-compose up --detach
cd ../..

cd ./services/location
pwd
docker-compose up --detach
cd ../..

cd ./services/notification
pwd
docker-compose up --detach
cd ../..

cd ./services/payment
pwd
docker-compose up --detach
cd ../..

cd ./services/swap
pwd
docker-compose up --detach
cd ../..

cd ./services/driver
pwd
docker-compose up --detach
cd ../..

cd ./services/flight
pwd
docker-compose up --detach
cd ../..

cd ./services/motorcycle
pwd
docker-compose up --detach
cd ../..

cd ./services/operator
pwd
docker-compose up --detach
cd ../..

cd ./services/prediction
pwd
docker-compose up --detach
cd ../..

cd ./services/station
pwd
docker-compose up --detach
cd ../..
