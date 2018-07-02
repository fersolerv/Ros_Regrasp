# - Config file for the Kautham package
# It defines the following variables
#  KAUTHAM_INCLUDE_DIRS - include directories for Kautham Lib
#  KAUTHAM_LIBRARIES    - libraries to link against Kautham Libs
#  KAUTHAM_LIBRARIES_STATIC - static version of the library
#  KAUTHAM_DEFINITIONS - definitions to use with the Kautham Lib



####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was kauthamConfig.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################

SET_AND_CHECK(KAUTHAM_INCLUDE_DIR ${PACKAGE_PREFIX_DIR}/include/kautham )

IF(NOT TARGET kautham)
  INCLUDE(${CMAKE_CURRENT_LIST_DIR}/kauthamExports.cmake)
ENDIF()

SET(KAUTHAM_INCLUDE_DIRS ${KAUTHAM_INCLUDE_DIR} )
SET(KAUTHAM_LIBRARIES kautham)
SET(KAUTHAM_DEFINITIONS  )

