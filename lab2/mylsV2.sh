#!/usr/bin/bash

# ${@:2} expand to all arguments except the 1st one
[ "$1" = '-l' ] && { ls -l "${@:2}"; exit 0; }
[ "$1" = '-a' ] && { ls -a "${@:2}"; exit 0; }
[ "$1" = '-d' ] && { ls -d "${@:2}"; exit 0; }
[ "$1" = '-R' ] && { ls -R "${@:2}"; exit 0; }

ls "$@"
