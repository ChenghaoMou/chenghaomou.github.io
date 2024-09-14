# Default environment
env ?= local

# Colors for output
GREEN := \033[0;32m
NC := \033[0m # No Color

# Function to print and execute command
define print_and_execute
	@echo "${GREEN}Executing: $1${NC}"
	@$1
endef

.PHONY: up build compile preview down clean help

help:
	@echo "Available commands:"
	@echo "  ${GREEN}make up${NC}        - Start the Docker containers"
	@echo "  ${GREEN}make build${NC}     - Build and start the Docker containers"
	@echo "  ${GREEN}make compile${NC}   - Compile the Quartz site"
	@echo "  ${GREEN}make preview${NC}   - Preview the Quartz site"
	@echo "  ${GREEN}make down${NC}      - Stop and remove the Docker containers"
	@echo "  ${GREEN}make clean${NC}     - Remove generated files"
	@echo "Use ENV=<environment> to specify a different environment (default: local)"

up:
	@echo "${GREEN}Starting Docker containers...${NC}"
	$(call print_and_execute,docker compose up ${env} -d)
	@echo "${GREEN}Containers started.${NC}"

build:
	@echo "${GREEN}Building and starting Docker containers...${NC}"
	$(call print_and_execute,docker compose up ${env} -d --build)
	@echo "${GREEN}Containers built and started.${NC}"

compile: up
	@echo "${GREEN}Compiling Quartz site...${NC}"
	$(call print_and_execute,docker compose exec ${env} bash -c "npx quartz build -d ./content")
	@echo "${GREEN}Compilation complete. Site size:${NC}"
	$(call print_and_execute,du -sh ./public)

preview: up
	@echo "${GREEN}Starting Quartz preview...${NC}"
	$(call print_and_execute,docker compose exec ${env} bash -c "npx quartz build --serve --fastRebuild")

down:
	@echo "${GREEN}Stopping and removing Docker containers...${NC}"
	$(call print_and_execute,docker compose down ${env})
	@echo "${GREEN}Containers stopped and removed.${NC}"

clean: down
	@echo "${GREEN}Removing generated files...${NC}"
	$(call print_and_execute,rm -rf ./public)
	@echo "${GREEN}Cleanup complete.${NC}"

# Set default target to help
.DEFAULT_GOAL := help