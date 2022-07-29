FROM debian:buster

RUN apt -y update && apt -y install nginx && apt -y install openssl

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -newkey rsa:2048\
	-x509\
	-days 365\
	-nodes\
	-out /etc/nginx/ssl/alorain.42.fr.crt\
	-keyout /etc/nginx/ssl/alorain.42.fr.key\
	-subj "/C=Fr/ST=France/L=Paris/O=Me/OU=42Paris/CN=localhost/emailAddress=alorain@student.42.fr"
	

COPY config/nginx.conf /etc/nginx/sites-available/default


CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
