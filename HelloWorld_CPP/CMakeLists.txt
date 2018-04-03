cmake_minimum_required(VERSION 3.9)

set (CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/static_libs)
set (CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/shared_libs)
set (CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

project(helloworld LANGUAGES CXX C)

add_subdirectory (AppHello)
add_subdirectory (LibHello)