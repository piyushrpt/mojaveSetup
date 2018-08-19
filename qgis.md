## QGIS and Qgis3 environment setup

One can use QGIS and Qgis3 functionality within your standalone python programs - e.g, for making maps.

The basic setup for such a python script would like:
https://gist.github.com/spara/1251012

A full description of features available at the python level can be found here:
http://docs.qgis.org/testing/en/docs/pyqgis_developer_cookbook/index.html

To allow us to switch between QGIS and qgis3 seamlessly - we will create one module file for each and declare one to be in conflict with the other. This ensures that we can have only one of the two modules can be loaded at any time and we dont mix their environment settings.


### QGIS module file
We include the settings in a module file named $HOME/privatemodules/qgis

```bash
#%Module1.0#####################################################################
##
## qgis modulefile
##
## privatemodules/qgis. Generated from dot.in by configure.
##
proc ModulesHelp { } {
        global version

        puts stderr "\tSets up environment for using QGIS in python"
        puts stderr "\n\tVersion $version\n"
}

module-whatis   "adds QGIS stuff to your environment variables"

# for Tcl script use only
set     version      3.2.10
conflict qgis3

append-path    PYTHONPATH    /Applications/MacPorts/QGIS.app/Contents/Resources/python
append-path    LD_LIBRARY_PATH /Applications/MacPorts/QGIS.app/Contents/MacOS/lib
```

To use QGIS within your python 2.7 scripts
```
module load qgis
```

### Qgis3 module file
We include the settings in a module file named $HOME/privatemodules/qgis3

```bash
#%Module1.0#####################################################################
##
## qgis3 modulefile
##
## privatemodules/qgis. Generated from dot.in by configure.
##
proc ModulesHelp { } {
        global version

        puts stderr "\tSets up environment for using Qgis3 in python3"
        puts stderr "\n\tVersion $version\n"
}

module-whatis   "adds Qgis3 stuff to your environment variables"

# for Tcl script use only
set     version      3.2.10
conflict qgis

append-path    PYTHONPATH    /Applications/MacPorts/Qgis3.app/Contents/Resources/python
append-path    LD_LIBRARY_PATH /Applications/MacPorts/Qgis3.app/Contents/MacOS/lib
```

To use QGIS within your python 3.6 scripts
```
module load qgis3
```
