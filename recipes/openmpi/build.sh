#!/bin/bash

# Copied from https://github.com/mpi4py/mpi4py/blob/master/conf/conda-recipes/openmpi/build.sh
./configure \
  --prefix=${PREFIX}
make -j ${CPU_COUNT}
make install

# Took this out of the ./configure...
#  --disable-mpi-fortran \
#  --disable-dependency-tracking \

