#!/bin/bash
cd aom
mkdir aom-build
cd aom-build
cmake -DCONFIG_GCC=1 -DSTATIC_LINK_JXL=1 -DENABLE_DOCS=OFF \
    -DENABLE_EXAMPLES=OFF -DENABLE_NASM=ON -DENABLE_TESTS=OFF \
    -DENABLE_TOOLS=OFF -DCMAKE_INSTALL_PREFIX=/mingw64 -G "MSYS Makefiles" ..
make
make install
