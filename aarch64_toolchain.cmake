# aarch64_toolchain.cmake

# Specify the system and architecture
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR aarch64)

# Specify the cross-compiler paths
set(CMAKE_C_COMPILER ${CMAKE_CURRENT_LIST_DIR}/toolchains/gcc-linaro-6.4.1-2017.11-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-gcc)
set(CMAKE_CXX_COMPILER ${CMAKE_CURRENT_LIST_DIR}/toolchains/gcc-linaro-6.4.1-2017.11-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-g++)

# Set the sysroot to the extracted root filesystem
set(CMAKE_SYSROOT ${CMAKE_CURRENT_LIST_DIR}/sysroot)
set(CMAKE_FIND_ROOT_PATH ${CMAKE_CURRENT_LIST_DIR}/sysroot)

# Configure cmake to find libraries and includes within the sysroot
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
