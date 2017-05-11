###Manual installation of ports

- Install ports with ''sudo port install'' unless specified otherwise.

- Note that the gcc, python, postgresql versions evolve with time. Pick a consistent set for installing your ports

1. gcc5
  - sudo port select gcc mp-gcc5 (restart terminal)
2. cmake gmake bison gawk autoconf autoconf-archive
3. gconf coreutils automake pkgconfig dpkg ctags
4. tree unzip unrar szip p7zip gzip gnutar cabextract
5. gawk gsed
6. wget +ssl
7. xorg-libXt +flat_namespace
8. freetype tiff openmotif
9. subversion
10. python27
   - sudo port select python python27
11. python35
   - sudo ln -s /opt/local/Library/Frameworks/Python.framework/Versions/3.5/bin/python3 /opt/local/bin/python3
   - sudo ln -s /opt/local/Library/Frameworks/Python.framework/Versions/3.5/include/python3.5m /opt/local/include/python3.5m
12. fftw +gcc5 fftw-single +gcc5
13. fftw-3 +gcc5 fftw-3-long +gcc5 fftw-3-single +gcc5
14. aria2 openldap
15. openmpi-default +gcc5 openmpi-gcc5 +fortran
   - sudo port select mpi openmpi-gcc5-fortran 
16. texlive +doc +full
17. lapack +gfortran
18. eigen3 +blas +gcc5
19. gsl +gcc5
20. cgal sfcgal
21. bzr git rsync
22. hdf4 hdf5 hdfeos hdfeos5 h5utils
23. netcdf netcdf-cxx netcdf-fortran grib_api +gcc5
24. postgresql95 postgresql95-server
   - Follow instructions for setting up db that are displayed on the screen during installation
25. proj cairo scons pandoc
26. opencv +python27
27. gimp2 ImageMagick
28. samba3 swig swig-python
29. py27-numpy +gcc5 (+atlas is recommended but port is often broken with this option)
30. py27-scipy +gcc5 (+atlas is recommended but port is often broken with this option)
31. py27-matplotlib +cairo +tkinter
32. py27-pandas py27-sympy py27-yaml py27-simplejson py27-Pillow
33. py27-ipython +notebook +parallel
   - sudo port select --set ipython py27-ipython
   - sudo port select --set ipython2 py27-ipython
34. gdal +curl +expat +geos +hdf4 +hdf5 +netcdf +openjpeg +postgresql95 +sqlite3
35. py27-gdal py27-cython py27-h5py
36. py27-lxml py27-networkx py27-shapely
37. py27-pygrib py27-pyproj py27-cartopy py27-fiona py27-matplotlib-basemap
38. py35-numpy +gcc5
   - +atlas is recommended but port is often broken with this option
39. py35-scipy +gcc5
   - +atlas is recommended but port is often broken with this option
40. py35-matplotlib +cairo +tkinter py35-matplotlib-basemap
41. py35-pandas py35-sympy py35-yaml py35-simplejson
42. py35-h5py py35-cartopy py35-shapely py35-fiona py35-networkx
43. py35-ipython +notebook +parallel
   - sudo port select --set ipython3 py35-ipython
44. py35-mpi4py +gcc5 +openmpi
45. gmt5 kealib pandoc
46. zmq py27-zmq py35-zmq
47. py35-bokeh py35-dynd py35-dask py35-sphinx py35-pip
48. postgis2 +gui +postgresql95 +raster +sfcgal +topology
49. py27-xmldiff wdiff cwdiff ndiff
50. qgis +postgresql95 +qt4
