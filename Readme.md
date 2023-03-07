# NAMD Energy Conservation Demo

## System Description

* lipid bilayer system
* CHARMM36 force field
* coordinates taken from Klauda lab website (equilibrated)

## Problem Description

* total energy drifts in NVE run if NAMD2 GPU acceleration is used

[total energy drift](plots.png)

## Additional Details

* CPU-only runs are fine
* tried the old CUDA kernels (useCUDA2 off) without success (energy drifts)
* tried only using bonded kernels (PMECUDA off) and PMFCUDA (bondedCUDA 0) without success (energy drifts)
* NAMD3 works as expected (no drift)

## Versions

Tested with pre-compiled binaries (multicore-CUDA) of

* NAMD 2.13
* NAMD 2.14
* NAMD 2.15+alpha.2 (2022-07-21)

CUDA: 11.1



