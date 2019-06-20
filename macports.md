## Manual installation of ports

- Date: Jun 1, 2019

- Note that the clang, gcc, python, postgresql versions evolve with time. Pick a consistent set for installing your ports

- In our case, we will be using clang8.0, gcc7, python37 and postgresql10

- Note that we now use clang for all OS X related software compilation. We still need gcc mostly for the gfortran compiler. One change to the instructions is that we will no longer use the +gcc variant for the ports.


#### 0. Must haves
1. sudo port install iterm2
   - We use iterm2 instead of the inbuilt terminal. Pick a good color scheme - e.g, solarized.

2. sudo port install MacVim
   - This is the linux equivalent of gvim.
   - For more details on customizing vim with plugins - see https://github.com/piyushrpt/vimsetup

3. sudo port -v install xorg-server
   - This will install XQuartz. This is different from previous set of instructions where we installed XQuartz using the dmg file.

#### a. Basic C/C++ compiler
1. sudo port install clang-8.0
   - sudo port select clang mp-clang-8.0
   - Restart terminal after this

2. sudo port select gcc7
   - sudo port select gcc mp-gcc7
   - Restart terminal after this

#### b. Python versions
1. sudo port install python27
   - sudo port select python python27

2. sudo port install python37
   - sudo port select python3 python37
   - sudo ln -s /opt/local/Library/Frameworks/Python.framework/Versions/3.7/include/python3.7m /opt/local/include/python3.7m
   - The link command is to keep the paths simpler for use with installing software from source


#### c. Standard tools on a linux system  
1. sudo port install cmake gmake bison gawk autoconf autoconf-archive
2. sudo port install gconf coreutils automake pkgconfig dpkg ctags
3. sudo port install tree unzip unrar szip p7zip gzip gnutar cabextract
4. sudo port install gawk gsed
5. sudo port install wget +ssl
7. sudo port install freetype tiff openmotif

#### d. Repository managers
1. sudo port install subversion bzr git rsync
2. sudo port install py37-pip

#### e. Useful computational stuff   
1. sudo port install fftw-3 fftw-3-single fftw-3-long
2. sudo port install lapack eigen3 gsl
3. sudo port install cgal sfcgal

#### f. Data formats
1. sudo port install hdf4 hdfeos
2. sudo port install hdf5 hdfeos5 h5utils
4. sudo port install netcdf netcdf-cxx netcdf-fortran
7. sudo port install postgresql10 postgresql10-server
   - Follow instructions for setting up db that are displayed on the screen during installation

#### g. Image manipulation
1. sudo port install cairo gimp2 ImageMagick


#### h. Python packages
1. sudo port install py37-numpy py37-scipy
2. sudo port install py37-matplotlib
3. sudo port install py37-pandas
4. sudo port install py37-cython
   - ln -s /opt/local/bin/cython-3.7 /opt/local/bin/cython3
   - The link reproduces the environment that we usually get on linux machines
5. sudo port install py37-h5py
12. sudo port install py37-matplotlib-basemap
13. sudo port install py37-sympy py37-yaml py37-simplejson py37-networkx
14. sudo port install zmq py37-zmq
15. sudo port install scons
16. sudo port install opencv +python37
17. sudo port install py37-ipython
   - sudo port select --set ipython3 py37-ipython

#### i. GIS stuff
1. sudo port install proj
2. sudo gdal +curl +expat +geos +hdf4 +hdf5 +netcdf +openjpeg +postgresql95 +sqlite3
   - Add this environment variable to "basic" module (preferred) or in .bashrc/.bash\_profile/.profile (Not recommended). See [modules.md](./modules.md).
   - GDAL\_DATA=/opt/local/share/gdal
3. sudo port install py37-gdal
4. sudo port install gmt5 +fftw3
5. sudo port install -s kealib
   - Don't forget the "-s" to indicate build from source
   - Add this environment variable to "basic" module (preferred) or in .bashrc/.bash\_profile/.profile  (Not recommended). See [modules.md](./modules.md).
   - GDAL\_DRIVER\_PATH=/opt/local/lib/gdalplugins
6. sudo port install postgis2 +gui +postgresql10 +raster +sfcgal +topology
7. sudo port install liblas
8. sudo port install grass7 +postgresql10
9. sudo port install qgis3 +postgresql10 +python37
10. sudo port install py37-cartopy py37-shapely py37-fiona py37-rasterio

#### j. Online data access
1. sudo port install aria2 openldap samba3

#### k. Document generation/manipulation
1. sudo port install texlive +doc +full
   - This is full LaTeX installation. Only needed if you plan to use LaTeX
2. sudo port install pandoc
   - This is used to convert documents from one format to another
3. sudo port install py37-sphinx
4. sudo port install doxygen


#### l. Jupyter
1. sudo port install py37-jupyter py37-jupyter\_client
2. Instructions for installing contributed notebook extensions
    - sudo pip-3.7 install jupyter\_contrib\_nbextensions 
    - sudo jupyter-3.7 contrib nbextension install --user
3. Instructions for installing extension configurator
    - sudo pip-3.7 install jupyter\_nbextensions\_configurator
    - sudo jupyter-3.7 nbextensions\_configurator enable --user
4. hide\_code plugin for hiding cells with code if needed
    - sudo pip-3.7 install hide\_code
    - sudo jupyter-3.7 nbextension install --py hide\_code
5. RISE plugin to turn notebooks into slideshow
    - sudo pip-3.7 install RISE 
    - sudo jupyter-nbextension-3.7 install rise --py --sys-prefix
