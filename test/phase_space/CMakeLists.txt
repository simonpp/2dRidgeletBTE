
file(GLOB files RELATIVE ${CMAKE_SOURCE_DIR}/test/phase_space "main*cpp")
foreach(file ${files})
  string(REGEX REPLACE "(main_|.cpp)" "" target ${file})
  add_executable(${target} ${file})
  add_dependencies(${target} quad collision)
  target_link_libraries(${target} "${quad_location};${collision_location};${export_location};${SYSTEM_LIBRARIES}")
endforeach()
