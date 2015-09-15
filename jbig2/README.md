# jbig2

This Dockerfile builds a container for jbig2dec, jbig2 and pdf.py.

These commandline tools allow you to encode or decode images in the
[JBIG2](https://en.wikipedia.org/wiki/JBIG2)-format, which is a very efficient
compression scheme for bi-level images.

You can use these programs to turn scanned documents into
crisp and very small PDF files. I use them in conjunction with
[OCRmyPDF](https://github.com/jbarlow83/OCRmyPDF).

## Example usage

1. `docker run -u "$(id -u):$(id -g)" -v "$(pwd)":/images datawraith/jbig2 jbig2 -p -s -v *.pnm`
2. `docker run -u "$(id -u):$(id -g)" -v "$(pwd)":/images datawraith/jbig2 pdf.py output > out.pdf`
