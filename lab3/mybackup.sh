#!/usr/bin/bash

cd ~

for file in *
do
  if [[ -f $file ]]
    then
      cp $file "$file.bak"
      echo "Backed up $file Successfully"
  fi
done
      
