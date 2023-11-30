#!/usr/bin/bash

if [ $# = 0 ]
then
	echo "At least 2 arguemnts needed source and destination"
	exit 1
fi

cp $@

(( $? == 0 )) && echo "Success" || echo "Fail"
