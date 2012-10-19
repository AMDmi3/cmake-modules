# Find GSL
#
# GSL_INCLUDE_DIR
# GSL_LIBRARIES
# GSL_FOUND
#

FIND_PATH(GSL_INCLUDE_DIR NAMES gsl/gsl_multifit.h)

FIND_LIBRARY(GSL_GSL_LIBRARY NAMES gsl)
FIND_LIBRARY(GSL_GSLCBLAS_LIBRARY NAMES gslcblas)

IF(GSL_INCLUDE_DIR AND GSL_GSL_LIBRARY AND GSL_GSLCBLAS_LIBRARY)
	SET(GSL_FOUND TRUE)
ENDIF(GSL_INCLUDE_DIR AND GSL_GSL_LIBRARY AND GSL_GSLCBLAS_LIBRARY)

IF(GSL_FOUND)
	SET(GSL_LIBRARIES ${GSL_GSL_LIBRARY} ${GSL_GSLCBLAS_LIBRARY})
	IF(NOT GSL_FIND_QUIETLY)
		MESSAGE(STATUS "Found gsl: -I${GSL_INCLUDE_DIR}, ${GSL_LIBRARIES}")
	ENDIF(NOT GSL_FIND_QUIETLY)
ELSE(GSL_FOUND)
	IF(GSL_FIND_REQUIRED)
		MESSAGE(FATAL_ERROR "Could not find gsl")
	ENDIF(GSL_FIND_REQUIRED)
ENDIF(GSL_FOUND)