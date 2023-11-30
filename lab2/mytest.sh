#!/usr/bin/bash

# Input Validation
[ $# -ne 1 ] && echo "Usage: 1 argument required" && exit 1;

[ ! -e $1 ] && echo "Not a valid File or Directory" && exit 1;

# Actual Logic
# -n is prevent trailing \n
echo -n "Type : "

[ -f $1 ] && echo "file";
[ -d $1 ] && echo "directory";

echo -n "Available permissions : "

[ -r $1 ] && echo -n "Read";
[ -w $1 ] && echo -n " Write";
[ -x $1 ] && echo -n " Execute";

echo 
