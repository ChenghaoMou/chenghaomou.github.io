embed:
	docker run -v $(shell pwd):/app  python:3.11-slim bash -c "pip install pyYAML mistletoe --quiet && cd /app && python3 export/block.py"


build: embed
	docker compose build --no-cache --force-rm

up: build
	docker compose up -d

down:
	bash -c "rm -rf output/* intermediate/*"
	docker compose down --remove-orphans


generate: embed build up
	docker compose run generate bash -c "rm -rf /output/* && emanote -L '/app' gen '/output' --allow-broken-links"
	docker run -v $(shell pwd):/app python:3.11-slim bash -c "cd /app && python export/update.py ./intermediate/output"

run: embed build up
	docker compose run --publish 6789:6789 generate bash -c "cd /app && emanote run --host 0.0.0.0 --port=6789"
