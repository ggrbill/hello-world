project (AppHello)

include_directories (${CMAKE_SOURCE_DIR}/LibHello/include)

file (GLOB ${PROJECT_NAME}_sources ${CMAKE_SOURCE_DIR}/${PROJECT_NAME}/*.cpp)
add_executable (${PROJECT_NAME} ${${PROJECT_NAME}_sources})

target_link_libraries (${PROJECT_NAME} LibHello)