env=local

build:
	rsync -r -c ../quartz ./
	rm -rf ./public/*
	docker compose up ${env} -d --build
	docker compose cp ${env}:/public ./
	rm -rf ./quartz
	bash -c "du -sh ./public"

preview: build
	docker compose exec ${env} bash -c "cd /quartz && npx quartz build --serve"

down:
	docker compose down ${env}
	rm -rf ./public
