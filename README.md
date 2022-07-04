# Mobility

This repo consists of microservices that tracks batteries for electronic bikes
and their movements relative to charging stations.
It is implemented using gRPC, Kafka and docker. Individual services are
implemented using Ruby and could be extended to Python, JS and Go.

## Prerequisites

- Docker.
- Docker-compose.
- Kafka.

## Installation

Run these in order, this repo's root folder;

```sh
make all_services
make all_gateways
make all_frontends
```

Open http://localhost:4790/ for Admin user interface.
Open http://localhost:4791/ for Driver user interface.
Open http://localhost:4792/ for Operator user interface.

Go ahead and explore.

## System Architecture

### Functional requirements

### Interfaces

We have 4 user interfaces;

- Driver interface.
- Station operator interface.
- Station admin interface.
- Onboard sensors interface.

### Technologies used

The first three communicate over REST/JSON to the API Gateway.
The last one communicates using Protobufs sent to the Kafka event gateway.
We use Kafka to receive data from the onboard sensors since it is good at
streaming large amounts of data quickly. We use protobufs since their
binary encoding makes them faster to transport over the
wire as compared to JSON. They also provide conveninence in schema evolution
as compared to JSON.

The messages in the Kafka event gateway are periodically archived to S3.

We use gRPC/Protobuf to communicate between internal microservices.
The Payments service communicates with external payment providers via HTTP/JSON.

### Architecture Schematic

Here is the architecture schematic:

![architecture](https://github.com/Sylvance/mobility/blob/main/design/1.png?raw=true)

Here are the proto entities that generate the services:

![entities](https://github.com/Sylvance/mobility/blob/main/design/2.png?raw=true)

Here are the interfaces to the services:

![service interfaces](https://github.com/Sylvance/mobility/blob/main/design/3.png?raw=true)

Here are the functional interfaces that face users:

![user interfaces](https://github.com/Sylvance/mobility/blob/main/design/4.png?raw=true)

## Contributors

- Sylvance Kerandi Mbaka.
