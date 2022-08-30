cmake_minimum_required(VERSION 3.0.0)
project(sfml_test VERSION 0.1.0)

find_package(SFML COMPONENTS graphics audio REQUIRED)
include_directories(include/)

add_executable(sfml_test main.cpp src/Hero.cpp src/Enemy.cpp src/Rocket.cpp)

target_link_libraries(sfml_test sfml-graphics sfml-audio)
target_compile_features(sfml_test PRIVATE cxx_std_20)
target_link_directories(sfml_test PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/src)
target_link_directories(sfml_test PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
target_link_directories(sfml_test PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/assets)
