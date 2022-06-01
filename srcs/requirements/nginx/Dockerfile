FROM alpine:3.13

RUN	apk update && apk upgrade && apk add --no-cache \
        nginx \
        openssl

# nginx SSL
RUN mkdir /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
        -out /etc/nginx/ssl/chilee.42.fr.crt \
        -keyout /etc/nginx/ssl/chilee.42.fr.key \
        -subj "/C=Fr/ST=IledeFrance/L=Paris/O=42 School/CN=chilee.42.fr"

# nginx config
RUN mkdir -p /run/nginx/
COPY conf/nginx.conf /etc/nginx/http.d/default.conf
#http.d ou conf.d selon la version de nginx
	
# Start nginx
ENTRYPOINT ["nginx", "-g", "daemon off;"]
