cmake_minimum_required(VERSION 3.27.1)
project(CheckASM ASM)
file(WRITE "${CMAKE_CURRENT_BINARY_DIR}/result.cmake"
  "set(CMAKE_ASM_COMPILER \"${CMAKE_ASM_COMPILER}\")\n"
  "\n"
  )