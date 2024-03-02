build:
	rm -rf ./public/*
	DOCKER_BUILDKIT=1 docker image build . -o .