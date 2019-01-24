#!/bin/bash

sed -i 's/*/CH0.01_N+C-/g' start_temp.txt

# s = substitute all * with /../ g=globally, for all occurances

#secure copy olig_size_dist to all folders?
#does this command need to be run from the folder itself?

vmd -dispdev text -e oligomer_size_distribution.tcl -args start_temp.txt 5.0 start_distribution.txt

#runs oligomer dist for .txt file and outputs a new .txt file with size distribution
