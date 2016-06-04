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

2. Create the following subdirectories under ROOT.
```bash
ROOT
|
|--src
|--build
|--install
|--config 
```

3. Create folder for isce modulefiles under your HOME/privatemodules
```bash
HOME
|
|--privatemodules
|  |
|  |--isce
```

###Step 2: Download ISCE tarball
---------------------------------
