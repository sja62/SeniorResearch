#!/bin/bash

#STEP2

#for d in /data/B/sadams/GAG_RUNS/HP-0*/*;
#	do (cp oligomer_size_distribution.tcl "$d")

for d in /data/B/sadams/GAG_RUNS/HP-0.25/*;
	do (cd "$d" && vmd -dispdev text -e oligomer_size_distribution.tcl -args input_pdbs.txt 5.0 distribution.txt)

done
