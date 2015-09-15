# p7zip

This Dockerfile builds a container for [p7zip](http://p7zip.sourceforge.net/).

## Example usage

`docker run --rm -u "$(id -u):$(id -g)" -v "$(pwd)":/data datawraith/p7zip a archive.7z file1 file2 file3`
