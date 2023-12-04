#!/usr/bin/bash

if [[ $# != 1 ]]
  then
  echo "Program takes only 1 argument"
  exit 1
fi

function square
{
  ((res = $1 * $1 ))
  echo $res;
}

square $1
