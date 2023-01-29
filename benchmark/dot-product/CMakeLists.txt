cmake_minimum_required(VERSION 3.0.0)
project(product VERSION 0.1.0)


add_executable(product dot.cpp)
set(CMAKE_PREFIX_PATH /home/ckf/tmp/rvv/benchmark/google-bench/install/lib/cmake/benchmark)
target_compile_options(product PRIVATE -march=native)
find_package(benchmark REQUIRED)
target_link_libraries(product benchmark::benchmark benchmark::benchmark_main)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
