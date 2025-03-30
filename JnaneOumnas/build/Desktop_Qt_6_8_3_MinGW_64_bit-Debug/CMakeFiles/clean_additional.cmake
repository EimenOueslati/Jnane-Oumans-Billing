# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appJnaneOumnas_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appJnaneOumnas_autogen.dir\\ParseCache.txt"
  "appJnaneOumnas_autogen"
  )
endif()
