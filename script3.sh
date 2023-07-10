#!/bin/bash
# Display the UID
echo "your UID is ${UID}"
#test UID
#uid_test=501
#Only display is the UID does not match 1000
#if [[ ${uid_test} -ne ${UID} ]]
#then
 #echo 'your uid doest not match'
 #exit 1
#fi
user_name=$(id -un)
echo "you username is ${user_name}"
#test username
user_test="adarshvarma"
if [[ "${user_name}" -ne "${uid_test}" ]]
then
 echo 'your correct'
 exit 1
fi