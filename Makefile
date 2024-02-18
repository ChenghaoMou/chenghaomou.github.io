build:
	docker build -f Dockerfile -t quartz:latest .

run: build
	docker run --rm -it -p 8080:8080 quartz:latest

sync:
	npx quartz sync