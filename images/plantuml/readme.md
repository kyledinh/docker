## kyledinh/plantuml

## Install MacOS/Linux

Add `uml2svg` bash script to your `/usr/bin`

```
#!/bin/bash
docker run -it --rm -v $(pwd):/host kyledinh/plantuml $1
```

## Usage

* `uml2svg your-file.uml` produces `your-file.svg` in the same directory  

## Reference

* http://plantuml.com
