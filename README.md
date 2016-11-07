# Docker PHP

A collection of helpful images and compose files for php development.

## Usage

Pick an override file, and move it in the root folder with the name
docker-compose.override.yml. Then run `docker-compose up` 

## Docker images for php projects

[nginx-fpm-webroot](https://hub.docker.com/r/phillaf/nginx-fpm-webroot/): nginx with fastcgi enabled, pointing to the `webroot` folder  
[nginx-fpm](https://hub.docker.com/r/phillaf/nginx-fpm/): nginx with fastcgi enabled  
[php-mysql](https://hub.docker.com/r/phillaf/php-mysql/): php:7-fpm with mysql  
[php-redis](https://hub.docker.com/r/phillaf/php-redis/): php:7-fpm with redis drivers  
[php-mri](https://hub.docker.com/r/phillaf/php-mri/): php:7-fpm with mysql, redis and intl extensions  

## Docker-compose example files

default: Simple stack with php, nginx, mysql and redis  
cakephp.dev: All Cakephp dependencies, redis + mysql + phpmyadmin + redis commander  
