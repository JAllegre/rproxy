FROM nginx:latest

# Copy the nginx configuration file

COPY rproxy.default.conf /etc/nginx/conf.d/default.conf