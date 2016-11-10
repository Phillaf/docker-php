FROM phillaf/php-mri

# Composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php \
    && php -r "unlink('composer-setup.php');" \
    && mv composer.phar /usr/local/bin/composer

# Git
RUN requirements="git" \
    && apt-get update && apt-get install -y $requirements \
    && apt-get purge \
    && rm -rf /var/lib/apt/lists/*

# Zip
RUN requirements="unzip zlib1g-dev" \
    && requirementsToRemove="zlib1g-dev" \
    && apt-get update && apt-get install -y $requirements \
    && docker-php-ext-install zip \
    && apt-get purge \
    && rm -rf /var/lib/apt/lists/*
