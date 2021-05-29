#!/bin/bash
cd x264
./configure --prefix=/mingw32 --disable-cli --enable-static --extra-ldflags=-static
make
make install
