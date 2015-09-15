FROM alpine
MAINTAINER Johannes Holzfuß <DataWraith@fastmail.fm>

# This Dockerfile builds a container for jbig2dec and jbig2enc. The commandline
# tools can be run from outside docker if you mount a volume for them to use on
# /images. You should also use the -u switch to get correct permissions on the
# output files.
#
# Example usage:
#     docker run -u "$(id -u):$(id -g)" -v "$(pwd)":/images datawraith/jbig2 jbig2 -p -s -v *.pnm &&
#     docker run -u "$(id -u):$(id -g)" -v "$(pwd)":/images datawraith/jbig2 pdf.py output > out.pdf

RUN apk --update --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ add \
	autoconf \
	automake \
	build-base \
	git \
	jbig2dec \
	leptonica-dev \
	libtool \
	python \
 && rm -rf /var/cache/apk/*

RUN git clone https://github.com/agl/jbig2enc.git /source
WORKDIR /source

RUN ./autogen.sh \
 && ./configure \
 && make install

# Create a working directory
RUN mkdir /images
WORKDIR /images
