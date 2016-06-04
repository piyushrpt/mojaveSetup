## Setting up ISCE on El Capitan
------

This section describes the setting up of the ISCE software on an El Capitan.
The setup is general and allows one to simultaneously install multiple versions on the machine.


Lookup table for mapping variables to locations on disk. The variables are not environment variables. We just use these to simplify instructions.

|   VARIABLE   |   MY VALUE                  |     Comment                               |
|--------------|-----------------------------|-------------------------------------------|
|    HOME      |  /Users/agram               |  Default home directory on El Capitan     |
|    ROOT      |  /Users/agram/tools/isce    |  ROOT folder for ISCE installation        |
|    MODDIR    |  /Users/privatemodules/isce |  Folder for storing module files for ISCE |
|    VERSION   |  201604                     |  Version number of ISCE release           |




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

Tarballs of different versions of ISCE can be found [here](https://winsar.unavco.org/isce.html)

To generalize the instructions, we will refer to the downloaded tarball as "isce-2.0.0_VERSION.tar.bz2".

At the time of writing these instructions, the latest version was "201604".


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
> mkdir config/201604 src/201604 build/201604 install/201604
```

###Step 4: Untar downloaded tarball in src/VERSION
---------------------------------------------------

Untar the downloaded tarball in the src/VERSION folder. This will unpack a directory called isce (or) isce-2.0.0_VERSION. The exact name of the unpacked folder doesn't matter.

```bash
> cd /Users/agram/tools/isce/src/201604
> tar xjvf ~/Downloads/isce-2.0.0_201604.tar.bz2
```

###Step 5: Create SConfigISCE file in config/VERSION
----------------------------------------------------




