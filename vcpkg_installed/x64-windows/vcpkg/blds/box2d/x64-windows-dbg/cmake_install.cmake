<<<<<<< Updated upstream
# Install script for directory: C:/Users/martimv2/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/box2d/src/64c16f51bc-7b27809cb5.clean

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/martimv2/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/pkgs/box2d_x64-windows/debug")
=======
# Install script for directory: C:/Users/arnaubl1/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/box2d/src/64c16f51bc-7b27809cb5.clean

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/arnaubl1/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/pkgs/box2d_x64-windows/debug")
>>>>>>> Stashed changes
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "OFF")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
<<<<<<< Updated upstream
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "C:/Users/martimv2/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/box2d/src/64c16f51bc-7b27809cb5.clean/include/box2d")
=======
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "C:/Users/arnaubl1/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/box2d/src/64c16f51bc-7b27809cb5.clean/include/box2d")
>>>>>>> Stashed changes
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
<<<<<<< Updated upstream
  include("C:/Users/martimv2/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/box2d/x64-windows-dbg/src/cmake_install.cmake")
=======
  include("C:/Users/arnaubl1/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/box2d/x64-windows-dbg/src/cmake_install.cmake")
>>>>>>> Stashed changes

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
<<<<<<< Updated upstream
file(WRITE "C:/Users/martimv2/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/box2d/x64-windows-dbg/${CMAKE_INSTALL_MANIFEST}"
=======
file(WRITE "C:/Users/arnaubl1/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/box2d/x64-windows-dbg/${CMAKE_INSTALL_MANIFEST}"
>>>>>>> Stashed changes
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
