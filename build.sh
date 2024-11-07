#!/bin/sh

#cmake -DCMAKE_TOOLCHAIN_FILE=../aarch64_toolchain.cmake ..
rm -rf build && cmake -S . -B build -DCMAKE_TOOLCHAIN_FILE=../aarch64_toolchain.cmake && cmake --build build