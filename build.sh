#!/bin/sh

rm -rf build && cmake -S . -B build -DCMAKE_TOOLCHAIN_FILE=../aarch64_toolchain.cmake && cmake --build build