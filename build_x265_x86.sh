#!/bin/bash
cd x265
patch -p1 -i ../x265.patch
mkdir x265-build
cd x265-build
cmake -G "MSYS Makefiles" -DWINXP_SUPPORT=ON -DENABLE_CLI=OFF \
    -DENABLE_SHARED=OFF -DCMAKE_INSTALL_PREFIX=/mingw32 -DENABLE_ASSEMBLY=OFF \
    -DSTATIC_LINK_CRT=ON ../source
make
make install
