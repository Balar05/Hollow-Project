<<<<<<< Updated upstream
# Install script for directory: C:/Users/martimv2/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/wavpack/src/5.6.0-d46202430d.clean

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/martimv2/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/pkgs/wavpack_x64-windows")
=======
# Install script for directory: C:/Users/arnaubl1/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/wavpack/src/5.6.0-d46202430d.clean

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/arnaubl1/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/pkgs/wavpack_x64-windows")
>>>>>>> Stashed changes
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/martimv2/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/wavpack/x64-windows-rel/wavpackdll.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/Users/martimv2/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/wavpack/x64-windows-rel/wavpackdll.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/wavpack" TYPE FILE FILES "C:/Users/martimv2/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/wavpack/src/5.6.0-d46202430d.clean/include/wavpack.h")
=======
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/arnaubl1/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/wavpack/x64-windows-rel/wavpackdll.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/Users/arnaubl1/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/wavpack/x64-windows-rel/wavpackdll.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/wavpack" TYPE FILE FILES "C:/Users/arnaubl1/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/wavpack/src/5.6.0-d46202430d.clean/include/wavpack.h")
>>>>>>> Stashed changes
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/wavpack-config.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/wavpack-config.cmake"
<<<<<<< Updated upstream
         "C:/Users/martimv2/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/wavpack/x64-windows-rel/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/wavpack-config.cmake")
=======
         "C:/Users/arnaubl1/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/wavpack/x64-windows-rel/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/wavpack-config.cmake")
>>>>>>> Stashed changes
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/wavpack-config-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/wavpack-config.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
<<<<<<< Updated upstream
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "C:/Users/martimv2/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/wavpack/x64-windows-rel/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/wavpack-config.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "C:/Users/martimv2/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/wavpack/x64-windows-rel/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/wavpack-config-release.cmake")
=======
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "C:/Users/arnaubl1/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/wavpack/x64-windows-rel/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/wavpack-config.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "C:/Users/arnaubl1/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/wavpack/x64-windows-rel/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/wavpack-config-release.cmake")
>>>>>>> Stashed changes
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
<<<<<<< Updated upstream
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "C:/Users/martimv2/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/wavpack/x64-windows-rel/wavpack-config-version.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "C:/Users/martimv2/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/wavpack/x64-windows-rel/wavpack.pc")
=======
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "C:/Users/arnaubl1/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/wavpack/x64-windows-rel/wavpack-config-version.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "C:/Users/arnaubl1/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/wavpack/x64-windows-rel/wavpack.pc")
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
file(WRITE "C:/Users/martimv2/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/wavpack/x64-windows-rel/${CMAKE_INSTALL_MANIFEST}"
=======
file(WRITE "C:/Users/arnaubl1/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/wavpack/x64-windows-rel/${CMAKE_INSTALL_MANIFEST}"
>>>>>>> Stashed changes
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
