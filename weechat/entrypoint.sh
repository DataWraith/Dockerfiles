#!/bin/sh

set -e

if [ ! -d /root/.weechat/ssl ]
then
	echo "Creating self-signed certificate. This may take a while..."
	mkdir -p /root/.weechat/ssl/ && \
	openssl req -nodes -newkey rsa:4096 \
		-keyout /root/.weechat/ssl/relay.pem -x509 -days 365 \
		-out /root/.weechat/ssl/relay.pem -subj "/CN=localhost/"
fi

exec "$@"
