# ##############################################################################
# # File: CMakeLists.txt                                                       #
# # Project: tests                                                             #
# # Created Date: 2023/11/06 17:10:58                                          #
# # Author: realjf                                                             #
# # -----                                                                      #
# # Last Modified: 2023/11/06 17:30:52                                         #
# # Modified By: realjf                                                        #
# # -----                                                                      #
# #                                                                            #
# ##############################################################################

cmake_minimum_required(VERSION 3.12)

set(PROJECT_NAME miniz-cpp)
project(${PROJECT_NAME} LANGUAGES C CXX VERSION 0.0.1)


file(GLOB_RECURSE SRC_FILES LIST_DIRECTORIES false RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} *.c??)
file(GLOB_RECURSE HEADER_FILES LIST_DIRECTORIES false RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} *.h??)

include_directories(..)
include_directories(.)

set(CMAKE_CXX_FLAGS "-m64")
set(CMAKE_CXX_FLAGS "-g")
set(CMAKE_CXX_FLAGS "-Wall")

add_executable(${PROJECT_NAME} ${SRC_FILES} ${HEADER_FILES})

