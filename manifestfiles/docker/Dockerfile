FROM nginx:1.26

COPY ./nginx.conf /etc/nginx/conf.d/default.conf

RUN apt-get update && apt-get install -y openssl

COPY ./ssl-cert/nginx-selfsigned.cert /etc/nginx/
COPY ./ssl-cert/nginx-selfsigned.key /etc/nginx/
