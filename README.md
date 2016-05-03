## Instructions for setting up an OS X El Capitan machine from scratch
------------

#### Before you start
----------
1. Google chrome
2. Alfred 2
3. Keepass-X
4. iTerm2
5. CyberDuck (ftp client) 
6. All OS updates from App store (Restart if needed)


#### Macports
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

##### Option 1: Automated installation  (Not extensively tested ...)
-----------

You can automatically install all the required ports with the following command:

```bash
> sudo port install $(cat ports.txt)
```

Once you run this command, make sure you choose the right variants of active ports using the following command

```bash
> sudo source post_ports.sh
```


##### Option 2: Manual installation of ports (recommended)
----------

You will have to manually run series of "port install" commands.
This option has been tested more extensively and hopefully results in fewer errors.

For instructions see [here](./macports.md)



####Other programs
------------

###### Textwrangler
--------------------
- Install textwrangler itself
- Install textwrangler command line tools (includes twdiff for comparing files / folders)
- twdiff appears to be better than other diff tools that are available 

##### Google Earth Pro
----------------------
- Google Earth Pro is now free

##### Environment modules
--------------------------
- Follow instructions [here](./modules.md)
