#/bin/bash
# Display the user ID 
#echo "user ID is ${EUID}"
#Display the group ID
#echo "group ID is ${gid}"
#username=$(id -un)
#echo "username is ${username}"
# hello world
#echo "I love u"
if [[ "${UID}" -eq 0 ]]
then
 echo 'root user'
else
 echo 'not root user'
fi

