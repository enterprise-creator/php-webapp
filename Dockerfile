FROM nginx:stable-alpine

RUN apk add php8 php8-fpm

RUN mkdir -p /app/public
WORKDIR /app/public

COPY --chown=nginx:nginx app/public .