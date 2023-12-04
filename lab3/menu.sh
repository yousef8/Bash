#!/usr/bin/bash

select choice in 'ls' 'ls -a' 'exit'
do
case $choice in
'ls')
ls
;;

'ls -a')
ls -a
;;

'exit')
break
;;

*)
echo "Invalid Choice"
;;

esac
done
