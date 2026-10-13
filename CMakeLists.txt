cmake_minimum_required(VERSION 3.20)

project(HelloProject LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

add_executable(hello src/main.cpp)

include(FetchContent)

FetchContent_Declare(
    googletest
    URL https://github.com/google/googletest/archive/refs/tags/v1.14.0.zip
    DOWNLOAD_EXTRACT_TIMESTAMP TRUE
)

set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)

enable_testing()

add_executable(hello_tests tests/test_main.cpp)
target_link_libraries(hello_tests PRIVATE GTest::gtest_main)

add_test(
    NAME BasicAddition
    COMMAND hello_tests --gtest_filter=BasicAddition.AddsTwoNumbers
)
