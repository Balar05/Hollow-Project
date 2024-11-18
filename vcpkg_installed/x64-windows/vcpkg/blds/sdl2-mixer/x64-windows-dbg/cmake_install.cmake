<<<<<<< Updated upstream
# Install script for directory: C:/Users/martimv2/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-mixer/src/ease-2.8.0-5d1a2b7a04.clean

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/martimv2/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/pkgs/sdl2-mixer_x64-windows/debug")
=======
# Install script for directory: C:/Users/arnaubl1/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-mixer/src/ease-2.8.0-5d1a2b7a04.clean

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/arnaubl1/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/pkgs/sdl2-mixer_x64-windows/debug")
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

if(CMAKE_INSTALL_COMPONENT STREQUAL "devel" OR NOT CMAKE_INSTALL_COMPONENT)
<<<<<<< Updated upstream
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/martimv2/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-mixer/x64-windows-dbg/SDL2_mixerd.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "library" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/Users/martimv2/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-mixer/x64-windows-dbg/SDL2_mixerd.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES "C:/Users/martimv2/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-mixer/src/ease-2.8.0-5d1a2b7a04.clean/include/SDL_mixer.h")
=======
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/arnaubl1/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-mixer/x64-windows-dbg/SDL2_mixerd.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "library" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/Users/arnaubl1/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-mixer/x64-windows-dbg/SDL2_mixerd.dll")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES "C:/Users/arnaubl1/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-mixer/src/ease-2.8.0-5d1a2b7a04.clean/include/SDL_mixer.h")
>>>>>>> Stashed changes
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2_mixer" TYPE FILE FILES
<<<<<<< Updated upstream
    "C:/Users/martimv2/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-mixer/x64-windows-dbg/SDL2_mixerConfig.cmake"
    "C:/Users/martimv2/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-mixer/x64-windows-dbg/SDL2_mixerConfigVersion.cmake"
=======
    "C:/Users/arnaubl1/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-mixer/x64-windows-dbg/SDL2_mixerConfig.cmake"
    "C:/Users/arnaubl1/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-mixer/x64-windows-dbg/SDL2_mixerConfigVersion.cmake"
>>>>>>> Stashed changes
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "devel" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2_mixer/SDL2_mixer-shared-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2_mixer/SDL2_mixer-shared-targets.cmake"
<<<<<<< Updated upstream
         "C:/Users/martimv2/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-mixer/x64-windows-dbg/CMakeFiles/Export/97cddd3d921342b27159922255cdc1b6/SDL2_mixer-shared-targets.cmake")
=======
         "C:/Users/arnaubl1/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-mixer/x64-windows-dbg/CMakeFiles/Export/97cddd3d921342b27159922255cdc1b6/SDL2_mixer-shared-targets.cmake")
>>>>>>> Stashed changes
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2_mixer/SDL2_mixer-shared-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2_mixer/SDL2_mixer-shared-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
<<<<<<< Updated upstream
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2_mixer" TYPE FILE FILES "C:/Users/martimv2/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-mixer/x64-windows-dbg/CMakeFiles/Export/97cddd3d921342b27159922255cdc1b6/SDL2_mixer-shared-targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2_mixer" TYPE FILE FILES "C:/Users/martimv2/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-mixer/x64-windows-dbg/CMakeFiles/Export/97cddd3d921342b27159922255cdc1b6/SDL2_mixer-shared-targets-debug.cmake")
=======
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2_mixer" TYPE FILE FILES "C:/Users/arnaubl1/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-mixer/x64-windows-dbg/CMakeFiles/Export/97cddd3d921342b27159922255cdc1b6/SDL2_mixer-shared-targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2_mixer" TYPE FILE FILES "C:/Users/arnaubl1/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-mixer/x64-windows-dbg/CMakeFiles/Export/97cddd3d921342b27159922255cdc1b6/SDL2_mixer-shared-targets-debug.cmake")
>>>>>>> Stashed changes
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "devel" OR NOT CMAKE_INSTALL_COMPONENT)
  
        # FIXME: use file(COPY_FILE) if minimum CMake version >= 3.21
        execute_process(COMMAND "${CMAKE_COMMAND}" -E copy_if_different
<<<<<<< Updated upstream
            "C:/Users/martimv2/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-mixer/x64-windows-dbg/SDL2_mixer-Debug.pc"
            "C:/Users/martimv2/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-mixer/x64-windows-dbg/SDL2_mixer.pc")
        file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig"
            TYPE FILE
            FILES "C:/Users/martimv2/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-mixer/x64-windows-dbg/SDL2_mixer.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "library" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/SDL2_mixer" TYPE FILE FILES "C:/Users/martimv2/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-mixer/src/ease-2.8.0-5d1a2b7a04.clean/LICENSE.txt")
=======
            "C:/Users/arnaubl1/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-mixer/x64-windows-dbg/SDL2_mixer-Debug.pc"
            "C:/Users/arnaubl1/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-mixer/x64-windows-dbg/SDL2_mixer.pc")
        file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig"
            TYPE FILE
            FILES "C:/Users/arnaubl1/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-mixer/x64-windows-dbg/SDL2_mixer.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "library" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/SDL2_mixer" TYPE FILE FILES "C:/Users/arnaubl1/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-mixer/src/ease-2.8.0-5d1a2b7a04.clean/LICENSE.txt")
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
file(WRITE "C:/Users/martimv2/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-mixer/x64-windows-dbg/${CMAKE_INSTALL_MANIFEST}"
=======
file(WRITE "C:/Users/arnaubl1/Documents/GitHub/Hollow-Project/vcpkg_installed/x64-windows/vcpkg/blds/sdl2-mixer/x64-windows-dbg/${CMAKE_INSTALL_MANIFEST}"
>>>>>>> Stashed changes
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
