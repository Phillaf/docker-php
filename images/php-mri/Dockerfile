FROM php:7.0-fpm 

# Redis
ENV PHPREDIS_VERSION 3.0.0

RUN curl -L -o /tmp/redis.tar.gz https://github.com/phpredis/phpredis/archive/$PHPREDIS_VERSION.tar.gz \
    && tar xfz /tmp/redis.tar.gz \
    && rm -r /tmp/redis.tar.gz \
    && docker-php-source extract \
    && mv phpredis-$PHPREDIS_VERSION /usr/src/php/ext/redis \
    && docker-php-ext-install redis

# MySQL
RUN docker-php-ext-install pdo pdo_mysql

# Intl
RUN requirements="libicu-dev libicu52" \
    && requirementsToRemove="libmcrypt-dev" \
    && apt-get update && apt-get install -y $requirements \
    && docker-php-ext-install intl \
    && apt-get purge --auto-remove -y $requirementsToRemove \
    && rm -rf /var/lib/apt/lists/*

