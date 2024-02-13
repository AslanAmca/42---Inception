FROM debian:bullseye

EXPOSE 443

RUN apt-get update && apt-get install -y nginx openssl

COPY ./conf/default /etc/nginx/sites-enabled/

COPY ./tools/init_certificate.sh /

RUN chmod +x /init_certificate.sh

ENTRYPOINT [ "/init_certificate.sh" ]

CMD [ "nginx", "-g", "daemon off;" ]