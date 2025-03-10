#!/bin/bash

cd /app/lv_port_linux

CC=aarch64-linux-gnu-gcc CXX=aarch64-linux-gnu-g++ cmake -B build-arm64-native -S . \
      -DCMAKE_CXX_FLAGS="-O3" \
      -DCMAKE_C_FLAGS="-O3" \
      -DCMAKE_BUILD_TYPE=Release

make -j$(nproc) -C build-arm64-native
