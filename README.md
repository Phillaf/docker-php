# Docker PHP

A collection of helpful images and compose files for php development.

## Usage

Pick an override file, and move it in the root folder with the name
docker-compose.override.yml. Then run `docker-compose up` 

## Docker images for php projects

[php-mysql](https://hub.docker.com/r/phillaf/php-mysql/): Based off php:7-fpm
with mysql and redis drivers  
[nginx-php](https://hub.docker.com/r/phillaf/nginx-php/): Based on nginx, using
"php" as the host name for FastGCI connections

## Docker-compose override files

prod: Simple php+nginx stack
