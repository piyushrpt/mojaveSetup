## Setting up SICD on Mojave
------

This section describes the setting up of the SICD-related software on Mojave.

Lookup table for mapping variables to locations on disk. The variables are not environment variables. We just use these to simplify instructions.

|   VARIABLE   |   MY VALUE                        |     Comment                               |
|--------------|-----------------------------------|-------------------------------------------|
|    HOME      |  /Users/agram                     |  Default home directory Mojave            |
|    ROOT      |  /Users/agram/tools/sicd          |  ROOT folder for SICD installation        |
|    MODDIR    |  /Users/agram/privatemodules/sicd |  Module files for SICD                    |


### Step 1: Setup directory structure
---------------------------------------------------------

1. Create the directory ROOT . This directory will contain all future SICD-related installations.
```bash
> mkdir /Users/agram/tools/sicd
```

2. Create the following subdirectories under ROOT.
```bash
ROOT
|
|--src
|--install
```

The commands for creating this directory structure
```bash
> ROOT
> mkdir src install
```

### Step 2: Checkout six-library and sarpy
-----------------------------------------

1. Checkout six-library under src folder
```bash
> cd ROOT/src
> git checkout https://github.com/ngageoint/six-library.git
```

2. Checkout sarpy under src folder
```bash
> cd ROOT/src
> git checkout https://github.com/ngageoint/sarpy.git
```

3. Install xerces if you haven't already with macports
```bash
> sudo port install xercesc3
```

### Step 3: Setup modulefile for six-library and sarpy
---------------------------------------------------------

Shown below is the template for sicd module file located at /Users/agram/privatemodules/sicd

```bash
#%Module1.0#####################################################################
##
## sicd modulefile
##
## privatemodules/sicd. Generated from dot.in by configure.
##
proc ModulesHelp { } {
        global version

        puts stderr "\tAdds SICD environment for build and use"
        puts stderr "\n\tVersion $version\n"
}

module-whatis   "adds SICD stuff to your environment"

# for Tcl script use only
set     version      3.2.10

set             tooldir         /Users/agram/tools/sicd/install
set             sitedir         $tooldir/lib/python3.7/site-packages
append-path     PATH                $tooldir/bin
append-path     LD_LIBRARY_PATH     $tooldir/lib:$sitedir
append-path     DYLD_LIBRARY_PATH   $sitedir/coda:$sitedir/pysix
append-path     PYTHONPATH          $sitedir
append-path     PYTHONPATH      /Users/agram/tools/sicd/src
setenv          SIX_SCHEMA_PATH         $tooldir/conf/schema/six
set-alias       "wafconfigure"    "PYTHON=python3 python waf configure --prefix=/Users/agram/tools/sicd/install --enable-cpp11 --with-cflags=\"-I/opt/local/include\" --with-cxxflags=\"-I/opt/local/include\" --with-linkflags=\"-L/opt/local/lib -L/opt/local/Library/Frameworks/Python.framework/Versions/3.7/lib\" --nobuild-xml --alltests"
```

Once you have set this up, you should be able to see this module listed amongst the available modules:
```bash
> module list
  1) use.own        3) gee   5) sicd
  2) basic          4) isce/latest
```

If you don't see the sicd module file listed, make sure you have loaded the "use.own" module
```bash
> module load use.own
```
This instructs modules to look for module files in your HOME/privatemodules folder.


### Step 4: Load module and install six-library
----------------------------------------------

The first thing to do to use or install six-library is to load the corresponding module. To load the module, I execute

```bash
module load sicd
```

Change to the six-library folder
```bash
> cd /Users/agram/tools/sicd/src/six-library
> wafconfigure
> python waf build
> python waf install
```
Note that we used **python** to build six-library even though we asked it to link against **python3**.
This is because, waf packaged with six-library seems to have issues. We just resort to using python2 for using waf.


To test the installation, in a python shell try the following import statement:
```bash
#> from pysix.six_sicd import *
> import sarpy
```

At present, waf doesn't build the python bindings for six with python3.7

### Step 5: Ready to use
-----------------------
You are now ready to use SICD. Load the modulefile for the version you want to use and when you want to restore the environment, unload the module

```bash
> module load sicd
> .... Your work ....
> module unload sicd
```
