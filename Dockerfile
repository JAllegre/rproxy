FROM nginx:latest

RUN apt-get update -y

RUN apt-get install -y python3-certbot-nginx

COPY pibox.hd.free.fr.conf /etc/nginx/conf.d/pibox.hd.free.fr.conf

COPY jallegre.freeboxos.fr.conf /etc/nginx/conf.d/jallegre.freeboxos.fr.conf


