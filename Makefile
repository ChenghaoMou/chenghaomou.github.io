build:
	docker compose build --no-cache --force-rm

up:
	docker compose up -d

down:
	docker compose down --remove-orphans

generate: build up
	docker compose run generate bash -c "rm -rf /output/* && emanote -L '/app' gen '/output' --allow-broken-links"

run: build up
	docker compose run --publish 6789:6789 generate bash -c "emanote run --host 0.0.0.0 --port=6789"
