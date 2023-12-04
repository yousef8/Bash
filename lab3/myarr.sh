#!/usr/bin/bash

read -p "Number of array elements : " size

# Input Validation
if [[ ! $size =~ ^[0-9]+$ ]]
  then
  echo "Input must be a positive integer"
  exit 1
fi

for (( i = 0; i < $size; ++i ))
do
  read -p "Element no. $((i+1)) "  arr[$i]
done

echo ${arr[@]}
