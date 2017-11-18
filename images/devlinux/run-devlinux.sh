#!/bin/bash
docker run -it --name devlinux-container -v /Users/kyle/src:/opt/src -e NODE_PATH=/opt/src/node_modules devlinux-img bash
say -v Karen Exiting... And removing the dev. linix. container.
