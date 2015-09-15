# Dockerfiles

This repository contains my [Dockerfiles](https://docs.docker.com/reference/builder/).

The intent of the repository is to eventually replace the traditional package
manager of the host system with docker, so that I can use every program in a
container. That's why this repository contains some trivial Dockerfiles (such
as `p7zip`).

* `jbig2`

    Builds a container for jbig2dec and jbig2enc. These commandline tools allow
    you to work with [JBIG2](https://en.wikipedia.org/wiki/JBIG2)-compressed
    bi-level images. Useful for turning scanned documents into crisp and very
    small PDF files. I use it in conjunction with OCRmyPDF (see below).

* `mozjpeg`

    Builds a container containing [mozjpeg](https://github.com/mozilla/mozjpeg).
    It contains several useful commandline programs such as `cjpeg` (makes JPEG
    files) and `jpegtran` (can losslessly transform/optimize JPEG files).

* `p7zip`

    Builds a container containing [p7zip](http://p7zip.sourceforge.net/).

## Other cool Dockerfiles

* [sameersbn/browser-box](https://github.com/sameersbn/docker-browser-box)

    Containerized Chrome/Chromium/Firefox/Tor-Browser

* [docker-gitolite](https://github.com/hlj/docker-gitolite)

    Gitolite hosts git repositories, and is itself configured through cloning
    and editing a git repository. Very convenient, and the docker image makes
    it simple to setup.

* [jbarlow83/ocrmypdf](https://github.com/jbarlow83/OCRmyPDF)

    A program with a lot of dependencies, packaged as a Docker container. It
    performs Omnifont Character Recognition on PDF files.

* [jess/pandoc](https://github.com/jfrazelle/dockerfiles/tree/master/pandoc)

    `pandoc` is a universal markup converter. I mostly use it to convert
    `.html`-files into `.markdown`-files. It's written in Haskell and as such
    is a pain to build locally, so I'm glad it is available inside a container.


