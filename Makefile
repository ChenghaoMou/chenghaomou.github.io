env=local

build:
	rsync -r -c ../quartz ./
	rm -rf ./public/*
	docker compose up ${env} -d --build
	docker compose cp ${env}:/public ./

down:
	docker compose down ${env}

compile: build
	docker run -v ./public:/public node npx @divriots/jampack /public