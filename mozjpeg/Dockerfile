FROM alpine
MAINTAINER Johannes Holzfuß <DataWraith@fastmail.fm>

RUN apk --update add \
	autoconf \
	automake \
	build-base \
	git \
	libtool \
	nasm

RUN git clone git://github.com/mozilla/mozjpeg.git /source

WORKDIR /source

RUN autoreconf -fiv \
 && ./configure \
 && make install prefix=/usr/local libdir=/usr/local/lib64

CMD ["jpegtran"]
