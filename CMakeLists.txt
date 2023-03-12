#set(CMAKE_CXX_COMPILER /home/ckf104/install/llvm/bin/clang++)
#set(CMAKE_C_COMPILER /home/ckf104/install/llvm/bin/clang)
#set(CMAKE_CXX_COMPILER /home/ckf104/tmp/install/llvm-git/bin/clang++)
#set(CMAKE_C_COMPILER /home/ckf104/tmp/install/llvm-git/bin/clang)
set(CMAKE_CXX_COMPILER /home/ckf104/tmp/install/llvm-git-ext/bin/clang++)
set(CMAKE_C_COMPILER /home/ckf104/tmp/install/llvm-git-ext/bin/clang)

cmake_minimum_required(VERSION 3.4)
project(GSLP)
# uncommented this if debugging
#set(CMAKE_PREFIX_PATH /home/ckf104/tmp/install/llvm-epi)
#set(CMAKE_PREFIX_PATH /home/ckf104/tmp/install/llvm-git)
#set(CMAKE_PREFIX_PATH /home/ckf104/tmp/install/llvm-git-debug)
set(CMAKE_PREFIX_PATH /home/ckf104/tmp/install/llvm-git-debug-ext)
#set(CMAKE_PREFIX_PATH /home/ckf104/tmp/install/llvm-git-ext)
	
find_package(LLVM REQUIRED CONFIG)

string(REPLACE "-DNDEBUG" "" CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE}")

include(sanitizers.cmake)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(LLVM_BUILD_TOOLS ON)

add_definitions(${LLVM_DEFINITIONS})
if(LLVM_PACKAGE_VERSION VERSION_GREATER_EQUAL 17.0.0)
  add_definitions(-DLLVM_17)
endif()
if(LLVM_BUILD_TYPE STREQUAL "Debug")
  add_definitions(-DBUILD_WITH_DEBUG_LLVM)
endif()
  
include_directories(${LLVM_INCLUDE_DIRS})
link_directories(${LLVM_LIBRARY_DIRS})
add_definitions(-fno-rtti)
add_definitions(-std=c++17)

include_directories(gslp)
add_subdirectory(gslp)

configure_file(
  ${CMAKE_SOURCE_DIR}/test/lit.site.cfg.in
  ${CMAKE_BINARY_DIR}/test/lit.site.cfg
)

configure_file(
  ${CMAKE_SOURCE_DIR}/utils/vegen-clang.in
  ${CMAKE_BINARY_DIR}/vegen-clang
  @ONLY
)

configure_file(
  ${CMAKE_SOURCE_DIR}/utils/vegen-clang.in
  ${CMAKE_BINARY_DIR}/vegen-clang++
  @ONLY
)

configure_file(
  ${CMAKE_SOURCE_DIR}/utils/vegen-opt.in
  ${CMAKE_BINARY_DIR}/vegen-opt
)
