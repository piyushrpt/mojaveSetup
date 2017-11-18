## QGIS environment setup

One can use QGIS functionality within your standalone python programs - e.g, for making maps.

The basic setup for such a python script would like:
https://gist.github.com/spara/1251012

A full description of features available at the python level can be found here:
http://docs.qgis.org/testing/en/docs/pyqgis_developer_cookbook/index.html

We include the settings in a module file named /Users/agram/privatemodules/qgis

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

append-path    PYTHONPATH    /Applications/MacPorts/QGIS.app/Contents/Resources/python
append-path    LD_LIBRARY_PATH /Applications/MacPorts/QGIS.app/Contents/MacOS/lib
```

To use QGIS within your python 2.7 scripts
```
module load use.own qgis
```
