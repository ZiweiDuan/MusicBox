#! /bin/bash

# append file_name to each row, so that we can use date for data analysis
# awk - pattern-directed scanning and processing language

cd ./Play
for f in *.log 
do
	echo "Processing $f"
	awk -v var="$f" '{print $0, "\t", var}' $f > ${f}.fn
done


# cat all log with file name to one file
cat ./*.log.fn > ../all_play.log.fn

