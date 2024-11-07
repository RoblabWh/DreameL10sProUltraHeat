# Set the minimum CMake version
cmake_minimum_required(VERSION 3.5)

# Define the project name and languages
project(HelloWorld C CXX)

# Set RPATH to ensure the executable uses local libraries in the same directory
set(CMAKE_BUILD_RPATH "$ORIGIN")
set(CMAKE_INSTALL_RPATH "$ORIGIN")
set(CMAKE_BUILD_WITH_INSTALL_RPATH TRUE)

# Add the executable for the hello world program
add_executable(helloworld src/helloworld.cpp)