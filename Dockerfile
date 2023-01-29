ARG BASE_REPOSITORY_URL=harbor.stacktonic.com.au
ARG BASE_IMAGE_NAME=stacktonic/alpine
ARG BASE_IMAGE_TAG=latest
FROM ${BASE_REPOSITORY_URL}/${BASE_IMAGE_NAME}:${BASE_IMAGE_TAG}

RUN  apk add --no-cache nginx && \
     rm -rf /tmp/*


RUN echo "daemon off;" >> /etc/nginx/nginx.conf
CMD []

# Copy NGINX service script
COPY root/ /

# ports and volumes
EXPOSE 80 443

ENTRYPOINT ["/init"]