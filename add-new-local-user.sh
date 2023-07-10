#check the user has a superroot privilage
user="$( UID )"
if [[ "${user} -eq 0" ]]
do
 echo "you have superuser privilage"
 exit 1
done
# please enter the username if not code will not exceuted
read -p "please enter the user name" user_name
if [[ ${?} -eq 0 ]]
do 
 echo "your user name is ${user_name}"
 exit 1
done
#adding username
useradd -m ${user_name}
host=$( hostname )
#addding random password
password = {RANDOM}
echo "your password is ${password} please note it down"
echo ${password} | passwd --stdin ${user_name}
if [[ ${?} -eq 0 ]]
do 
 echo 'your account is created succesfully'
 echo "username : ${user_name}"
 echo "password : ${password}"
 echo "your host : ${host}"
 exit 1
done

