#!/bin/bash

export MAALI_MODULE_SET_MAALI_DEFAULT_COMPILERS='gcc/8.3.0 gcc/5.5.0 intel/19.0.5'
export MAALI_MODULE_SET_MAALI_DEFAULT_SYSTEM_GCC='gcc/4.8.5'
export MAALI_MODULE_SET_MAALI_DEFAULT_CPU_TARGET='cascadelake'
export MAALI_MODULE_SET_MAALI_DEFAULT_MPI_COMPILERS='openmpi-ucx/4.0.3'
export MAALI_MODULE_SET_MAALI_DEFAULT_CUDAMPI_COMPILERS='openmpi-ucx-gpu/4.0.3'
export MAALI_MODULE_SET_MAALI_DEFAULT_MPI='openmpi-ucx-gpu/4.0.3'
export MAALI_MODULE_SET_MAALI_DEFAULT_CUDA_COMPILERS="cuda/10.2"
export MAALI_MODULE_SET_MAALI_DEFAULT_PYTHON='python/3.8.2'
export MAALI_MODULE_SET_MAALI_LUA_MODULE=1
export MAALI_LUA_MODULE=1
export MAALI_MODULE_SET_MAALI_DOT_DIR='\"/astro/\"..os.getenv\(\"PAWSEY_PROJECT\"\)..\"/\"..os.getenv\(\"USER\"\)..\"/.maali\"'
export MAALI_MODULE_QUOTES_MAALI_DOT_DIR=off
export MAALI_DOT_DIR="/astro/$PAWSEY_PROJECT/$USER/.maali"
export MAALI_MODULE_SET_MAALI_CLUSTER='os.getenv\(\"PAWSEY_CLUSTER\"\)..\"_\"..os.getenv\(\"PAWSEY_OS\"\)'
export MAALI_MODULE_QUOTES_MAALI_CLUSTER=off
export MAALI_CLUSTER="${PAWSEY_CLUSTER}_${PAWSEY_OS}"
export MAALI_MODULE_SET_MAALI_ROOT_DEFAULT='\"/astro/\"..os.getenv\(\"PAWSEY_PROJECT\"\)..\"/\"..os.getenv\(\"USER\"\)..\"/software/\"..os.getenv\(\"PAWSEY_CLUSTER\"\)..\"_\"..os.getenv\(\"PAWSEY_OS\"\)'
export MAALI_MODULE_QUOTES_MAALI_ROOT_DEFAULT=off
export MAALI_ROOT_DEFAULT="/astro/$PAWSEY_PROJECT/$USER/software/${PAWSEY_CLUSTER}_${PAWSEY_OS}"
export MAALI_MODULE_SET_MAALI_ROOT_GROUP='\"/astro/\"..os.getenv\(\"PAWSEY_PROJECT\"\)..\"/software/\"..os.getenv\(\"PAWSEY_CLUSTER\"\)..\"_\"..os.getenv\(\"PAWSEY_OS\"\)'
export MAALI_MODULE_QUOTES_MAALI_ROOT_GROUP=off
export MAALI_ROOT_GROUP="/astro/$PAWSEY_PROJECT/software/${PAWSEY_CLUSTER}_${PAWSEY_OS}"

#export MAALI_MODULE_VARIABLES_ORDER="MAALI_MODULE_SET_MAALI_CLUSTER MAALI_MODULE_SET_MAALI_DEFAULT_COMPILERS MAALI_MODULE_SET_MAALI_DEFAULT_CPU_TARGET MAALI_MODULE_SET_MAALI_DEFAULT_CUDAMPI_COMPILERS MAALI_MODULE_SET_MAALI_DEFAULT_CUDA_COMPILERS MAALI_MODULE_SET_MAALI_DEFAULT_MPI MAALI_MODULE_SET_MAALI_DEFAULT_MPI_COMPILERS MAALI_MODULE_SET_MAALI_DEFAULT_PYTHON MAALI_MODULE_SET_MAALI_DEFAULT_SYSTEM_GCC MAALI_MODULE_SET_MAALI_DOT_DIR MAALI_MODULE_SET_MAALI_LUA_MODULE MAALI_MODULE_SET_MAALI_ROOT_DEFAULT MAALI_MODULE_SET_MAALI_ROOT_GROUP MAALI_MODULE_SET_PATH"


if [ $# -lt 1 ] ; then
  echo "Please provide at least the maali version as an argument. Exiting now."
  exit
fi

./maali -t maali -v "$@"

exit
