# Install script for directory: /home/fernando/catkin_ws/src/kautham

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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local" TYPE PROGRAM FILES "/home/fernando/catkin_ws/src/kautham-build/catkin_generated/installspace/_setup_util.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local" TYPE PROGRAM FILES "/home/fernando/catkin_ws/src/kautham-build/catkin_generated/installspace/env.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local" TYPE FILE FILES "/home/fernando/catkin_ws/src/kautham-build/catkin_generated/installspace/setup.bash")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local" TYPE FILE FILES "/home/fernando/catkin_ws/src/kautham-build/catkin_generated/installspace/setup.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local" TYPE FILE FILES "/home/fernando/catkin_ws/src/kautham-build/catkin_generated/installspace/setup.zsh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local" TYPE FILE FILES "/home/fernando/catkin_ws/src/kautham-build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kautham/apps/ros/srv" TYPE FILE FILES
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/AddObstacle.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/DetachObstacle.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/SetDefaultRobControls.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/SetObsControlsStream.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/SetQuery.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/AddRobot.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/GetPath.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/SetFixedObsControls.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/SetObstaclesConfig.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/SetRobControls.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/AttachObstacle2RobotLink.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/OpenProblem.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/OpenProblemStream.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/SetGoal.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/SetPlannerByName.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/SetRobControlsStream.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/CheckCollision.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/ProblemOpened.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/SetInitObs.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/SetPlannerParameter.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/SetRobotsConfig.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/ClearSampleSet.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/RemoveObstacle.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/SetInit.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/SetPlanner.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/Solve.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/CloseProblem.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/RemoveRobot.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/SetObsControls.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/SetPlannerStream.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/Connect.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/GetLastPlanComputationTime.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/GetNumEdges.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/GetNumVertices.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/MoveRobots.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/MoveRobot.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/ProblemSetup.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/AttObj.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/DetObj.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/ReqCollisionCheck.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/empty.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/EraseObj.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/Forbidden.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/LoadData.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/ReqPlan.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/ReqQuery.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/SaveData.srv"
    "/home/fernando/catkin_ws/src/kautham/apps/ros/srv/SolveProblem.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kautham/apps/ros/msg" TYPE FILE FILES "/home/fernando/catkin_ws/src/kautham/apps/ros/msg/fVector.msg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kautham/cmake" TYPE FILE FILES "/home/fernando/catkin_ws/src/kautham-build/catkin_generated/installspace/kautham-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/fernando/catkin_ws/src/kautham-build/devel/include/kautham")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/fernando/catkin_ws/src/kautham-build/devel/share/common-lisp/ros/kautham")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/fernando/catkin_ws/src/kautham-build/devel/lib/python2.7/dist-packages/kautham")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/fernando/catkin_ws/src/kautham-build/devel/lib/python2.7/dist-packages/kautham")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/fernando/catkin_ws/src/kautham-build/catkin_generated/installspace/kautham.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kautham/cmake" TYPE FILE FILES "/home/fernando/catkin_ws/src/kautham-build/catkin_generated/installspace/kautham-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kautham/cmake" TYPE FILE FILES
    "/home/fernando/catkin_ws/src/kautham-build/catkin_generated/installspace/kauthamConfig.cmake"
    "/home/fernando/catkin_ws/src/kautham-build/catkin_generated/installspace/kauthamConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kautham" TYPE FILE FILES "/home/fernando/catkin_ws/src/kautham/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kautham" TYPE DIRECTORY FILES "/home/fernando/catkin_ws/src/kautham/demos")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/fernando/catkin_ws/src/kautham-build/gtest/cmake_install.cmake")
  include("/home/fernando/catkin_ws/src/kautham-build/src/cmake_install.cmake")
  include("/home/fernando/catkin_ws/src/kautham-build/apps/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

file(WRITE "/home/fernando/catkin_ws/src/kautham-build/${CMAKE_INSTALL_MANIFEST}" "")
foreach(file ${CMAKE_INSTALL_MANIFEST_FILES})
  file(APPEND "/home/fernando/catkin_ws/src/kautham-build/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
endforeach()
