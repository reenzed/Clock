cmake_minimum_required(VERSION 3.22)

include(FetchContent)

FetchContent_Declare(
  Catch2
  GIT_REPOSITORY https://github.com/catchorg/Catch2.git
  GIT_TAG        v3.6.0
)
FetchContent_MakeAvailable(Catch2)

FetchContent_Declare(
  trompeloeil
  GIT_REPOSITORY https://github.com/rollbear/trompeloeil.git
  GIT_TAG        v47
)
FetchContent_MakeAvailable(trompeloeil)

#add_subdirectory(unit)
#add_subdirectory(integration)
#add_subdirectory(acceptance)
