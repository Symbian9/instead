# - Try to locate SDL2_mixer
# This module defines:
#
#  SDL2MIXER_INCLUDE_DIR
#  SDL2MIXER_LIBRARY
#  SDL2MIXER_FOUND
#

FIND_PATH(SDL2MIXER_INCLUDE_DIR NAMES SDL_mixer.h PATH_SUFFIXES SDL2)

FIND_LIBRARY(SDL2MIXER_LIBRARY NAMES SDL2_mixer)

IF(SDL2MIXER_INCLUDE_DIR AND SDL2MIXER_LIBRARY)
	SET(SDL2MIXER_FOUND TRUE)
ENDIF(SDL2MIXER_INCLUDE_DIR AND SDL2MIXER_LIBRARY)

IF(SDL2MIXER_FOUND)
	IF(NOT SDL2_mixer_FIND_QUIETLY)
		MESSAGE(STATUS "Found SDL2_mixer: -I${SDL2MIXER_INCLUDE_DIR}, ${SDL2MIXER_LIBRARY}")
	ENDIF(NOT SDL2_mixer_FIND_QUIETLY)
ELSE(SDL2MIXER_FOUND)
	IF(SDL2_mixer_FIND_REQUIRED)
		MESSAGE(FATAL_ERROR "Could not find SDL2_mixer")
	ENDIF(SDL2_mixer_FIND_REQUIRED)
ENDIF(SDL2MIXER_FOUND)

MARK_AS_ADVANCED(SDL2MIXER_INCLUDE_DIR SDL2MIXER_LIBRARY SDL2MIXER_FOUND)
