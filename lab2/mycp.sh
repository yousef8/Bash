#!/usr/bin/bash

[ $# = 0 ] && { echo "At least 2 arguemnts needed source and destination"; exit 1; }

cp $@

(( $? == 0 )) && echo "Success" || echo "Fail"
