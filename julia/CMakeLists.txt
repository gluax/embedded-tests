cmake_minimum_required(VERSION 3.5)
project(embedded_tests LANGUAGES CXX)

set(ecl_VERSION_MAJOR 0)
set(ecl_VERSION_MINOR 1)

set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR})
set(CMAKE_CXX_STANDARD 20)

set(JlCxx_DIR "/home/gluax/.julia/packages/CxxWrap/KcmSi/deps/usr/lib/cmake/JlCxx/")
find_package(JlCxx REQUIRED)
find_package(Julia REQUIRED)

set(CMAKE_INSTALL_RPATH "${JlCxx_DIR}/../")
set(CMAKE_INSTALL_RPATH_USE_LINK_PATH TRUE)

set(CMAKE_MACOSX_RPATH 1)
set(CMAKE_SKIP_BUILD_RPATH FALSE)
set(CMAKE_BUILD_WITH_INSTALL_RPATH TRUE)

file(GLOB_RECURSE SOURCES exlib/*.cc)

add_library(exlib SHARED ${SOURCES})
target_compile_options(exlib PRIVATE -Wall -Werror -pedantic -fPIC -O3)
target_link_libraries(exlib JlCxx::cxxwrap_julia)
set(LIBRARY_OUTPUT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/libs)

add_executable(ejl main.cc)
target_include_directories(ejl PUBLIC
  "$<BUILD_INTERFACE:${Julia_INCLUDE_DIRS}>"
)
add_definitions(-DJULIA_ENABLE_THREADING)
target_link_libraries(ejl $<BUILD_INTERFACE:${Julia_LIBRARY}> ${Julia_LIBRARY_DIR}/julia/libLLVM-6.0.1.so)
link_directories(${Julia_LIBRARY_DIR} ${Julia_LIBRARY_DIR}/julia)
target_compile_options(ejl PRIVATE -Wall -Werror -pedantic -fPIC -O3)
