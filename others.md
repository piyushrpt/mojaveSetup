## Other ports of interest but not needed for ISCE

#### For petsc and massive parallel numerical computing (Not needed for ISCE/GIAnT)

1. sudo port install openmpi-default +gcc7 
2. sudo port install openmpi-gcc7 +fortran
   - sudo port select mpi openmpi-gcc7-fortran 

3. sudo port install atlas +gcc7
4. sudo potr install metis +gcc7
5. sudo port install parmetis +gcc7 +openmpi
6. sudo port install vecLibFort
7. sudo port install suitesparse +gcc7 +metis +atlas
8. sudo port install sundials +gcc7 +openmpi +atlas
9. sudo port install sundials2 +gcc7 +openmpi +atlas
10. sudo port install superlu
11. sudo port install superlu_dist +gcc7 +openmpi
11. sudo port install hypre +gcc7 +openmpi
12. sudo port install c2html sowing
13. sudo port install petsc +atlas +gcc7 +hypre +openmpi +parmetis +suitesparse +sundials +superlu +superlu_dist
   - export PETSC_DIR=/opt/local/lib/petsc
13. sudo port install py36-mpi4py +gcc7 +openmpi
14. sudo port install py36-petsc4py +gcc7 +openmpi


#### Data science related packages

1. sudo port install py36-bokeh py36-dynd py36-dask
2. sudo port install py36-awscli
   - sudo port select awscli py36-awscli
3. sudo port install py36-botocore
4. sudo port install py36-boto3 
