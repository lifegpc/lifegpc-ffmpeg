#!/bin/bash
cd x265
mkdir x265-build
cd x265-build
cmake -G "MSYS Makefiles" -DWINXP_SUPPORT=OFF -DENABLE_CLI=OFF \
    -DENABLE_SHARED=OFF -DCMAKE_INSTALL_PREFIX=/mingw64 -DHIGH_BIT_DEPTH=ON \
    -DMAIN12=ON -DENABLE_ASSEMBLY=OFF -DEXTRA_LINK_FLAGS=-static \
    '-DEXTRA_LIB=-lgcc -lpthread' ../source
make
make install
