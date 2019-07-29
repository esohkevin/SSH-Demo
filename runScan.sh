#!/bin/bash

param="$1"

if [[ $param == [12] ]]; then

   if [[ $param == "1" && $# != 4 ]]; then
      echo """
	   Usage: ./scanPart.R 1 <.hap+.map-root> <chr#> <output>
	   
	        .hap+.map-root: The hap and map file prefix (e.g. for chrA.hap and chrA.map, enter chrA)
		          chr#: The chromoseme number (e.g. 11 if you are working with chromosome 11)
                        output: The output file name
      """

   elif [[ $param == "1" && $# == 4 ]]; then

        Rscript scanPart.R $2 $3 $4

   elif [[ $param == "2" && $# != 3 ]]; then
        echo """
             Usage: ./scanFull.R 2 <.hap+.map-root> <output>

	        .hap+.map-root: The hap and map file prefix (e.g. for chrA.hap and chrA.map, enter chrA)
		        output: The output file name
        """

   elif [[ $param == "2" && $# == 3 ]]; then

        Rscript scanFull.R $2 $3
  
   fi

else
	echo """
	     Usage: ./runScan.sh [1|2] (Enter either 1 or 2)
		
	     	1: If you are running a region of a single chromosome or a whole single chromosome
		2: If you are running a whole genome scan of more than one chromosomes
        """

fi
