# - Locate FFTW library
# Defines:
#
#  FFTW_FOUND
#  FFTW_INCLUDE_DIR
#  FFTW_INCLUDE_DIRS (not cached)
#  FFTW_LIBRARIES
#  from: http://svnweb.cern.ch/world/wsvn/cmaketools/trunk/modules/FindFFTW.cmake?rev=5&peg=5

find_path(FFTW_INCLUDE_DIR fftw3.h)
find_library(FFTW_LIBRARIES NAMES fftw3)

set(FFTW_INCLUDE_DIRS ${FFTW_INCLUDE_DIR})

# handle the QUIETLY and REQUIRED arguments and set FFTW_FOUND to TRUE if
# all listed variables are TRUE
INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(FFTW DEFAULT_MSG FFTW_INCLUDE_DIR FFTW_LIBRARIES)

mark_as_advanced(FFTW_FOUND FFTW_INCLUDE_DIR FFTW_LIBRARIES)
