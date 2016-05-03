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
4.Modify .bash_profile as shown below:
```bash
export CLICOLOR=1
export PS1="\h:\w>: "
export PYTHONSTARTUP=/Users/agram/.pythonstartup

##
# Your previous /Users/agram/.bash_profile file was backed up as /Users/agram/.bash_profile.macports-saved_2013-03-04_at_11:21:37
##

# MacPorts Installer addition on 2013-03-04_at_11:21:37: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export MANPATH=/opt/local/share/man:$MANPATH

###Add these two lines to setup modules
source /usr/local/Modules/3.2.10/init/bash
module load use.own
```
