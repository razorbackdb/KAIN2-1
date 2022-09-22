if(DEFINED ${PLATFORM_PSP2})

string(REGEX REPLACE "(-D|/D)[^ ]* " "" CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")

target_compile_definitions(${PROJECT_NAME} PRIVATE SN_TARGET_PSP2 NDEBUG __SNC__)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Tc")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Tc")

target_link_directories(${PROJECT_NAME} PRIVATE "$ENV{SCE_PSP2_SDK_DIR}/target/lib")

target_include_directories(${PROJECT_NAME} PRIVATE "$ENV{SCE_PSP2_SDK_DIR}/host_tools/build/include")
target_include_directories(${PROJECT_NAME} PRIVATE "$ENV{SCE_PSP2_SDK_DIR}/target/include")
target_include_directories(${PROJECT_NAME} PRIVATE "$ENV{SCE_PSP2_SDK_DIR}/target/include_common")

set(CMAKE_STATIC_LIBRARY_PREFIX "lib")
set(CMAKE_STATIC_LIBRARY_SUFFIX ".lib.a")
set(CMAKE_C_STANDARD_LIBRARIES "")
set(CMAKE_CXX_STANDARD_LIBRARIES "")

endif()