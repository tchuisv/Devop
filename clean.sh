#!/bin/bash

echo "Deleting $1, $2, $3, $4"
sleep 4
groupdel $1
groupdel $2
groupdel $3
groupdel $4
echo "$# groups was entered"
sleep 3
echo "Group $1, $2, $3, $4 and has been deleted"
sleep 2
echo "Lets comfirm groups are deleted"
sleep 2
echo "printing list of groups....."
sleep 5
cat /etc/group | tail
sleep 8
clear

#DELETING CREATED USERS
echo "Now lets delete users"
sleep 2
echo "loading..."
sleep 4
echo "enter the names of the users you wish to delete. Enter all 3 users"
sleep 2
read u1 u2 u3
sleep 2
echo "deleting users $u1, $u2 and $u3"
sleep 5
userdel $u1
userdel $u2
userdel $u3
echo " $u1, $u2 and $u3 has been deleted"
sleep 3
echo "lets confirm the users were deleted"
sleep 2
echo "printing the list of users"
sleep 2
echo "loading..."
sleep 5
cat /etc/passwd | tail -8
sleep 5