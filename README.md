# Docker environment for php projects

Docker-compose setup for php-nginx project. Some utility commands are wrapped
in the makefile.

- `make update` downloads composer, pull images, pull repo, build images
- `make up` shortcut for docker-compose up 
- `make down` shortcut for docker-compose down
- `make composer` run composer.phar using the php container


Issues:

- The params (starting with a dash "-") are intercepted by make and cannot be
piped into composer
