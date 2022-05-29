FROM alpine:3.14

RUN apk update && apk upgrade && apk add nginx && apk add openssl;  \
    echo "<h1>Hello world 1337!</h1>" > /var/www/localhost/htdocs/index.html;

# nginx SSL
RUN mkdir -p /etc/ssl/private \
    mkdir -p /etc/ssl/certs

RUN openssl req -x509 -nodes -days 365 \
    -subj "/C=CA/ST=QC/O=Company, Inc./CN=mydomain.com" -addext "subjectAltName=DNS:mydomain.com" \
    -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt;
# nginx CONF
ADD $PWD/conf/default.conf /etc/nginx/http.d/default.conf
# EXPOSE PORTS
EXPOSE 80 443
# Start nginx
CMD ["/bin/sh", "-c", "nginx -g 'daemon off;'; nginx -s reload;"]


#info:
#https://codingwithmanny.medium.com/configure-self-signed-ssl-for-nginx-docker-from-a-scratch-7c2bcd5478c6