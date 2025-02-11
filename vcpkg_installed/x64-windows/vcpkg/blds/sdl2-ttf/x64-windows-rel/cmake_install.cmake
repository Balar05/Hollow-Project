# Install script for directory: C:/Users/marti/OneDrive/Documents/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-ttf/src/ase-2.22.0-5f772fae59.clean

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/marti/OneDrive/Documents/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/pkgs/sdl2-ttf_x64-windows")
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

if(CMAKE_INSTALL_COMPONENT STREQUAL "devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/marti/OneDrive/Documents/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-ttf/x64-windows-rel/SDL2_ttf.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "library" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/Users/marti/OneDrive/Documents/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-ttf/x64-windows-rel/SDL2_ttf.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES "C:/Users/marti/OneDrive/Documents/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-ttf/src/ase-2.22.0-5f772fae59.clean/SDL_ttf.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES
    "C:/Users/marti/OneDrive/Documents/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-ttf/x64-windows-rel/SDL2_ttfConfig.cmake"
    "C:/Users/marti/OneDrive/Documents/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-ttf/x64-windows-rel/SDL2_ttfConfigVersion.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "devel" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2_ttf-shared-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2_ttf-shared-targets.cmake"
         "C:/Users/marti/OneDrive/Documents/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-ttf/x64-windows-rel/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/SDL2_ttf-shared-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2_ttf-shared-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/cmake/SDL2_ttf-shared-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "C:/Users/marti/OneDrive/Documents/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-ttf/x64-windows-rel/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/SDL2_ttf-shared-targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "C:/Users/marti/OneDrive/Documents/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-ttf/x64-windows-rel/CMakeFiles/Export/272ceadb8458515b2ae4b5630a6029cc/SDL2_ttf-shared-targets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "devel" OR NOT CMAKE_INSTALL_COMPONENT)
  
        # FIXME: use file(COPY_FILE) if CMake 3.21+
        execute_process(COMMAND "C:/Users/marti/AppData/Local/vcpkg/downloads/tools/cmake-3.27.1-windows/cmake-3.27.1-windows-i386/bin/cmake.exe" -E copy_if_different
            "C:/Users/marti/OneDrive/Documents/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-ttf/x64-windows-rel/SDL2_ttf-Release.pc"
            "C:/Users/marti/OneDrive/Documents/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-ttf/x64-windows-rel/SDL2_ttf.pc")
        file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig"
            TYPE FILE
            FILES "C:/Users/marti/OneDrive/Documents/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-ttf/x64-windows-rel/SDL2_ttf.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "library" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/SDL2_ttf" TYPE FILE FILES "C:/Users/marti/OneDrive/Documents/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-ttf/src/ase-2.22.0-5f772fae59.clean/LICENSE.txt")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "C:/Users/marti/OneDrive/Documents/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-ttf/x64-windows-rel/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
