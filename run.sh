#!/usr/bin/env sh

docker run -it --rm --runtime nvidia --network host --privileged -v `pwd`/examples:/app/examples akida_xavier
