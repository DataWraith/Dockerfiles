# Weechat

[Weechat] is a terminal IRC client.

This image is meant to run on a server and used remotely using weechat's
relay protocol.

## Usage

`docker run -td --name weechat -e PASSWORD="hunter2" -p 9001:9001 datawraith/weechat`

Then you can use [Glowing Bear] or another program supporting the encrypted
weechat relay protocol to connect to the container using the password you
specified.

The container generates a self-signed certificate for encryption during the
build process, as that was the easiest to setup, so you might want to build
the Dockerfile yourself if you don't trust the provided certificate (which you
shouldn't).

Pull requests that change this are welcome, but I'm unlikely to change it
myself, because (let's face it), nobody else is likely to use this.

## Example usage with bitlbee

I'm using Weechat in conjunction with [Bitlbee]. Using both together is easy
using Docker's `link` functionality:

1. `docker run -d --name bitlbee kalbasit/bitlbee`
2. `docker run -td --name weechat --link bitlbee -e PASSWORD="hunter2" -p 9001:9001 datawraith/weechat`

Connect to Weechat and execute `/exec env` to get the environment variables
defined by Docker's link feature. The address of the bitlbee server is given in
the environment variable `BITLBEE_PORT_6667_TCP_ADDR`. You can use that address
to login to the bitlbee server:

1. `/server add bitlbee <IP address>`
2. `/connect bitlbee` 

[Weechat]: http://weechat.org
[Glowing Bear]: http://www.glowing-bear.org
[Bitlbee]: https://www.bitlbee.org
