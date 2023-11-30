#!/usr/bin/bash

x=5
echo "sourced s2.sh will print x :"
. s2.sh

echo "Call s2.sh with x value as argument will print x :"
./s2.sh $x
