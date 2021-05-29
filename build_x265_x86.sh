#!/bin/bash
cd x265
mkdir x265-build
cd x265-build
cmake -G "MSYS Makefiles" -DSTATIC_LINK_CRT=ON -DWINXP_SUPPORT=ON \
    -DENABLE_CLI=OFF -DENABLE_SHARED=OFF -DCMAKE_INSTALL_PREFIX=/mingw32 \
    -DENABLE_ASSEMBLY=OFF ../source
make
make install
