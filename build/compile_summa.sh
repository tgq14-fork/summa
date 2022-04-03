#!/bin/bash

module load gcc
module load openblas
module load netcdf-fortran

export F_MASTER=/home/h294liu/github/summa_nelson
export FC=gfortran
export FC_EXE=gfortran

# Library and include
export INCLUDES="-I$EBROOTNETCDFMINFORTRAN/include"
export LIBRARIES="-L$EBROOTNETCDFMINFORTRAN/lib64 -L$EBROOTOPENBLAS/lib -lnetcdff -lopenblas"

make -f ${F_MASTER}/build/Makefile
