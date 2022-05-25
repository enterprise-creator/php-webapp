FROM php:fpm as build
COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
CMD [ "php", "./app/public/digitalocean_ngspice.php" ]

FROM nginx
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build ./app/public/ /usr/share/nginx/