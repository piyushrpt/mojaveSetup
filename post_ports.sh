#!/bin/bash 

###These are commands that are needed after installing everything in ports.txt in one shot.
###You only need to run this once after installing everything. 
###Remember to restart your terminal after running this command.

###To install all ports in shot, you used something like this
### > sudo port install $(cat ports.txt)


####Set gcc5 as default gcc
sudo port select gcc mp-gcc5

####Set python27 as default python
sudo port select python python27


####Since python27 is default python - Python3.6 wont be available in default directories
####So create links to make this happen
sudo ln -s /opt/local/Library/Frameworks/Python.framework/Versions/3.6/bin/python3 /opt/local/bin/python3
sudo ln -s /opt/local/Library/Frameworks/Python.framework/Versions/3.6/include/python3.6m /opt/local/include/python3.6m


####Set default MPI
sudo port select mpi openmpi-gcc5-fortran


####Setup default ipython and ipython2
sudo port select --set ipython py27-ipython
sudo port select --set ipython2 py27-ipython

####Setup default ipython3
sudo port select --set ipython3 py36-ipython

####If you do use pgsqlserver for your applications
####Useful to have when running GIS stuff
sudo /opt/local/lib/postgresql95/bin/pg_ctl -D /opt/local/var/db/postgresql95/defaultdb -l logfile start

###Setup PETSc Environment variables
export PETSC_DIR=/opt/local/lib/petsc
