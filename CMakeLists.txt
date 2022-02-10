cmake_minimum_required(VERSION 3.22)

project(cumath_test)

#include_directories($PROJECT_SOURCE_DIR)

find_package(CUDAToolkit)

add_executable( cublas_test1 cublas_test.cpp )

add_executable( cublas_test2 cublas_test.cpp )

target_link_libraries( cublas_test1 CUDA::cublas)
target_link_libraries( cublas_test2 CUDA::cublas_static)
target_link_libraries( cublas_test2 CUDA::cublasLt_static)



# cusolver example (adapted from) https://github.com/zishun/cuSolverRf-batch


set(cusolver_test_sources 
    "cusolverrf-batch-example/mmio.c"
    "cusolverrf-batch-example/mmio_wrapper.cpp"
    "cusolverrf-batch-example/cuSolverRfBatch.cpp")



add_executable( cusolver_test1 ${cusolver_test_sources} )
add_executable( cusolver_test2 ${cusolver_test_sources} )

target_link_libraries( cusolver_test1 CUDA::cublas)
target_link_libraries( cusolver_test1 CUDA::cusolver)
target_link_libraries( cusolver_test1 CUDA::cusparse)

target_link_libraries( cusolver_test2 CUDA::cublas_static)
target_link_libraries( cusolver_test2 CUDA::cublasLt_static)
target_link_libraries( cusolver_test2 CUDA::cusolver_static)
target_link_libraries( cusolver_test2 CUDA::cusparse_static)


# cusolver


