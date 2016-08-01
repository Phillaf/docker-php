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

update:
	docker-compose down
	docker-compose pull
	docker-compose build
	wget -q https://getcomposer.org/download/1.2.0/composer.phar -O ./bin/composer.phar
	docker run -it --rm -v $$(pwd):/app -w /app php php bin/composer.phar update

up:
	docker-compose up -d

down:
	docker-compose down

#
# Tools
#

composer:
	docker run -it --rm -v $$(pwd):/app -w /app php php bin/composer.phar $(ARGS)
