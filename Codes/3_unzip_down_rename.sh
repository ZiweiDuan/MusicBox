#! /bin/bash

for f in ./Raw/*_down.log.tar.gz
do 
	echo "Processing (unzip then tar extract) $f"
	d=$(echo ${f} | awk -F "[/.]" '{print $4}')
#	d=${f%%.*}
#  ${variable%%pattern}   returns variable minus longest matching pattern from back-end
#  ${variable#pattern}    returns variable minus shortest (single #) matching pattern from front-end
	echo ${d}
	tar -xvzf  $f && mv *.log  ./Download/${d}.log
done

