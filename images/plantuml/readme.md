## kyledinh/plantuml
> This repo builds the a Docker image that will run the plantuml app to convert UML files to SVG files. It also contains the graphviz library.

## Install MacOS/Linux

Add `uml2svg` bash script to your `/usr/bin`

```
#!/bin/bash
docker run -it --rm -v $(pwd):/host kyledinh/plantuml $1
```

## Usage

* `uml2svg your-file.uml` produces `your-file.svg` in the same directory
* Sample uml files in `/sample_uml`

## Reference

* http://plantuml.com
* https://hub.docker.com/r/kyledinh/plantuml
