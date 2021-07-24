#!/bin/bash

# Get total number of files
total_args="$#" 

# Get the last positional parameter which is the destination folder
dest="${@: -1}"

# copy each file to the destination
for ((i=1; i<total_args;i++))
do
    scp $i server2:$dest
done


total_size=0
# Get the total size of the copied files
for ((i=1; i<total_args;i++))
do
    size=`wc -c $i | awk '{print $1}'`
    total_size=$((total_size + size))
done
echo $total_size
