# Docker PHP

A collection of helpful images and compose files for php development.

## Usage

Pick an override file, and move it in the root folder with the name
docker-compose.override.yml. Then run `docker-compose up` 

## Docker images for php projects

[nginx-fpm](https://hub.docker.com/r/phillaf/nginx-fpm/): nginx with fastcgi enabled  
[nginx-fpm-webroot](https://hub.docker.com/r/phillaf/nginx-fpm-webroot/): nginx with fastcgi enabled, pointing to the `webroot` folder  
[nginx-drone](https://hub.docker.com/r/phillaf/nginx-drone/): nginx-fpm with a root in the /drone folder  
[nginx-done-webroot](https://hub.docker.com/r/phillaf/nginx-drone-webroot/): nginx-fpm-webroot with the root in the /drone folder
[php-mysql](https://hub.docker.com/r/phillaf/php-mysql/): php:7-fpm, mysql extension  
[php-redis](https://hub.docker.com/r/phillaf/php-redis/): php:7-fpm, phpredis extension  
[php-mri](https://hub.docker.com/r/phillaf/php-mri/): php:7-fpm, mysql+phpredis+intl extensions  
[php-mricg](https://hub.docker.com/r/phillaf/php-mricg/): php:7-fpm, mysql+phpredis+intl extensions, composer, git  

## Docker-compose example files

default: Simple stack with php, nginx, mysql and redis  
cakephp.dev: All Cakephp dependencies, redis + mysql + phpmyadmin + redis commander  
