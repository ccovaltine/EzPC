# Install script for directory: /home/lyc/Desktop/EzPC/SCI/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/lyc/Desktop/EzPC/SCI/cmake-build-debug/lib/libSCI-OT.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/lyc/Desktop/EzPC/SCI/cmake-build-debug/lib/libSCI-HE.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/lyc/Desktop/EzPC/SCI/cmake-build-debug/lib/libSCI-FloatingPoint.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/lyc/Desktop/EzPC/SCI/cmake-build-debug/lib/libSCI-SecfloatML.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/lyc/Desktop/EzPC/SCI/cmake-build-debug/lib/libSCI-Beacon.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/lyc/Desktop/EzPC/SCI/cmake-build-debug/lib/libSCI-BuildingBlocks.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/lyc/Desktop/EzPC/SCI/cmake-build-debug/lib/libSCI-LinearOT.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/lyc/Desktop/EzPC/SCI/cmake-build-debug/lib/libSCI-LinearHE.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/lyc/Desktop/EzPC/SCI/cmake-build-debug/lib/libSCI-Math.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/lyc/Desktop/EzPC/SCI/cmake-build-debug/lib/libSCI-GC.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SCI/SCITargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SCI/SCITargets.cmake"
         "/home/lyc/Desktop/EzPC/SCI/cmake-build-debug/src/CMakeFiles/Export/b3c8551532b255d0ffe0d32ec77a0d27/SCITargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SCI/SCITargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SCI/SCITargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SCI" TYPE FILE FILES "/home/lyc/Desktop/EzPC/SCI/cmake-build-debug/src/CMakeFiles/Export/b3c8551532b255d0ffe0d32ec77a0d27/SCITargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SCI" TYPE FILE FILES "/home/lyc/Desktop/EzPC/SCI/cmake-build-debug/src/CMakeFiles/Export/b3c8551532b255d0ffe0d32ec77a0d27/SCITargets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES
    "/home/lyc/Desktop/EzPC/SCI/src/utils"
    "/home/lyc/Desktop/EzPC/SCI/src/OT"
    "/home/lyc/Desktop/EzPC/SCI/src/GC"
    "/home/lyc/Desktop/EzPC/SCI/src/Millionaire"
    "/home/lyc/Desktop/EzPC/SCI/src/NonLinear"
    "/home/lyc/Desktop/EzPC/SCI/src/BuildingBlocks"
    "/home/lyc/Desktop/EzPC/SCI/src/LinearOT"
    "/home/lyc/Desktop/EzPC/SCI/src/LinearHE"
    "/home/lyc/Desktop/EzPC/SCI/src/Math"
    "/home/lyc/Desktop/EzPC/SCI/src/FloatingPoint"
    FILES_MATCHING REGEX "/[^/]*\\.h$" REGEX "/[^/]*\\.hpp$")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/home/lyc/Desktop/EzPC/SCI/src/defines.h"
    "/home/lyc/Desktop/EzPC/SCI/src/defines_uniform.h"
    "/home/lyc/Desktop/EzPC/SCI/src/defines_float.h"
    "/home/lyc/Desktop/EzPC/SCI/src/globals.h"
    "/home/lyc/Desktop/EzPC/SCI/src/globals_float.h"
    "/home/lyc/Desktop/EzPC/SCI/src/library_fixed.h"
    "/home/lyc/Desktop/EzPC/SCI/src/library_fixed_uniform.h"
    "/home/lyc/Desktop/EzPC/SCI/src/library_float.h"
    "/home/lyc/Desktop/EzPC/SCI/src/cleartext_library_fixed.h"
    "/home/lyc/Desktop/EzPC/SCI/src/cleartext_library_fixed_uniform.h"
    "/home/lyc/Desktop/EzPC/SCI/src/cleartext_library_float.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SCI" TYPE FILE FILES
    "/home/lyc/Desktop/EzPC/SCI/src/utils/cmake/FindGMP.cmake"
    "/home/lyc/Desktop/EzPC/SCI/src/utils/cmake/source_of_randomness.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/lyc/Desktop/EzPC/SCI/cmake-build-debug/src/utils/cmake_install.cmake")
  include("/home/lyc/Desktop/EzPC/SCI/cmake-build-debug/src/OT/cmake_install.cmake")
  include("/home/lyc/Desktop/EzPC/SCI/cmake-build-debug/src/GC/cmake_install.cmake")
  include("/home/lyc/Desktop/EzPC/SCI/cmake-build-debug/src/Millionaire/cmake_install.cmake")
  include("/home/lyc/Desktop/EzPC/SCI/cmake-build-debug/src/BuildingBlocks/cmake_install.cmake")
  include("/home/lyc/Desktop/EzPC/SCI/cmake-build-debug/src/LinearOT/cmake_install.cmake")
  include("/home/lyc/Desktop/EzPC/SCI/cmake-build-debug/src/LinearHE/cmake_install.cmake")
  include("/home/lyc/Desktop/EzPC/SCI/cmake-build-debug/src/NonLinear/cmake_install.cmake")
  include("/home/lyc/Desktop/EzPC/SCI/cmake-build-debug/src/Math/cmake_install.cmake")
  include("/home/lyc/Desktop/EzPC/SCI/cmake-build-debug/src/FloatingPoint/cmake_install.cmake")

endif()

