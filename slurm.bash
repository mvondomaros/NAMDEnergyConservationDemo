#!/bin/bash

#SBATCH --job-name=namd
#SBATCH --partition=normal
#SBATCH --time=3-00:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH --gpus=1
#SBATCH --chdir=/home/domaros/Projects/SPP/Neat/nve.01
#SBATCH --output=namd.out


module purge
module load namd/2.14-multicore-cuda

namd2 +p 16 +setcpuaffinity +isomalloc_sync +devices ${CUDA_VISIBLE_DEVICES} namd.conf