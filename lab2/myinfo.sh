#!/usr/bin/bash

read -p "Login name : " loginName;
homeDir="/home/$loginName"

if [ -e $homeDir ]
then
	ls -l $homeDir

  echo -e "\n\nProcesses Status =>"
  ps -f
  echo -e "\nCopying home directory to /tmp"
  cp -r $homeDir /tmp
  echo "Finished copying"

else
	echo "No Home Directory for this user"
	exit 1
fi
