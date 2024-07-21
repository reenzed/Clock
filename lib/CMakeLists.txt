cmake_minimum_required(VERSION 3.22)

include(FetchContent)

FetchContent_Declare(
  BoostJson
  GIT_REPOSITORY https://github.com/boostorg/json.git
  GIT_TAG        boost-1.85.0
)
FetchContent_MakeAvailable(BoostJson)

FetchContent_Declare(
  BoostAlign
  GIT_REPOSITORY https://github.com/boostorg/align.git
  GIT_TAG        boost-1.85.0
)
FetchContent_MakeAvailable(BoostAlign)

FetchContent_Declare(
  BoostAssert
  GIT_REPOSITORY https://github.com/boostorg/assert.git
  GIT_TAG        boost-1.85.0
)
FetchContent_MakeAvailable(BoostAssert)

FetchContent_Declare(
  BoostConfig
  GIT_REPOSITORY https://github.com/boostorg/config.git
  GIT_TAG        boost-1.85.0
)
FetchContent_MakeAvailable(BoostConfig)

FetchContent_Declare(
  BoostContainer
  GIT_REPOSITORY https://github.com/boostorg/container.git
  GIT_TAG        boost-1.85.0
)
FetchContent_MakeAvailable(BoostContainer)

FetchContent_Declare(
  BoostContainerHash
  GIT_REPOSITORY https://github.com/boostorg/container_hash.git
  GIT_TAG        boost-1.85.0
)
FetchContent_MakeAvailable(BoostContainerHash)

FetchContent_Declare(
  BoostCore
  GIT_REPOSITORY https://github.com/boostorg/core.git
  GIT_TAG        boost-1.85.0
)
FetchContent_MakeAvailable(BoostCore)

FetchContent_Declare(
  BoostSystem
  GIT_REPOSITORY https://github.com/boostorg/system.git
  GIT_TAG        boost-1.85.0
)
FetchContent_MakeAvailable(BoostSystem)

FetchContent_Declare(
  BoostThrowException
  GIT_REPOSITORY https://github.com/boostorg/throw_exception.git
  GIT_TAG        boost-1.85.0
)
FetchContent_MakeAvailable(BoostThrowException)

FetchContent_Declare(
  BoostIntrusive
  GIT_REPOSITORY https://github.com/boostorg/intrusive.git
  GIT_TAG        boost-1.85.0
)
FetchContent_MakeAvailable(BoostIntrusive)

FetchContent_Declare(
  BoostStaticAssert
  GIT_REPOSITORY https://github.com/boostorg/static_assert.git
  GIT_TAG        boost-1.85.0
)
FetchContent_MakeAvailable(BoostStaticAssert)

FetchContent_Declare(
  BoostMove
  GIT_REPOSITORY https://github.com/boostorg/move.git
  GIT_TAG        boost-1.85.0
)
FetchContent_MakeAvailable(BoostMove)

FetchContent_Declare(
  BoostDescribe
  GIT_REPOSITORY https://github.com/boostorg/describe.git
  GIT_TAG        boost-1.85.0
)
FetchContent_MakeAvailable(BoostDescribe)

FetchContent_Declare(
  BoostMp11
  GIT_REPOSITORY https://github.com/boostorg/mp11.git
  GIT_TAG        boost-1.85.0
)
FetchContent_MakeAvailable(BoostMp11)

FetchContent_Declare(
  BoostEndian
  GIT_REPOSITORY https://github.com/boostorg/endian.git
  GIT_TAG        boost-1.85.0
)
FetchContent_MakeAvailable(BoostEndian)

FetchContent_Declare(
  BoostVariant2
  GIT_REPOSITORY https://github.com/boostorg/variant2.git
  GIT_TAG        boost-1.85.0
)
FetchContent_MakeAvailable(BoostVariant2)

FetchContent_Declare(
  BoostWinapi
  GIT_REPOSITORY https://github.com/boostorg/winapi.git
  GIT_TAG        boost-1.85.0
)
FetchContent_MakeAvailable(BoostWinapi)

FetchContent_Declare(
  BoostPredef
  GIT_REPOSITORY https://github.com/boostorg/predef.git
  GIT_TAG        boost-1.85.0
)
FetchContent_MakeAvailable(BoostPredef)