FROM nginx:latest

RUN apt-get update -y

RUN apt-get install -y python3-certbot-nginx

COPY jallegre.freeboxos.fr.conf /etc/nginx/conf.d/jallegre.freeboxos.fr.conf
