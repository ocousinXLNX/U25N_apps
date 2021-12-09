# U25N DFX creating a dynamic region

## Repo overview
| Folder                              | Description                                                                    |
| ----------------------------------- | ------------------------------------------------------------------------------ |
| `<project_name>\<project_name>.src` | contains the dynamic region source code                                        |
| `<project_name>\hls`                | contains the C++ code to generate the IP needed by the dynamic Region prj      |
| `<project_name>.xpr`                | Vivado project file                                                            |

## Usage

### Before cloning this repository
git lfs should be installed, see [git lfs](https://git-lfs.github.com/)

### Build design

Run this from the projects commandline:
```
vivado -mode batch -source ../../scripts/u25n_build_all.tcl
```

## creating a dynamic region project
Using the `u25n_create_dynamic_project.tcl` creates a pass-through example design that can be compiled as is or modify.
This section describes the steps need to create an new IP, connect it to the dynamic region and test it. The steps for 
building the hardware image stays the same and rely on the `u25n_create_dynamic_project.tcl` script.
### Creating an IP
In this example we will create an IP that reads and write traffic from an AXI streaming interface and create registers to control this same IP along with frame counting capability.
The aim for this project is to provide an easy stating point containg all the necessary interfaces.

#### VITIS_HLS
This example uses the latest version of Vitis_hls 2021.1 and the IP generated is compatible with the Vivado 2020.1 version used for the creation of the static shell.
The IP can be generated using the command line or mofified using the GUI for all the graphical function call graph features debugging etc...

Using the commad line to generate the IP block:

```
vitis_hls -f run_hls.tcl
```

Please update the `directives.tcl` with the correct option, listed in the `run_hls.tcl` 
Option 1 - CSim
Option 2 - CSynth
Option 3 - Ip generation

default value is "1" 

Once the script is done an IP directory will be created with the IP archived in it.
