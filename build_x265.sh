#!/bin/bash
cd x265
mkdir x265-build
cd x265-build
cmake -G "MSYS Makefiles" -DSTATIC_LINK_CRT=ON -DWINXP_SUPPORT=OFF \
    -DENABLE_CLI=OFF -DENABLE_SHARED=OFF -DCMAKE_INSTALL_PREFIX=/mingw64 \
    -DHIGH_BIT_DEPTH=ON -DMAIN12=ON ../source
make
make install
