# Weechat

[Weechat] is a terminal IRC client.

This image is meant to be run on a server and used remotely via weechat's
relay protocol.

## Usage

`docker run -td --name weechat -e PASSWORD="hunter2" -p 9001:9001 datawraith/weechat`

This will generate a new certificate, so it may take a little bit of time
until the container boots up. After it has started, you can use [Glowing Bear]
or another program supporting the encrypted weechat relay protocol to connect
to the container using the password you specified.

## Example usage with bitlbee

I'm using Weechat in conjunction with [Bitlbee]. Using both together is easy
using Docker's `link` functionality:

1. `docker run -d --name bitlbee kalbasit/bitlbee`
2. `docker run -td --name weechat --link bitlbee -e PASSWORD="hunter2" -p 9001:9001 datawraith/weechat`

Connect to Weechat and execute the following commands to connect to bitlbee:

1. `/server add bitlbee bitlbee`
2. `/connect bitlbee`

[Weechat]: http://weechat.org
[Glowing Bear]: http://www.glowing-bear.org
[Bitlbee]: https://www.bitlbee.org
