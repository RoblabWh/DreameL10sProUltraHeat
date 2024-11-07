# Set the minimum CMake version
cmake_minimum_required(VERSION 3.5)

# Define the project name and languages
project(HelloWorld C CXX)

# Set RPATH to ensure the executable uses local libraries in the same directory
set(CMAKE_BUILD_RPATH "$ORIGIN")
set(CMAKE_INSTALL_RPATH "$ORIGIN")
set(CMAKE_BUILD_WITH_INSTALL_RPATH TRUE)

# Add a build option to compile only helloworld
option(ONLY_BUILD_HELLOWORLD "Compile only the HelloWorld example" OFF)

# Conditionally add the helloworld target based on the build option
if(ONLY_BUILD_HELLOWORLD)
    add_executable(helloworld src/helloworld.cpp)
else()
    add_executable(helloworld src/helloworld.cpp)
endif()
