# mozjpeg

This Dockerfile builds a container containing [mozjpeg](https://github.com/mozilla/mozjpeg),
a replacement for `libjpeg-turbo`. Since that library is usually installed,
installing mozjpeg clashes with it, which is why I containerized it,
sidestepping the problem.

mozjpeg has several useful commandline programs such as `cjpeg` (makes JPEG
files) and `jpegtran` (can losslessly transform/optimize JPEG files).

The accompanying script `optimize.sh` takes a single JPEG-file and optimizes
it losslessly (overwriting the original file in the process). It is meant as
a starting point for your own, probably more sophisticated, scripts.

## Example usage

`docker run -v "$(pwd)":/images datawraith/mozjpeg jpegtran -copy none -arithmetic Image.jpg > Image-opt.jpg`
