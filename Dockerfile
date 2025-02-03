FROM docker.io/library/alpine:3.7

RUN apk add --no-cache \
    bash \
    curl \
    && rm -rf /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]