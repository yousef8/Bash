#!/usr/bin/bash

shopt -s extglob
export LC_COLLATE=C

read -p "Enter text : " text

case $text in
+([A-Z]))
echo "Upper Case"
;;

+([a-z]))
echo "Lower Case"
;;

+([0-9]))
echo "Number"
;;

*)
echo "Nothing"
;;
esac

