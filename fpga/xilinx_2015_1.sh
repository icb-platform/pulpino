#!/bin/bash
export XILINX_HOME=Your_installation_location
export XILINX_HOME=/home/wanjun/vivado/2015.1
if [ "$XILINX_HOME" = "Your_installation_location" ]; then
	echo [ERROR]:please modify xilinx_2015_1.sh first
	exit 1
else
        echo Macro setup pass
fi
export VIVADO_HOME=$XILINX_HOME/Vivado/2015.1
export VITIS_HOME=$XILINX_HOME/SDK/2015.1
export XILINX_VIVADO=$VIVADO_HOME
export PATH=$VIVADO_HOME/bin:$VITIS_HOME/bin:$VITIS_HOME/gnu/microblaze/lin/bin:$VITIS_HOME/gnu/arm/lin/bin:$VITIS_HOME/gnu/microblaze/linux_toolchain/lin64_be/bin:$VITIS_HOME/gnu/microblaze/linux_toolchain/lin64_le/bin:$XILINX_HOME/DocNav:$PATH
