FROM alpine:3.13

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["/entrypoint.sh"]

RUN apk add --no-cache --update tokei \
    dumb-init \
    git

COPY entrypoint.sh /
