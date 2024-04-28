#!/bin/bash

mkdir -p "UnitedStates"
IFS=$'\n'
files=`awk '{print $0}' Global\ YouTube\ Statistics.csv`
for line in $files
do
category=$(echo "$line" | cut -d ',' -f 5)
country=$(echo "$line" | cut -d ',' -f 8)
  
if [ "$country" == "United States" ]; then
dest="UnitedStates/$category.txt"
echo "$line" >> "$dest"
fi
done
