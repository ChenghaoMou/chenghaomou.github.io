env=local

build:
	rsync -r -c ../quartz ./
	rm -rf ./public/*
	python scripts/created.py
	docker compose up ${env} -d --build
	docker compose cp ${env}:/public ./
	rm -rf ./quartz
	# docker run -v ./public:/public node npx @divriots/jampack /public
	python scripts/robots.py
	bash -c "du -sh ./public"

down:
	docker compose down ${env}
	rm -rf ./public
