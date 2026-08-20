# Personal extension manifest for the ArnaudDmt mc_rtc superbuild fork.
# Keep this file tracked: extensions/local.cmake is intentionally ignored.

RequireExtension(
  superbuild-extensions
  GIT_REPOSITORY https://github.com/mc-rtc/superbuild-extensions.git
  GIT_TAG main
)

RequireExtension(
  drcutil-superbuild
  GIT_REPOSITORY https://github.com/ThomasDuvinage/drcutil-superbuild.git
  GIT_TAG ubuntu2204
)

RequireExtension(
  lipm-walking-controller-superbuild
  GIT_REPOSITORY https://github.com/mc-rtc/lipm-walking-controller-superbuild.git
  GIT_TAG main
)

RequireExtension(
  mc-logistic-demo-superbuild
  GIT_REPOSITORY https://github.com/isri-aist/mc-logistic-demo-superbuild.git
  GIT_TAG main
)

set(EXTENSIONS_DIR ${CMAKE_CURRENT_LIST_DIR}/superbuild-extensions)
include(${EXTENSIONS_DIR}/gui/mc_rtc-magnum.cmake)
include(${EXTENSIONS_DIR}/interfaces/mc_mujoco.cmake)
include(${EXTENSIONS_DIR}/controllers/BaseLineWalkingController.cmake)

include(${CMAKE_CURRENT_LIST_DIR}/plugins/NoisySensors.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/plugins/HartleyIEKF.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/plugins/MocapAligner.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/plugins/ContactAnchoredEstimator.cmake)
