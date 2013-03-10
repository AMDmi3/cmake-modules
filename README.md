These are custom CMake modules used to locate certain libraries:

- FFmpeg
- FFTW
- GSL
- OpenCV
- GLEW
- GLES
- GLES2
- SDL_gles

To use a module, place .cmake file under cmake/ subfolder in your
project and add

    SET(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake)

line into your core CMakeLists.txt

After that, you'll be able to locate and use these libraries just
like you do with libraries CMake provide bundled modules for. For
example:

    FIND_PACKAGE(FFMPEG REQUIRED COMPONENTS avutil avcodec avformat swscale)

    INCLUDE_DIRECTORIES(${FFMPEG_INCLUDE_DIRS})
    ADD_EXECUTABLE(my_app ${MY_APP_SRCS})
    TARGET_LINK_LIBRARIES(my_app ${FFMPEGVIDEO_LIBRARIES})

See inside .cmake files to find what variables these modules define
and what components they have.

These modules come under CC0 or Public Domain, whichever you find
applicable, e.g. you may freely use them in your projects, without
any restrictions and without attribution.
