#!/bin/bash
cd x265
patch -p1 -i ../x265.patch
mkdir x265-build
cd x265-build
cmake -G "MSYS Makefiles" -DWINXP_SUPPORT=OFF -DENABLE_CLI=OFF \
    -DENABLE_SHARED=OFF -DCMAKE_INSTALL_PREFIX=/mingw64 -DHIGH_BIT_DEPTH=ON \
    -DMAIN12=ON -DENABLE_ASSEMBLY=OFF -DSTATIC_LINK_CRT=ON ../source
make
make install
cd ../..
mkdir x265-debug
cd x265-debug
mkdir lib
cp -v /mingw64/lib/libx265.a lib/
cd lib
mkdir pkgconfig
cp -v /mingw64/lib/pkgconfig/x265.pc pkgconfig/
cd ..
mkdir include
cp -v /mingw64/include/x265* include/
7z a -mx9 -y ../x265-debug.7z *
