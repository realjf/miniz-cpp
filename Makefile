# ##############################################################################
# # File: Makefile                                                             #
# # Project: miniz-cpp                                                         #
# # Created Date: 2023/11/06 17:08:42                                          #
# # Author: realjf                                                             #
# # -----                                                                      #
# # Last Modified: 2023/11/06 17:50:46                                         #
# # Modified By: realjf                                                        #
# # -----                                                                      #
# #                                                                            #
# ##############################################################################


PLAT ?= LINUX
TYPE ?= DEBUG
TEST ?= OFF


BUILD_DIR=build
CMAKE_DIR=../

.PHONY: test
test:
	@rm -rf ${BUILD_DIR}
	@mkdir -p ${BUILD_DIR}
ifeq ($(PLAT),WINDOWS)
	@cd ${BUILD_DIR} && cmake ${CMAKE_DIR} -G "Visual Studio 16 2019" -A x64 -DTEST_APP=${TEST}
endif
ifeq ($(PLAT),LINUX)
	@cd ${BUILD_DIR} && cmake ${CMAKE_DIR} -G "Unix Makefiles" -D CMAKE_C_COMPILER=gcc -D CMAKE_CXX_COMPILER=g++  -DTEST_APP=${TEST}
endif
ifeq ($(PLAT),MACOS)
	@cd ${BUILD_DIR} && cmake ${CMAKE_DIR} -G "Unix Makefiles"  -DTEST_APP=${TEST}
endif
ifeq (${TYPE},DEBUG)
	@cd ${BUILD_DIR} && cmake --build . --config Debug
endif
ifeq (${TYPE},RELEASE)
	@cd ${BUILD_DIR} && cmake --build . --config Release
endif
ifeq (${TYPE},RELDEBINFO)
	@cd ${BUILD_DIR} && cmake --build . --config ReleaseDebInfo
endif



M ?= "update"
B ?= "master"
# 推送到代码仓库
.PHONY: push
push:
	@git add -A && git commit -m "${M}" && git push origin ${B}
