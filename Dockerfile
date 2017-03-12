FROM alpine:edge

COPY bundles/hello /usr/local/bin/hello

EXPOSE 80

CMD ["hello"]