cmake_minimum_required(VERSION 3.22)

project(cumath_test)
find_package(CUDAToolkit)

add_executable( cublas_test1 main.cpp )

add_executable( cublas_test2 main.cpp )

target_link_libraries( cublas_test1 CUDA::cublas)
target_link_libraries( cublas_test2 CUDA::cublas_static)


