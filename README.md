# Dreame L10s Pro Ultra Heat 🤖🧹
Cross Compilation Tools for the Dreame L10s Pro Ultra Heat

## Overview
This repository provides tools and scripts for cross-compiling projects for the Dreame L10s Pro Ultra Heat.

## Clone Repository
   ```bash
   git clone git@github.com:RoblabWh/DreameL10sProUltraHeat.git --recursive
   ```

## Setting Up the Build Environment

1. **Download Required Files**:  
   Download the `dreame.vacuum.r2338_1527_fel.zip` file from e.g. Sciebo or dustbuilder and place it in the root of this project directory.

2. **Initialize the Environment**:  
   Run the following command to set up the environment:
   ```bash
   ./init.sh
   ```
## Building Examples  
To build the provided examples, run:
   ```bash
   rm -rf build && cmake -S . -B build -DCMAKE_TOOLCHAIN_FILE=../aarch64_toolchain.cmake -DONLY_BUILD_HELLOWORLD=ON && cmake --build build

   ```
## Build All
   ```bash
   ./build.sh

   ```

## How to copy files from or to Robot

Robot to Dev
   ```bash
scp -S /usr/local/bin/dbclient ./CMakeCache.txt niklas@172.16.35.166:/home/niklas/Desktop/Readme.txt
   ```
   Dev to Robot
   ```bash
scp -S /usr/local/bin/dbclient niklas@172.16.35.166:/home/niklas/Desktop/Readme.txt ./niklas.txt
   ```
