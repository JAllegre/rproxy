# rproxy service

## Certificate configuration

On a fresh system install , configure letsencrypt SSL certs with cerbot

Install first the docker rproxy container and do the following on it: 

!!! BE SURE TO BE ON THE RIGHT container

- Install python3-certbot-nginx

> apt-get install -y python3-certbot-nginx

- Run cerbot 

> certbot --nginx -d pibox.hd.free.fr --non-interactive --agree-tos -m ju.allegre@gmail.com

This will replace config in .conf file  

Copy new conf file into git (pibox.hd.free.fr.conf)





