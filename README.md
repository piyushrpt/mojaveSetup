## Instructions for setting up an OS X El Capitan machine from scratch
------------

#### Before you start
----------
1. Google chrome
2. Alfred 2
3. Keepass-X
4. iTerm2
5. All OS updates from App store (Restart if needed)


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
Install ports with ''sudo port install'' unless specified otherwise

1. gcc5
..* sudo port select gcc mp-gcc5 (restart terminal)
2. cmake gmake bison gawk autoconf autoconf-archive 
3. gconf coreutils automake pkgconfig dpkg ctags
4. tree unzip unrar szip p7zip gzip gnutar 
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
19. cgal
20. bzr git rsync
21. hdf5 hdfeos5 h5utils
22. netcdf netcdf-cxx netcdf-fortran grib_api +gcc5
22. proj 

