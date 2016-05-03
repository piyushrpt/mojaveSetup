## Instructions for setting up an OS X El Capitan machine from scratch
------------

#### Before you start
----------
1. Google chrome
2. Alfred 2
3. Keepass-X
4. iTerm2
5. CyberDuck (ftp client) 
6. All OS updates from App store (Restart if needed)


#### Macports
---------

1. Install XCode from App store
2. Install command line tools from within XCode
3. sudo xcode-select --install   (This will install command line tools)
4. sudo xcodebuild -license    (To agree to the terms of license)
5. Install XQuartz (Will need to log out and log back in)
6. Install macports
7. sudo port selfupdate
8. Restart terminal

##### List of ports in sequence
----------
- Install ports with ''sudo port install'' unless specified otherwise
- Note that the gcc, python, postgresql versions evolve with time. Pick a consistent set for installing your ports

1. gcc5
  * sudo port select gcc mp-gcc5 (restart terminal)
2. cmake gmake bison gawk autoconf autoconf-archive 
3. gconf coreutils automake pkgconfig dpkg ctags
4. tree unzip unrar szip p7zip gzip gnutar cabextract
5. gawk gsed 
6. wget +ssl
7. freetype tiff openmotif 
8. subversion
9. python27
  * sudo port select python python27
10. python35
  * sudo ln -s /opt/local/Library/Frameworks/Python.framework/Versions/3.5/bin/python3 /opt/local/bin/python3
  * sudo ln -s /opt/local/Library/Frameworks/Python.framework/Versions/3.5/include/python3.5m /opt/local/include/python3.5m
11. fftw +gcc5  fftw-single +gcc5
12. fftw-3 +gcc5  fftw-3-long +gcc5 fftw-3-single +gcc5
13. aria2 openldap
14. openmpi-default +gcc5 openmpi-gcc5 +fortran
  * sudo port select mpi openmpi-gcc5-fortran
15. xorg-libXt +flat_namespace  
16. texlive +doc +full
17. lapack +gfortran
18. eigen3 +blas +gcc5
19. gsl +gcc5
19. cgal sfcgal 
20. bzr git rsync
21. hdf4 hdf5 hdfeos hdfeos5 h5utils
22. netcdf netcdf-cxx netcdf-fortran grib_api +gcc5
23. postgresql95 postgresql95-server
   * Follow instructions for setting up db that are displayed on the screen during installation
24. proj cairo scons pandoc
25. opencv +python27
26. gimp2 ImageMagick
27. samba3 swig swig-python
28. py27-numpy +gcc5    (+atlas is recommended but port is often broken with this option)
29. py27-scipy +gcc5    (+atlas is recommended but port is often broken with this option)
30. py27-matplotlib +cairo +tkinter 
31. py27-pandas py27-sympy py27-yaml py27-simplejson py27-Pillow
32. py27-ipython +notebook +parallel
   * sudo port select --set ipython py27-ipython
   * sudo port select --set ipython2 py27-ipython
33. gdal +expat +geos +hdf4 +hdf5 +netcdf +openjpeg +postgresql95 +sqlite3 
34. py27-gdal py27-cython py27-h5py
35. py27-lxml py27-networkx py27-shapely 
36. py27-pygrib py27-pyproj py27-cartopy py27-fiona py27-matplotlib-basemap
37. py35-numpy +gcc5 (+atlas is recommended but port is often broken with this option)
38. py35-scipy +gcc5 (+atlas is recommended but port is often broken with this option)
39. py35-matplotlib +cairo +tkinter py35-matplotlib-basemap
40. py35-pandas py35-sympy py35-yaml py35-simplejson
41. py35-h5py py35-cartopy py35-shapely py35-fiona py35-networkx
42. py35-ipython +notebook +parallel
    * sudo port select --set ipython3 py35-ipython
43. py35-mpi4py +gcc5 +openmpi
44. gmt5 kealib pandoc
45. zmq py27-zmq py35-zmq
46. py35-bokeh py35-dynd py35-dask py35-sphinx py35-pip
47. postgis2 +gui +postgresql95 +raster +sfcgal +topology
48. py27-xmldiff wdiff cwdiff ndiff


####Other programs
------------

###### Textwrangler
--------------------
- Install textwrangler itself
- Install textwrangler command line tools (includes twdiff for comparing files / folders)
- twdiff appears to be better than other diff tools that are available 

##### Google Earth Pro
----------------------
- Google Earth Pro is now free

##### Environment modules
--------------------------
- Follow instructions [here](./modules.md)
