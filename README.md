# Docker environment for php projects

Docker-compose example setup for php-nginx project.

## Installation

1. Copy `.env.default` to `.env` and tweak values according to your needs
2. Create a network that matches the name in your .env file `docker network create myapp`
3. Start your docker-environment with `docker-compose up`

## Utility tools

Make the files in `bin/` folder executable by running `chmod +x bin/*`.

- `bin/install` Downloads composer, phpunit and phpcs to the local machine
- `bin/composer` Runs composer on the local repo using the php image interpreter

TODO:  
- `bin/phpunit` Runs composer on the local repo using the php image interpreter
- `bin/phpcs` Runs composer on the local repo using the php image interpreter
