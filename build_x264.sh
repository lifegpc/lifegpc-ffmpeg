#!/bin/bash
cd x264
./configure --prefix=/mingw64 --disable-cli --enable-static --extra-ldflags=-static
make
make install
