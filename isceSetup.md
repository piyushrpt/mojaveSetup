## Setting up ISCE on El Capitan
------

This section describes the setting up of the ISCE software on an El Capitan.
The setup is general and allows one to simultaneously install multiple versions on the machine.


During the entire setup stage, we will refer to the "ROOT" directory.
My personal preference is to use "/Users/agram/tools/isce" as "ROOT".
This is not an environment variable. I'm only using this to simplify the instructions.


###Step 1: Setup directory structure (Very first installation)
---------------------------------------------------------

This step only needs to be performed when you are installing ISCE (any version) for the first time on your machine. If you have an old version installed using these very set of instructions, you don't need to repeat Step 1.

Create the following subdirectories under ROOT.
```bash
ROOT
|
|--src
|--build
|--install
|--config 
```
