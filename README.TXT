On a fresh system install , configure letsencrypt SSL certs with cerbot:

Install first the docker container then connect it then run the following command on it

> certbot --nginx -d jallegre.freeboxos.fr --non-interactive --agree-tos -m ju.allegre@gmail.com

This will replace config in .conf file  

This tool will also add renew cron to check and renew certificates on a daily basis