#!/bin/bash
cp -f archive/plantuml.1.2021.1.jar plantuml.jar
time docker build -t kyledinh/plantuml .
rm plantuml.jar
say -v Karen All done. Building the plant U. M. L. image.
