cmake_minimum_required(VERSION 3.22)

set(REPO_TAG "boost-1.85.0")
list(APPEND Repo_Name
  BoostJson           #1
  BoostAlign          #2
  BoostAssert         #3
  BoostConfig         #4
  BoostContainer      #5
  BoostContainerHash  #6
  BoostCore           #7
  BoostSystem         #8
  BoostThrowException #9
  BoostIntrusive      #10
  BoostStaticAssert   #11
  BoostMove           #12
  BoostDescribe       #13
  BoostMp11           #14
  BoostEndian         #15
  BoostVariant2       #16
  BoostWinapi         #17
  BoostPredef         #18
)
list(APPEND Repo_Path
  https://github.com/boostorg/json.git            #1
  https://github.com/boostorg/align.git           #2
  https://github.com/boostorg/assert.git          #3
  https://github.com/boostorg/config.git          #4
  https://github.com/boostorg/container.git       #5
  https://github.com/boostorg/container_hash.git  #6
  https://github.com/boostorg/core.git            #7
  https://github.com/boostorg/system.git          #8
  https://github.com/boostorg/throw_exception.git #9
  https://github.com/boostorg/intrusive.git       #10
  https://github.com/boostorg/static_assert.git   #11
  https://github.com/boostorg/move.git            #12
  https://github.com/boostorg/describe.git        #13
  https://github.com/boostorg/mp11.git            #14
  https://github.com/boostorg/endian.git          #15
  https://github.com/boostorg/variant2.git        #16
  https://github.com/boostorg/winapi.git          #17
  https://github.com/boostorg/predef.git          #18
)

include(FetchContent)

foreach(REPO_NAME REPO_PATH IN ZIP_LISTS Repo_Name Repo_Path)
  FetchContent_Declare(
    ${REPO_NAME}
    GIT_REPOSITORY ${REPO_PATH}
    GIT_TAG        ${REPO_TAG}
  )
  FetchContent_MakeAvailable(${REPO_NAME})
endforeach()
