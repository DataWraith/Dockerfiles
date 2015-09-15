FROM alpine
MAINTAINER Johannes Holzfuß <DataWraith@fastmail.fm>

# This Dockerfile builds a container for mozjpeg and the associated commandline
# tools. The commandline tools can be run from outside docker if you mount
# a volume for them to use to /images.
#
# Example usage
#     docker run -v "$(pwd)":/images datawraith/mozjpeg jpegtran -copy none -arithmetic Image.jpg > Image-opt.jpg

RUN apk --update add \
	autoconf \
	automake \
	build-base \
	git \
	libtool \
	nasm \
 && rm -rf /var/cache/apk/*

RUN git clone git://github.com/mozilla/mozjpeg.git /source

WORKDIR /source

RUN autoreconf -fiv \
 && ./configure \
 && make install prefix=/usr/local libdir=/usr/local/lib64

# Create a working directory
RUN mkdir /images
WORKDIR /images
