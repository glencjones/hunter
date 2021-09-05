# Copyright (c) 2017, Pawel Bylica
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    sparsehashc11
    VERSION
    2.11.1
    URL
    "https://github.com/sparsehash/sparsehash-c11/archive/refs/tags/v2.11.1.tar.gz"
    SHA1
    0542e0aba2ffd6a280843c62c0e7f39ac4975a15
)

if(MSVC)
    hunter_cmake_args(sparsehashc11 CMAKE_ARGS
        WITH_TESTS=OFF
        WITH_GFLAGS=OFF
        WITH_BENCHMARK_TOOLS=OFF
        WITH_CORE_TOOLS=OFF
        WITH_TOOLS=OFF
        PORTABLE=ON
        ROCKSDB_INSTALL_ON_WINDOWS=ON
        FAIL_ON_WARNINGS=OFF)
else()
    hunter_cmake_args(sparsehashc11 CMAKE_ARGS
        WITH_TESTS=OFF
        WITH_GFLAGS=OFF
        WITH_BENCHMARK_TOOLS=OFF
        WITH_CORE_TOOLS=OFF
        WITH_TOOLS=OFF
        PORTABLE=ON
        FAIL_ON_WARNINGS=OFF)
endif()

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(sparsehashc11)
hunter_download(PACKAGE_NAME sparsehashc11)
