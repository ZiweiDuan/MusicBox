#! /bin/bash
# read url line by line and download data in batch


while IFS= read -r line
do
   curl -O $line
done <../Code/url.txt





