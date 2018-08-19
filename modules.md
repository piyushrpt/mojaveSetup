###Environment modules
----------------

This section describes the setting up of "environment modules" on El Capitan. 
There are no macports for "modules". 
We will build this from scratch.

1. Download modules from here: https://sourceforge.net/projects/modules/
2. Note that you will need the macports installation done before you start with modules.
3. In the untarred directory:
    - ./configure --prefix=/usr/local
    - make
    - sudo make install

4.Modify .bash_profile as shown below. If using another shell, adapt the commands as needed:
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
source /usr/local/Modules/3.2.10/init/bash
module load use.own   #This allows module files in your $HOME/privatemodules to be used
module load basic     #Replacement for adding stuff to .bashrc/.bash_profile/.profile
```


#### Create the "basic" module
---------

We move all the stuff that we usually put in the .bashrc / .bash\_profile /.profile to a basic module files located at $HOME/privatemodules/basic. We load this module by default in .bashrc / .bash\_profile / .profile.


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

set-alias       "rm"    "rm -i"
set-alias       "cp"    "cp -i"
set-alias       "mv"    "mv -i"
set-alias       "gvim"  "mvim"      #Makes macvim just like on linux with gvim
#setenv          PETSC_DIR       /opt/local/lib/petsc #Uncomment if you want PETSC
setenv          GDAL_DATA       /opt/local/share/gdal
#setenv          GDAL_DRIVER_PATH    /opt/local/lib/gdalplugins #Uncomment if you want kealib support
```
