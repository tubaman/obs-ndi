#!/bin/bash

# This script is called by CI/libndi-package.sh

set -ex

SDK_ROOT="/tmp/ndisdk"
ARCH="x86_64-linux-gnu"

LIBS_PATH="${SDK_ROOT}/lib/${ARCH}"
BIN_PATH="${SDK_ROOT}/bin/${ARCH}"

chmod +x ${LIBS_PATH}/*
cp -d ${LIBS_PATH}/* /usr/lib/

chmod +x $BIN_PATH/*
cp -d ${BIN_PATH}/* /usr/bin/
rm -f /usr/bin/libndi.so*
