#!/bin/bash

# build obs-ndi
.github/scripts/build-linux

# package libndi deb
./CI/libndi-package.sh

# package obs-ndi deb
#.github/scripts/package-linux --skip-deps --target linux-x86_64 --config Release --package
.github/scripts/package-linux --target linux-x86_64 --config Release --package
