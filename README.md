# Dockerfiles

This repository contains my [Dockerfiles](https://docs.docker.com/reference/builder/).

* `mozjpeg`

    Builds a container containing [mozjpeg](https://github.com/mozilla/mozjpeg).
    It contains several useful commandline programs such as `cjpeg` (makes JPEG
    files) and `jpegtran` (can losslessly transform/optimize JPEG files).

# Other cool Dockerfiles

* [sameersbn/browser-box](https://github.com/sameersbn/docker-browser-box)

    Containerized Chrome/Chromium/Firefox/Tor-Browser

* [docker-gitolite](https://github.com/hlj/docker-gitolite)

    Gitolite hosts git repositories, and is itself configured through cloning
    and editing a git repository. Very convenient, and the docker image makes
    it simple to setup.

* [jess/pandoc](https://github.com/jfrazelle/dockerfiles/tree/master/pandoc)

    `pandoc` is a universal markup converter. I mostly use it to convert
    `.html`-files into `.markdown`-files. It's written in Haskell and as such
    is a pain to build locally, so I'm glad it is available inside a container.


