#! /bin/bash

# Step 1
# upnzip uid 
cp ./Raw/3_1.uids.gz all_uid.txt.gz
gunzip all_uid.txt.gz

# Step 2 
# unzip and then tar extract play log
# this can be achieved by tar -x alone!
# -v verbose
# -z (zip) means compress, which will be ignored in -x
# -f read archive from or write archive to a specific file

for f in ./Raw/*_play.log.tar.gz
do 
	echo "Processing (unzip then tar extract) $f"
	tar -xvzf  $f
done


# move extracted log to the Play folder
mv *_play.log ./Play/


# Step 3
# Unzip outlier file 
cp ./Raw/*_play.log.gz ./Play/
gunzip ./Play/*.gz


# Step 4 
# unzip and then tar extract download log

for f in ./Raw/*_down.log.tar.gz
do 
	echo "Processing (unzip then tar extract) $f"
	tar -xvzf  $f
done


# move extracted log to the Download folder
mkdir Download
mv *_down.log ./Download/


# Step 5
# unzip and then tar extract search log
for f in ./Raw/*_search.log.tar.gz
do
	echo "Processing (unzip and then tar extract) $f"
	tar -xvzf $f
done


# move extracted log to Search folder
mkdir Search
mv *_search.log ./Search/






	




	
