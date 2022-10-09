#!bin/bash


echo "Lets verify the user and group were deleted"
sleep 1
echo "Printing the list of groups"
echo "."
sleep 1
echo ".."
sleep 1
echo "..."
sleep 1
awk -F: '{print $1,$2}' /etc/group | tail -5  | sed 's/x/ group is available/g'   #Using Sed to replace x
sleep 3
echo "Printing the list of users"
echo "."
sleep 1
echo ".."
sleep 1
echo "..."
sleep 1
awk -F: '{print $1,$2}' /etc/passwd | tail -5 | sed 's/x/ user is available/g'   #Using Sed to replace x
sleep 3
echo "Lets proceed to the next task"
sleep 1