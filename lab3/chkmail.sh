#!/usr/bin/bash

((lines=0))

while true
do
  newLines=$(cat "/var/mail/$USER" | wc -l)
  if [[ $newLines > $lines ]]; then
    echo "You've Got Mail"
    lines=$newLines
  fi
  sleep 10s
done
