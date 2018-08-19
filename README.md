## Instructions for setting up an OS X El Capitan machine from scratch
------------

### Before you start
----------
1. Google chrome
2. Alfred 2
3. Keepass-X
4. iTerm2
5. CyberDuck (ftp client) 
6. All OS updates from App store (Restart if needed)


### Macports
---------

1. Install XCode from App store
2. Install command line tools from within XCode
   - sudo xcode-select --install   (This will install command line tools)
3. sudo xcodebuild -license
   - Agree to the terms of license
4. Install XQuartz
   - Will need to log out and log back in
5. Install macports
   - sudo port selfupdate
6. Restart terminal

#### Manual installation of ports
----------

You will have to manually run series of "port install" commands.
For detailed instructions see [here](./macports.md)

#### Other optional ports
-----------

There are other ports of interest for heavy-duty numerical computation. These are not needed for ISCE but can be useful for developing applications. 
For detailed instructions see [here](./others.md)

### Other programs
------------

###### Textwrangler
--------------------
- Install textwrangler itself
- Install textwrangler command line tools (includes twdiff for comparing files / folders)
- twdiff appears to be better than other diff tools that are available 

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

##### QGIS setup for use within Python scripts
------------------------------------
- If you use QGIS to compose maps, follow instructions [here](./qgis.md)
