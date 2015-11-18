FROM alpine
MAINTAINER Johannes Holzfuß <DataWraith@fastmail.fm>

RUN apk add --update-cache weechat-dev \
  && rm -rf /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh

EXPOSE 9001
ENTRYPOINT ["/entrypoint.sh"]
CMD weechat -r "/set relay.network.password $PASSWORD" -r "/relay add ssl.weechat 9001"

