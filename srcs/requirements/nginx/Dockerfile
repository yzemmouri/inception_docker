FROM debian:buster
EXPOSE 80
RUN apt-get update && \
    apt-get upgrade && \
    apt-get install nginx -y &&\
    apt-get install php-fpm -y &&\
    ls /etc/nginx 
COPY ./conf/default.conf /etc/nginx/sites-available/default
COPY ./conf/ng.sh /ng.sh
 RUN chmod +x /ng.sh
EXPOSE 8000

run sh /ng.sh 
EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]