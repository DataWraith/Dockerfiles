FROM alpine
MAINTAINER Johannes Holzfuß <DataWraith@fastmail.fm>

RUN apk add --update-cache weechat-dev \
  && rm -rf /var/cache/apk/*

RUN mkdir -p /root/.weechat/ssl/ \
 && openssl req -nodes -newkey rsa:4096 \
      -keyout /root/.weechat/ssl/relay.pem -x509 -days 365 \
      -out /root/.weechat/ssl/relay.pem -subj "/CN=localhost/"

EXPOSE 9001
CMD weechat -r "/set relay.network.password $PASSWORD" -r "/relay add ssl.weechat 9001"

