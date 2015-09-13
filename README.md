# Dockerfiles

This repository contains my [Dockerfiles](https://docs.docker.com/reference/builder/).

* `mozjpeg`

    Builds a container containing [mozjpeg](https://github.com/mozilla/mozjpeg)
    and sets `jpegtran` as the entrypoint so that the container can be used to
    losslessly optimize images.
