FROM ghcr.io/stacktonic/alpine:v0.0.2

RUN  apk add --no-cache nginx && \
     rm -rf /tmp/*


RUN echo "daemon off;" >> /etc/nginx/nginx.conf
CMD []

# Copy NGINX service script
COPY root/ /

# ports and volumes
EXPOSE 80 443

ENTRYPOINT ["/init"]