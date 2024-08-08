env=local

up:
	docker compose up ${env} -d

build:
	docker compose up ${env} -d --build

compile: up
	docker compose exec ${env} bash -c "npx quartz build -d ./content"
	bash -c "du -sh ./public"

preview: up
	docker compose exec ${env} bash -c "npx quartz build --serve --fastRebuild"

down:
	docker compose down ${env}
	rm -rf ./public
