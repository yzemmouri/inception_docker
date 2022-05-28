FROM alpine:3.14

RUN apk update && apk upgrade && apk add nginx && apk add openssl

# nginx SSL
RUN mkdir /etc/ssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
-keyout /etc/ssl/nginx.key \
-out /etc/ssl/nginx.crt \

# nginx CONF
COPY default /etc/nginx/conf.d/


#info:
#https://devopsbuzz.com/nginx-docker-container-with-https-protocol/