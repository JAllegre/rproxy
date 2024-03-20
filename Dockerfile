FROM nginx:latest

RUN apt-get update -y

RUN apt-get install -y nano python3-certbot-nginx

COPY common/locations.conf /etc/nginx/common/locations.conf

COPY conf/default.conf /etc/nginx/conf.d/default.conf

# Comment lines below if when using in localhost , otherwise nginx will fail
COPY conf/pibox.hd.free.fr.conf /etc/nginx/conf.d/pibox.hd.free.fr.conf

COPY conf/jallegre.freeboxos.fr.conf /etc/nginx/conf.d/jallegre.freeboxos.fr.conf

RUN mkdir -p /usr/share/nginx/html/.well-known/acme-challenge

RUN chmod a+rwx /usr/share/nginx/html/.well-known/acme-challenge

RUN chown -R www-data:www-data /usr/share/nginx/html/.well-known/acme-challenge/*

COPY ./tester.html /usr/share/nginx/html/.well-known/acme-challenge/tester.html



