#!/bin/bash

lmp_gpu(){
  if [ $# -lt 1 ]; then
    echo "invalid file given"
  fi
  mpirun -np $OMP_NUM_THREADS lmp -sf gpu -pk gpu 1 ${@:1}
}

lmp_mpi() {
  if [ $# -lt 1 ]; then
    echo "invalid file given"
  fi
  mpirun -np $OMP_NUM_THREADS lmp ${@:1}
}

