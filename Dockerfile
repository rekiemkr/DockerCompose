FROM php:latest

RUN apt-get update \ 
   && apt-get -y install \
    libmcrypt-dev \
    mysql-client \
    libmagickwand-dev \
    libzip-dev \
    --no-install-recommends 

 RUN pecl install imagick \
    && docker-php-ext-enable imagick \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install zip

WORKDIR /app
