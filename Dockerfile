FROM ghcr.io/stacktonic/ubuntu:latest

RUN apt-get update && \
    apt-add-repository ppa:nginx/stable -y && \
    apt-get update && \
    apt-get install -y nginx && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN echo "daemon off;" >> /etc/nginx/nginx.conf
CMD []

# Copy NGINX service script
COPY root/ /

# ports and volumes
EXPOSE 80 443

ENTRYPOINT ["/init"]