FROM nginx:latest

RUN apt-get update -y

RUN apt-get install -y python3-certbot-nginx
# Copy the nginx configuration file

# COPY nginx.default.conf /etc/nginx/conf.d/default.conf

COPY jallegre.freeboxos.fr.conf /etc/nginx/conf.d/jallegre.freeboxos.fr.conf

# RUN service nginx start


#RUN certbot --nginx -d jallegre.freeboxos.fr --non-interactive --agree-tos -m ju.allegre@gmail.com