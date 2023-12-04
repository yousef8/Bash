#!/usr/bin/bash

read -p "Array Size : " size

# Input Validation
if [[ ! $size =~ ^[0-9]+$ ]]
  then
  echo "Input must be a positive integer"
  exit 1
fi

sum=0
for (( i = 0; i < $size; ++i ))
do
  read -p "Element no. $((i+1)) " value

  if [[ ! $value =~ ^[0-9]+$ ]]
    then
    echo "Input must be a positive integer"
    exit 1
  fi
  ((sum += $value))
  arr[i]=$value
done

echo $(( sum / ${#arr[@]} ))
