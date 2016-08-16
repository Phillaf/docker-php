FROM php:7-fpm 

RUN requirements="libmcrypt-dev g++ libicu-dev libmcrypt4 libicu52 zlib1g-dev git" \
    && apt-get update && apt-get install -y $requirements \
    && docker-php-ext-install -j$(nproc) pdo_mysql mcrypt mbstring intl zip \
    && requirementsToRemove="libmcrypt-dev g++ libicu-dev zlib1g-dev" \
    && apt-get purge --auto-remove -y $requirementsToRemove \
    && rm -rf /var/lib/apt/lists/*
