#!/usr/bin/bash

for user in $(cut -d: -f1 /etc/passwd)
do
  if [[ -d "/home/$user/" ]]
    then
      mail -s "Testing Mail" $user < mtemplate
      status=$?
      echo -n "Sending mail to $user was "

      if [[ $status == 0 ]]
      then
        echo "success"
      else
        echo "failed"
      fi
  fi
done

