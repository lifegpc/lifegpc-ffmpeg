#!/bin/bash
cd x264
./configure --host=mingw32 --prefix=/mingw32 --disable-cli --enable-static --extra-ldflags=-static
make
make install
