## Environment modules
----------------

This section describes the setting up of "environment modules" on El Capitan. 
There are no macports for "modules". 
We will build this from scratch. The build process on OS X has changed slightly since modules v4. The instructions below are from the latest version (4.1.3 as on 2018-08-19).

1. Download modules from here: https://sourceforge.net/projects/modules/
2. Note that you will need the macports installation done before you start with modules.
3. Create soft link as shown below (modules developers use homebrew and look for ggrep)
   - sudo ln -s /usr/bin/grep /opt/local/bin/ggrep

4.  "sed" on OS X does not support some options. So, we need to replace it with "gsed" for auto-complete to work.
    -  Edit the init/bash\_completion.in in the untarred directory and replace "sed" with "gsed" in functions \_module\_avail(), \_module\_savelist() and \_module\_not\_yet\_loaded()

5. In the untarred directory:
    - ./configure --prefix=/usr/local/Modules
    - make
    - sudo make install

6. Modify .bash\_profile as shown below. If using another shell, adapt the commands as needed:

```bash
export CLICOLOR=1
export PS1="\h:\w>: "

##
# Your previous /Users/agram/.bash_profile file was backed up as /Users/agram/.bash_profile.macports-saved_2013-03-04_at_11:21:37
##

# MacPorts Installer addition on 2013-03-04_at_11:21:37: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export MANPATH=/opt/local/share/man:$MANPATH

###Add these two lines to setup modules
##If using another shell use that instead of bash
source /usr/local/Modules/init/bash
module load use.own   #This allows module files in your /Users/agram/privatemodules to be used
module load basic     #Replacement for adding stuff to .bashrc/.bash_profile/.profile
```


#### Create the "basic" module
---------

We move all the stuff that we usually put in the .bashrc / .bash\_profile /.profile to a basic module files located at /Users/agram/privatemodules/basic. We load this module by default in .bashrc / .bash\_profile / .profile.

Remember to close the terminal and reopen a fresh one for further work after you setup this file. This will ensure that the basic module will be loaded by default.

```bash
#%Module1.0#####################################################################
##
## basic modulefile
##
## privatemodules/basic. Generated from dot.in by configure.
##
proc ModulesHelp { } {
        global version

        puts stderr "\t Sets up basic environment"
        puts stderr "\n\tVersion $version\n"
}

module-whatis   "Sets up basic environment on the machine"

# for Tcl script use only
set     version      3.2.10

set-alias       "rm"    "rm -i"   #I'm paranoid. This will ask for confirmation
set-alias       "cp"    "cp -i"
set-alias       "mv"    "mv -i"
set-alias       "gvim"  "mvim"    #Same name as on a linux machine
#setenv          PETSC_DIR       /opt/local/lib/petsc #Uncomment if you want PETSC
setenv          GDAL_DATA       /opt/local/share/gdal #Needed for GDAL ancillary data
#setenv          GDAL_DRIVER_PATH    /opt/local/lib/gdalplugins #Uncomment if you want kealib support
```
