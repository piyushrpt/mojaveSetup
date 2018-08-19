## Manual installation of ports

- Note that the gcc, python, postgresql versions evolve with time. Pick a consistent set for installing your ports

- In our case, we will be using gcc7, python36 and postgresql95

#### a. Basic C/C++ compiler
1. sudo port select gcc7
   - sudo port select gcc mp-gcc7
   - Restart terminal after this

#### b. Python versions
1. sudo port install python27
   - sudo port select python python27

2. sudo port install python36
   - sudo port select python3 python36
   - sudo ln -s /opt/local/Library/Frameworks/Python.framework/Versions/3.6/include/python3.6m /opt/local/include/python3.6m
   - The link command is to keep the paths simpler for use with installing software from source


#### c. Standard tools on a linux system  
1. sudo port install cmake gmake bison gawk autoconf autoconf-archive
2. sudo port install gconf coreutils automake pkgconfig dpkg ctags
3. sudo port install tree unzip unrar szip p7zip gzip gnutar cabextract
4. sudo port install gawk gsed
5. sudo port install wget +ssl
6. sudo port install xorg-libXt +flat_namespace
7. sudo port install freetype tiff openmotif
8. sudo port install MacVim    
   - This provides vim on OS X
   - For more details on customizing vim with plugins - see https://github.com/piyushrpt/vimsetup


#### d. Repository managers
1. sudo port install subversion bzr git rsync
2. sudo port install py36-pip

#### e. Useful computational stuff   
1. sudo port install fftw-3 +gcc7
2. sudo port install fftw-3-long +gcc7
3. sudo port install fftw-3-single +gcc7
4. sudo port install lapack +gcc7
5. sudo port install eigen3 +blas +gcc7
6. sudo port install gsl +gcc5
7. sudo port install cgal sfcgal

#### f. Data formats
1. sudo port install hdf4 hdfeos
2. sudo port install hdf5 +gcc7
3. sudo port install hdfeos5 h5utils
4. sudo port install netcdf +gcc7
5. sudo port install netcdf-cxx +gcc7
6. sudo port install netcdf-fortran +gcc7
7. sudo port install postgresql95 postgresql95-server
   - Follow instructions for setting up db that are displayed on the screen during installation

#### g. Image manipulation
1. sudo port install cairo gimp2 ImageMagick


#### h. Python packages
1. sudo port install py27-numpy +gcc7
2. sudo port install py36-numpy +gcc7
3. sudo port install py27-scipy +gcc7
4. sudo port install py36-scipy +gcc7
5. sudo port install py27-matplotlib +cairo
   - sudo port install py27-backports-functools\_lru\_cache
6. sudo port install py36-matplotlib +cairo
7. sudo port install py27-pandas
8. sudo port install py36-pandas
9. sudo port install py36-cython
   - ln -s /opt/local/bin/cython-3.6 /opt/local/bin/cython3
   - The link reproduces the environment that we usually get on linux machines
10. sudo port install py27-h5py
11. sudo port install py36-h5py
12. sudo port install py36-matplotlib-basemap
13. sudo port install py36-sympy py36-yaml py36-simplejson py36-networkx
14. sudo port install zmq py27-zmq py36-zmq
15. sudo port install scons
16. sudo port install opencv +python36
17. sudo port install py36-ipython
   - sudo port select --set ipython3 py36-ipython

#### i. GIS stuff
1. sudo port install proj
2. sudo gdal +curl +expat +geos +hdf4 +hdf5 +netcdf +openjpeg +postgresql95 +sqlite3
   - Add this environment variable to "basic" module (preferred) or in .bashrc/.bash\_profile/.profile (Not recommended). See [modules.md](./modules.md).
   - GDAL\_DATA=/opt/local/share/gdal
3. sudo port install py36-gdal
4. sudo port install gmt5 +ggtw3
5. sudo port install -s kealib
   - Don't forget the "-s" to indicate build from source
   - Add this environment variable to "basic" module (preferred) or in .bashrc/.bash\_profile/.profile  (Not recommended). See [modules.md](./modules.md).
   - GDAL\_DRIVER\_PATH=/opt/local/lib/gdalplugins
6. sudo port install postgis2 +gui +postgresql95 +raster +sfcgal +topology
7. sudo port install liblas
8. sudo port install grass7 +postgresql95
9. sudo port install qgis +postgresql95
10. sudo port install qgis3 +postgresql95 +python36
11. sudo port install py36-cartopy py36-shapely py36-fiona py36-rasterio

#### j. Online data access
1. sudo port install aria2 openldap samba3

#### k. Document generation/manipulation
1. sudo port install texlive +doc +full
   - This is full LaTeX installation. Only needed if you plan to use LaTeX
2. sudo port install pandoc
   - This is used to convert documents from one format to another
3. sudo port install py27-xmldiff wdiff cwdigg ndiff
4. sudo port install py36-sphinx
5. sudo port install doxygen


#### l. Jupyter
1. sudo port install py36-jupyter py36-jupyter\_client
2. Instructions for installing contributed notebook extensions
    - sudo pip-3.6 install jupyter\_contrib\_nbextensions 
    - sudo jupyter-3.6 contrib nbextension install --user
3. Instructions for installing extension configurator
    - sudo pip-3.6 install jupyter\_nbextensions\_configurator
    - sudo jupyter-3.6 nbextensions\_configurator enable --user
4. hide\_code plugin for hiding cells with code if needed
    - sudo pip-3.6 install hide\_code
    - sudo jupyter-3.6 nbextension install --py hide\_code
5. RISE plugin to turn notebooks into slideshow
    - sudo pip-3.6 install RISE 
    - sudo jupyter-nbextension-3.6 install rise --py --sys-prefix
