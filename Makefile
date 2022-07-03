package:
	chmod +x ./scripts/generate_packages.sh
	./scripts/generate_packages.sh

build_frontend:
	chmod +x frontend/build.sh
	frontend/build.sh

run_frontend:
	chmod +x frontend/run.sh
	frontend/run.sh

all_frontends:
	make build_frontend
	make run_frontend
	open http://localhost:4790/
	open http://localhost:4791/
	open http://localhost:4792/

build_service:
	chmod +x services/build.sh
	services/build.sh

run_service:
	chmod +x services/run.sh
	services/run.sh

all_services:
	make build_service
	make run_service

build_gateway:
	chmod +x gateways/build.sh
	gateways/build.sh

run_gateway:
	chmod +x gateways/run.sh
	gateways/run.sh

all_gateways:
	make build_gateway
	make run_gateway
