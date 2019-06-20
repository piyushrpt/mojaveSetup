## Instructions for setting up an OS X El Capitan machine from scratch
------------

### Before you start
----------
1. Google chrome
2. Alfred 3
3. CyberDuck and MountainDuck (ftp client)
4. Docker Desktop for Mac
5. All OS updates from App store (Restart if needed)


### Macports
---------

1. Install XCode from App store
2. Install command line tools from within XCode
   - sudo xcode-select --install   (This will install command line tools)
3. sudo xcodebuild -license
   - Agree to the terms of license
5. Install macports
   - sudo port selfupdate
6. Restart terminal

#### Manual installation of ports
----------

You will have to manually run series of "port install" commands.
For detailed instructions see [here](./macports.md)


### Other programs
------------

###### BBEdit
--------------------
- Install BBEdit itself
- bbdiff appears to be better than other diff tools that are available 

##### Google Earth Pro
----------------------
- Google Earth Pro is now free
- Sign in with your email and password: GEPFREE

##### Environment modules
--------------------------
- We recommend using "modules" to manage your environment variables
- Please don't set paths / pythonpaths in your .bashrc/ .bash_profile/ .profile for all the different software that you use. This is a guaranteed recipe for conflicts and disaster.
- Follow instructions [here](./modules.md)

##### You are ready to install ISCE
------------------------------------
- We will use "modules" to localize changes to the environment needed to a single module file
- Follow instructions [here](./isceSetup.md)

##### QGIS3 setup for use within Python scripts
------------------------------------
- If you use QGIS to compose maps, follow instructions [here](./qgis.md)

##### SICD setup for use with Python
------------------------------------
- If you work with SAR data distributed in SICD formats, and want to be able to use it in combination with ISCE, follow instructions [here](./sicdSetup.md)
