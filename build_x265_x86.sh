#!/bin/bash
cd x265
mkdir x265-build
cd x265-build
cmake -G "MSYS Makefiles" -DWINXP_SUPPORT=ON -DENABLE_CLI=OFF \
    -DENABLE_SHARED=OFF -DCMAKE_INSTALL_PREFIX=/mingw64 -DENABLE_ASSEMBLY=OFF \
    '-DEXTRA_LINK_FLAGS=-static-libgcc -static-libstdc++' ../source
make
make install
