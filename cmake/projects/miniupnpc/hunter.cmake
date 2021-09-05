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
    miniupnpc
    VERSION
    2.2.2
    URL
    "http://miniupnp.free.fr/files/miniupnpc-2.2.2.tar.gz"
    SHA1
    a8e4415d99a9bee9321cb5fc30ac1d048d602af5
)

if(MSVC)
    hunter_cmake_args(miniupnpc CMAKE_ARGS
        WITH_TESTS=OFF
        WITH_GFLAGS=OFF
        WITH_BENCHMARK_TOOLS=OFF
        WITH_CORE_TOOLS=OFF
        WITH_TOOLS=OFF
        PORTABLE=ON
        ROCKSDB_INSTALL_ON_WINDOWS=ON
        FAIL_ON_WARNINGS=OFF)
else()
    hunter_cmake_args(miniupnpc CMAKE_ARGS
        WITH_TESTS=OFF
        WITH_GFLAGS=OFF
        WITH_BENCHMARK_TOOLS=OFF
        WITH_CORE_TOOLS=OFF
        WITH_TOOLS=OFF
        PORTABLE=ON
        FAIL_ON_WARNINGS=OFF)
endif()

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(miniupnpc)
hunter_download(PACKAGE_NAME miniupnpc)
