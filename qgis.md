## QGIS and Qgis3 environment setup

One can use Qgis3 functionality within your standalone python programs - e.g, for making maps.

The basic setup for such a python script would like:
https://gist.github.com/spara/1251012

A full description of features available at the python level can be found here:
http://docs.qgis.org/testing/en/docs/pyqgis_developer_cookbook/index.html

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
