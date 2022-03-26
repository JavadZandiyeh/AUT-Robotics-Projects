# Install script for directory: /home/javad/Desktop/Robotics/AUT-Robotics/catkin_ws0/src/student_filter

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/javad/Desktop/Robotics/AUT-Robotics/catkin_ws0/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/student_filter/msg" TYPE FILE FILES "/home/javad/Desktop/Robotics/AUT-Robotics/catkin_ws0/src/student_filter/msg/Student.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/student_filter/cmake" TYPE FILE FILES "/home/javad/Desktop/Robotics/AUT-Robotics/catkin_ws0/build/student_filter/catkin_generated/installspace/student_filter-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/javad/Desktop/Robotics/AUT-Robotics/catkin_ws0/devel/include/student_filter")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/javad/Desktop/Robotics/AUT-Robotics/catkin_ws0/devel/share/roseus/ros/student_filter")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/javad/Desktop/Robotics/AUT-Robotics/catkin_ws0/devel/share/common-lisp/ros/student_filter")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/javad/Desktop/Robotics/AUT-Robotics/catkin_ws0/devel/share/gennodejs/ros/student_filter")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/javad/Desktop/Robotics/AUT-Robotics/catkin_ws0/devel/lib/python3/dist-packages/student_filter")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/javad/Desktop/Robotics/AUT-Robotics/catkin_ws0/devel/lib/python3/dist-packages/student_filter")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/javad/Desktop/Robotics/AUT-Robotics/catkin_ws0/build/student_filter/catkin_generated/installspace/student_filter.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/student_filter/cmake" TYPE FILE FILES "/home/javad/Desktop/Robotics/AUT-Robotics/catkin_ws0/build/student_filter/catkin_generated/installspace/student_filter-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/student_filter/cmake" TYPE FILE FILES
    "/home/javad/Desktop/Robotics/AUT-Robotics/catkin_ws0/build/student_filter/catkin_generated/installspace/student_filterConfig.cmake"
    "/home/javad/Desktop/Robotics/AUT-Robotics/catkin_ws0/build/student_filter/catkin_generated/installspace/student_filterConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/student_filter" TYPE FILE FILES "/home/javad/Desktop/Robotics/AUT-Robotics/catkin_ws0/src/student_filter/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/javad/Desktop/Robotics/AUT-Robotics/catkin_ws0/build/student_filter/catkin_generated/installspace/student_filter.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/student_filter/cmake" TYPE FILE FILES "/home/javad/Desktop/Robotics/AUT-Robotics/catkin_ws0/build/student_filter/catkin_generated/installspace/student_filter-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/student_filter/cmake" TYPE FILE FILES
    "/home/javad/Desktop/Robotics/AUT-Robotics/catkin_ws0/build/student_filter/catkin_generated/installspace/student_filterConfig.cmake"
    "/home/javad/Desktop/Robotics/AUT-Robotics/catkin_ws0/build/student_filter/catkin_generated/installspace/student_filterConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/student_filter" TYPE FILE FILES "/home/javad/Desktop/Robotics/AUT-Robotics/catkin_ws0/src/student_filter/package.xml")
endif()

