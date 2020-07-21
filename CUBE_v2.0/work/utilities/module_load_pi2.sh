module purge
module load intel-parallel-studio-cluster.2019.4-gcc-7.3.0

#module list

export FC=mpiifort
export XFLAG='-O3 -g -xHost -fpp -qopenmp -coarray=distributed -coarray-config-file=./caf_config -coarray-num-images=8 -mcmodel=medium'
export OFLAG=${XFLAG}' -c'

export SCINET_FFTW_ROOT=/lustre/home/acct-hpc/hpccsg/software/share/fftw
export SCINET_FFTW_INC=${SCINET_FFTW_ROOT}/include
export SCINET_FFTW_LIB=${SCINET_FFTW_ROOT}/lib
export LD_LIBRARY_PATH="${SCINET_FFTW_LIB}:${LD_LIBRARY_PATH}"
export OFLAG=${XFLAG}' -c'
export FFTFLAG='-I'${SCINET_FFTW_INC}' ''-L'${SCINET_FFTW_LIB}' -lfftw3f -lm -ldl'

# use uniformized caf on GPC
# export FOR_COARRAY_NUM_IMAGES=1
