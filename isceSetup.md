## Setting up ISCE on El Capitan
------

This section describes the setting up of the ISCE software on an Mojave.
The setup is general and allows one to simultaneously install multiple versions on the machine.


Lookup table for mapping variables to locations on disk. The variables are not environment variables. We just use these to simplify instructions.

|   VARIABLE   |   MY VALUE                        |     Comment                               |
|--------------|-----------------------------------|-------------------------------------------|
|    HOME      |  /Users/agram                     |  Default home directory on Mojave         |
|    ROOT      |  /Users/agram/tools/isce          |  ROOT folder for ISCE installation        |
|    MODDIR    |  /Users/agram/privatemodules/isce |  Folder for storing module files for ISCE |
|    VERSION   |  201906                           |  Version number of ISCE release           |




###Step 1: Setup directory structure (Very first installation)
---------------------------------------------------------

This step only needs to be performed when you are installing ISCE (any version) for the first time on your machine. If you have an old version installed using these very set of instructions, you don't need to repeat Step 1.

1. Create the directory ROOT . This directory will contain all future ISCE installations.
```bash
> mkdir /Users/agram/tools/isce
```

2. Create the following subdirectories under ROOT.
```bash
ROOT
|
|--src
|--build
|--install
|--config 
```

The commands for creating this directory structure
```bash
> cd /Users/agram/tools/isce
> mkdir config src build install
```

3. Create the directory MODDIR. This needs to be done in folder HOME/privatemodules. Environment modules looks for user-defined module files in this location.
```bash
HOME
|
|--privatemodules
|  |
|  |--isce
```
The commands for creating this directory structure
```bash
> cd
> mkdir privatemodules
> mkdir privatemodules/isce
```


###Step 2: Download ISCE tarball
---------------------------------

Tarballs of different versions of ISCE can be found [here](https://github.com/isce-framework/isce2/releases)

To generalize the instructions, we will refer to the downloaded tarball as "isce-v2.3.1.tar.gz".

At the time of writing these instructions, the latest version was "2.3.1".

Instead, if you want to build the latest version from the git repository see Step 4 below.


###Step 3: Create subfolders for the new version
--------------------------------------------------

Create a new subfolder for the new version under each subfolder of ROOT.
```bash
ROOT
|
|--src
|  |--VERSION
|--build
|  |--VERSION
|--install
|  |--VERSION
|--config 
|  |--VERSION
```

Commands for setting up this directory structure
```bash
> cd /Users/agram/tools/isce
> mkdir config/201906 src/201906 build/201906 install/201906
```

###Step 4: Untar downloaded tarball in src/VERSION
---------------------------------------------------

Untar the downloaded tarball in the src/VERSION folder. This will unpack a directory called isce. 

```bash
> cd /Users/agram/tools/isce/src/201906
> tar xzvf ~/Downloads/isce-v2.3.1.tar.gz
```

If instead, you want to use the latest version from the git repository
```bash
> cd /Users/agram/tools/isce/src/201906
> git clone https://github.com/isce-framework/isce2.git
```


###Step 5: Create SConfigISCE file in config/VERSION
----------------------------------------------------

SConfigISCE is the configuration file used to set paths to the correct directories for building ISCE. We will create a new SConfigISCE for each version to ensure the ability to modify every installed version as needed. The SConfigISCE file needs to be created under ROOT/config/VERSION folder. Note that this set of instructions is different from the earlier versions as we now use "clang" for building the software. We still need to install gcc packages for gfortran. 

```bash
> cd /Users/agram/tools/isce/config/201906
> vi SConfigISCE
```

The template for SConfigISCE is shown below. You only need to change the PRJ\_SCONS\_BUILD and PRJ\_SCONS\_INSTALL values.

```bash

#Build Directory
PRJ_SCONS_BUILD = /Users/agram/tools/isce/build/201906  

#Install Directory
PRJ_SCONS_INSTALL = /Users/agram/tools/isce/install/201906/isce

LIBPATH =  /opt/local/lib /opt/local/lib/gcc7
CPPPATH =  /opt/local/include /opt/local/include/libomp /opt/local/include/python3.7m
FORTRANPATH =  /opt/local/include
FORTRAN = gfortran
CC = clang
CXX = clang++
STDCPPLIB = c++

MOTIFLIBPATH = /opt/local/lib              # path to libXm.dylib
X11LIBPATH = /opt/local/lib                # path to libXt.dylib
MOTIFINCPATH = /opt/local/include          # path to location of the Xm directory with various include files (.h)
X11INCPATH = /opt/local/include            # path to location of the X11 directory with various include files
```

###Step 6: Setup modulefile for specific version of ISCE
---------------------------------------------------------

We use environment modules to activate/ deactivate a specific version of ISCE.
Every version will need its own module file located at MODDIR/VERSION, that sets up appropriate environment variables and paths.

Shown below is the template for isce/201906 located at /Users/agram/privatemodules/isce/201906

```bash
#%Module1.0#####################################################################
##
## isce modulefile
##
## privatemodules/isce. Generated from dot.in by configure.
##
proc ModulesHelp { } {
        global version

        puts stderr "\tAdds ISCE directory to your PYTHONPATH environment variable"
        puts stderr "\n\tAlso sets up PATH and LD_LIBRARY_PATH variables\n"
        puts stderr "\n\tVersion $version\n"
}

module-whatis   "adds ISCE stuff to your environment"

# for Tcl script use only
set     version      3.2.10

#Change this for each version
set     isceversion 201906

set		basedir		/Users/agram/tools/isce
set		installdir      $basedir/install/$isceversion/isce
setenv		ISCE_HOME	    $installdir
setenv		SCONS_CONFIG_DIR    $basedir/config/$isceversion

###To make apps available at command line
prepend-path	PATH	$installdir/applications

###To make mdx and other utils available at command line
prepend-path    PATH    $installdir/bin

###To make isce importable in python
prepend-path    PYTHONPATH    $basedir/install/$isceversion
```

Once you have set this up, you should be able to see this module listed amongst the available modules:
```bash
> module list
  1) use.own        3) gee   5) isce/201906
  2) basic          4) isce/201512
```

If you don't see the isce module file listed, make sure you have loaded the "use.own" module
```bash
> module load use.own
```
This instructs modules to look for module files in your HOME/privatemodules folder.


###Step 7: Load module and install isce
----------------------------------------

The first thing to do to use any version of ISCE or install a version of ISCE is to load the corresponding module. For this example, I execute

```bash
module load isce/201612
```

Change to the source directory and use scons to install.
```bash
> cd /Users/agram/tools/isce/src/201906/isce
> scons install
```

This should install isce. Run "scons install" twice to make sure that all components are installed successfully.


###Step 8: Ready to use
-----------------------
You are now ready to use isce. Load the modulefile for the version you want to use and when you want to restore the environment, unload the module

```bash
> module load isce/201906
> .... Your work ....
> module unload isce
```

To switch between versions, unload the module for the current version and load the module corresponding to the version you want to use. Modules is a clean way of managing your environment variables. 
