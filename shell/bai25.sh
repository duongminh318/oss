#!/bin/bash
#Bai 25
# obtain the date and time
date_stamp=$(date +"%d-%B")

# make a directory with that name
mkdir "$date_stamp"

# copy the files from the current folder into it
cp *.txt "$date_stamp"

# all done, report back and exit
echo "Text files copied to directory: "$date_stamp
