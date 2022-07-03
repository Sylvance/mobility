package:
	chmod +x ./scripts/generate_packages.sh
	./scripts/generate_packages.sh

build_frontend:
	chmod +x frontend/build.sh
	frontend/build.sh

run_frontend:
	chmod +x frontend/run.sh
	frontend/run.sh

frontends:
	make build_frontend
	make run_frontend
	open http://localhost:4790/
	open http://localhost:4791/
	open http://localhost:4792/
