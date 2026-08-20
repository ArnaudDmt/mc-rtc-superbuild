# Personal extension manifest for the ArnaudDmt mc_rtc superbuild fork.
# Keep this file tracked: extensions/local.cmake is intentionally ignored.

RequireExtension(
  superbuild-extensions
  GIT_REPOSITORY git@github.com:mc-rtc/superbuild-extensions.git
  GIT_TAG main
)

RequireExtension(
  drcutil-superbuild
  GIT_REPOSITORY git@github.com:ThomasDuvinage/drcutil-superbuild.git
  GIT_TAG ubuntu2204
)

RequireExtension(
  lipm-walking-controller-superbuild
  GIT_REPOSITORY git@github.com:mc-rtc/lipm-walking-controller-superbuild.git
  GIT_TAG main
)

RequireExtension(
  mc-logistic-demo-superbuild
  GIT_REPOSITORY git@github.com:isri-aist/mc-logistic-demo-superbuild.git
  GIT_TAG main
)

set(EXTENSIONS_DIR ${CMAKE_CURRENT_LIST_DIR}/superbuild-extensions)
if(NOT TARGET mc_rtc-magnum)
  include(${EXTENSIONS_DIR}/gui/mc_rtc-magnum.cmake)
endif()
if(NOT TARGET mc_mujoco)
  include(${EXTENSIONS_DIR}/interfaces/mc_mujoco.cmake)
endif()
if(NOT TARGET BaseLineWalkingController)
  include(${EXTENSIONS_DIR}/controllers/BaseLineWalkingController.cmake)
endif()

include(${CMAKE_CURRENT_LIST_DIR}/plugins/NoisySensors.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/plugins/HartleyIEKF.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/plugins/MocapAligner.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/plugins/ContactAnchoredEstimator.cmake)
