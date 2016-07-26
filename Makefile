.SILENT:
.PHONY:

ifndef ARGS
ARGS = $(filter-out $@,$(MAKECMDGOALS))
endif

%:
	@:

#
# Inherited
#

echo:
	@echo backend $(ARGS)

update:
	docker-compose down
	git pull
	docker-compose pull
	docker-compose build
	docker pull composer/composer 
	docker run --rm -v $$(pwd):/app composer/composer update

up:
	docker-compose up -d

down:
	docker-compose down

composer:
	docker run --rm -v $$(pwd):/app composer/composer $(ARGS)

#
# Tools
#
