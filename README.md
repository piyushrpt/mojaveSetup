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
   sudo port select gcc mp-gcc5 (restart terminal)
2. cmake gmake bison gawk autoconf autoconf-archive
3. subversion
4. python27
   $ sudo port select python python27
5. python35
   sudo ln -s /opt/local/Library/Frameworks/Python.framework/Versions/3.5/bin/python3 /opt/local/bin/python3
   sudo ln -s /opt/local/Library/Frameworks/Python.framework/Versions/3.5/include/python3.5m /opt/local/include/python3.5m


