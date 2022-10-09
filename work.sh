#!bin/bash

echo "Welcome to the first assignment" 
#echo ((date))
sleep 2

# Creating Groups
echo "Please enter the name of the first group you want to create"
sleep 2
read n1
 if [ $n1 == "Dev" ] || [ $n1 == "QA" ] || [ $n1 == "UAT" ] || [ $n1 == "Prod" ]
 then
 groupadd $n1
 echo "$n1 group has been created"
 elif [ $n1 != "Dev" ] || [ $n1 != "QA" ] || [ $n1 != "UAT" ] || [ $n1 != "Prod" ]
 then
       while [ $n1 != "Dev" ] || [ $n1 != "QA" ] || [ $n1 != "UAT" ] || [ $n1 != "Prod" ]
       do 
        echo "you enter a wrong group name"
        sleep 2
        echo "Please enter the name of the first group"
        sleep 2
        read n1
           if [ $n1 == "Dev" ] || [ $n1 == "QA" ] || [ $n1 == "UAT" ] || [ $n1 == "Prod" ]
           then
            groupadd $n1
            echo "$n1 group has been created"
            break 
           fi
        done

fi

echo "Please enter the name of the Second group you wish to create"
sleep 3
read n2
 if  [ $n2 == "Dev" ] || [ $n2 == "QA" ] || [ $n2 == "UAT" ] || [ $n2 == "Prod" ]
 then
 groupadd $n2
 echo "$n2 group has been created"
 elif [ $n2 != "Dev" ] || [ $n2 != "QA" ] || [ $n2 != "UAT" ] || [ $n2 != "Prod" ]
 then
       while [ $n2 != "Dev" ] || [ $n2 != "QA" ] || [ $n2 != "UAT" ] || [ $n2 != "Prod" ]
       do 
        echo "you enter a wrong group name"
        sleep 3
        echo "Please enter the name of the second group"
        sleep 3
        read n2
           if [ $n2 == "Dev" ] || [ $n2 == "QA" ] || [ $n2 == "UAT" ] || [ $n2 == "Prod" ]
           then
            groupadd $n2
            echo "$n2 group has been created"
            break
           fi
        done

fi

echo "Please enter the name of the third group you wish to create"
sleep 3
read n3
 if [ $n3 == "Dev" ] || [ $n3 == "QA" ] || [ $n3 == "UAT" ] || [ $n3 == "Prod" ]
 then
 groupadd $n3
 echo "$n3 group has been created"
 elif [ $n3 != "Dev" ] || [ $n3 != "QA" ] || [ $n3 != "UAT" ] || [ $n3 != "Prod" ]
 then
       while [ $n3 != "Dev" ] || [ $n3 != "QA" ] || [ $n3 != "UAT" ] || [ $n3 != "Prod" ]
       do 
        echo "you enter a wrong group name"
        sleep 3
        echo "Please enter the name of the third group"
        sleep 3
        read n3
           if [ $n3 == "Dev" ] || [ $n3 == "QA" ] || [ $n3 == "UAT" ] || [ $n3 == "Prod" ]
           then
            groupadd $n3
            echo "$n3 group has been created"
            break
           fi
        done

fi

echo "Please enter the name of the forth group you wish to create"
sleep 3
read n4
 if [ $n4 == "Dev" ] || [ $n4 == "QA" ] || [ $n4 == "UAT" ] || [ $n4 == "Prod" ]
 then
 groupadd $n4
 echo "$n4 group has been created"
 elif [ $n4 != "Dev" ] || [ $n4 != "QA" ] || [ $n4 != "UAT" ] || [ $n4 != "Prod" ]
 then
       while [ $n4 != "Dev" ] || [ $n4 != "QA" ] || [ $n4 != "UAT" ] || [ $n4 != "Prod" ]
       do 
        echo "you enter a wrong group name"
        sleep 3
        echo "Please enter the name of the forth group"
        sleep 3
        read n4
           if [ $n4 == "Dev" ] || [ $n4 == "QA" ] || [ $n4 == "UAT" ] || [ $n4 == "Prod" ]
           then
            groupadd $n4
            echo "$n4 group has been created"
            break
           fi
        done

fi



#CHECK THE GROUPS ARE CREATED
echo "Ok lets verify the groups were created"
sleep 3
echo "data loading..."
sleep 5
awk -F: '{print $1}' /etc/group | tail -5
#cat /etc/group | tail -5
sleep 5
echo "congrats $n1,$n2,$n3 and $n2 groups were created"
sleep 4
echo "let us proceed in creating user"
sleep 5
clear

# CREATION OF USERS

echo "enter the name of the first user"
sleep 1
read u1
if [ $u1 == "edmond" ] || [ $u1 == "joj" ] || [ $u1 == "josh" ]
then
    echo "creating user $u1..."
    sleep 1
    useradd $u1
    sleep 1
    echo "$u1 has been created"
    sleep 1
elif [ $u1 != "edmond" ] || [ $u1 != "joj" ] || [ $u1 != "josh" ]
then
    while [ $u1 != "edmond" ] || [ $u1 != "joj" ] || [ $u1 != "josh" ]
    do
    echo "you entered the wrong username"
    sleep 1
    echo "enter the name of first user"
    sleep 1
    read u1
        if [ $u1 == "edmond" ] || [ $u1 == "joj" ] || [ $u1 == "josh" ]
         then
          echo "creating user $u1..."
            sleep 1
            useradd $u1
            sleep 1
            echo "$u1 has been created"
            sleep 1
            break
        fi
    done
fi


echo "enter the name of the second user"
sleep 1
read u2

# Checking for duplicate
while [ $u2 == $u1 ]
do
echo " You entered an existing user account"
sleep 2
echo "Please enter a user account that has not been created"
sleep 2
read u2
done

if [ $u2 == "edmond" ] || [ $u2 == "joj" ] || [ $u2 == "josh" ]
then
    echo "creating user $u2..."
    sleep 1
    useradd $u2
    sleep 1
    echo "$u2 has been created"
    sleep 1
elif [ $u2 != "edmond" ] || [ $u1 != "joj" ] || [ $u1 != "josh" ]
then
    while [ $u2 != "edmond" ] || [ $u2 != "joj" ] || [ $u2 != "josh" ]
    do
    echo "you entered the wrong username"
    sleep 1
    echo "enter the name of second user"
    sleep 1
    read u2
        if [ $u2 == "edmond" ] || [ $u2 == "joj" ] || [ $u2 == "josh" ]
         then
          echo "creating user $u2..."
            sleep 1
            useradd $u2
            sleep 1
            echo "$u2 has been created"
            sleep 1
            break
        fi
    done
fi

echo "enter the name of the third user"
sleep 1
read u3

# Checking for duplicate
while [ $u3 == $u2 ] || [ $u3 == $u1 ]
do
echo " You entered an existing user account"
sleep 2
echo "Please enter a user account that has not been created"
sleep 2
read u3
done

if [ $u3 == "edmond" ] || [ $u3 == "joj" ] || [ $u3 == "josh" ]
then
    echo "creating user $u3..."
    sleep 1
    useradd $u3
    sleep 1
    echo "$u3 has been created"
    sleep 1
elif [ $u3 != "edmond" ] || [ $u3 != "joj" ] || [ $u3 != "josh" ]
then
    while [ $u3 != "edmond" ] || [ $u3 != "joj" ] || [ $u3 != "josh" ]
    do
    echo "you entered the wrong username"
    sleep 1
    echo "enter the name of third user"
    sleep 1
    read u3
        if [ $u3 == "edmond" ] || [ $u3 == "joj" ] || [ $u3 == "josh" ]
         then
          echo "creating user $u3..."
            sleep 2
            useradd $u3
            sleep 2
            echo "$u3 has been created"
            sleep 2
            break
        fi
    done
fi


#CHECK THE USER ARE CREATED
echo "Ok let verify the users have been created"
sleep 3
echo "data loading..."
sleep 5
awk -F: '{print $1}' /etc/passwd | tail -5   # using awk
#cat /etc/passwd | tail -5
sleep 10
echo "congrants $u1, $u2 and $u3  users were created"
sleep 4
clear
echo "Lets proceed to assign passwords to the users"
sleep 3
clear

#ASSIGN USER PASSWORD
echo -e "Please enter the name of the first user account you wish to assign password to.
Account available include \n$u1 \n$u2 \n$u3"
sleep 2
read u1


if [ $u1 == "edmond" ] || [ $u1 == "joj" ] || [ $u1 == "josh" ]
then
    echo "assiging password to $u1..."
    sleep 2
    passwd $u1
    sleep 2
else
    while [ $u1 != "edmond" ] || [ $u1 != "joj" ] || [ $u1 != "josh" ]
    do
    echo "you entered the wrong username"
    sleep 2

    echo "enter the name of first user"
    sleep 2
    read u1
        if [ $u1 == "edmond" ] || [ $u1 == "joj" ] || [ $u1 == "josh" ]
         then
            echo "assiging password to $u1..."
            sleep 2
            passwd $u1
            sleep 2
            break
        fi
    done
fi

echo "Please enter the name of the second user account you wish to assign password to "
sleep 2
read u2
if [ $u2 == "edmond" ] || [ $u2 == "joj" ] || [ $u2 == "josh" ]
then
    echo "assiging password to $u2..."
    sleep 2
    passwd $u2
    sleep 2
else
    while [ $u2 != "edmond" ] || [ $u2 != "joj" ] || [ $u2 != "josh" ]
    do
    echo "you entered the wrong username"
    sleep 2
    echo "Please the name of the second user account you wish to assign password to "
    sleep 2
    read u2
        if [ $u2 == "edmond" ] || [ $u2 == "joj" ] || [ $u2 == "josh" ]
         then
            echo "assiging password to $u2..."
            sleep 2
            passwd $u2
            sleep 2
            break
        fi
    done
fi

echo "Please the name of the third user account you wish to assign password to:"
sleep 2
read u3
if [ $u3 == "edmond" ] || [ $u3 == "joj" ] || [ $u3 == "josh" ]
then
    echo "assiging password to $u3..."
    sleep 2
    passwd $u3
    sleep 2
else
    while [ $u3 != "edmond" ] || [ $u3 != "joj" ] || [ $u3 != "josh" ]
    do
    echo "you entered the wrong username"
    
    sleep 1
    echo "Please the name of the third user account you wish to assign password to "
    sleep 2
    read u3
        if [ $u3 == "edmond" ] || [ $u3 == "joj" ] || [ $u3 == "josh" ]
         then
            echo "assiging password to $u3..."
            sleep 2
            passwd $u3
            sleep 2
            break
        fi
    done
fi
sleep 2

# DELETING USERS

echo "Now lets delete some users"
sleep 1
echo " You current have users $u1, $u2 and $u3 in the system "
sleep 1
echo "Enter the name of the user account you wish to delete"
sleep 1
echo "
1. $u1
2. $u2
3. $u3
"

read -p "Please select what user to delete {1 - 3 } " choice
sleep 2

until [ $choice == "1" ] || [ $choice == "2" ] || [ $choice == "3" ]
do
  echo "You entered and invalid option"
  sleep 2
  echo -e "Please select a valid option \n 1 - $u1 \n 2 - $u2 \n 3 - $u3 "

  read -p "Select an option " choice
  sleep 2
done


case $choice in
    1) echo "you selected user account $u1 to to be deleted"
        sleep 1
        echo "deleting $u1..."
        sleep 2
        userdel $u1
        echo "$u1 has been deleted"
        sleep 2
        ;;
    
    2) echo "you selected user account $u2 to to be deleted"
        sleep 1
        echo "deleting $u2..."
        sleep 2
        userdel $u2
        echo "$u2 has been deleted"
        sleep 2
        ;;

    3) echo "you selected user account $u3 to to be deleted"
        sleep 1
        echo "deleting $u3..."
        sleep 2
        userdel $u3
        echo "$u3 has been deleted"
        sleep 2
        ;;
    
esac
sleep 2
#Deleting Groups

# Delete group

echo "Now lets delete some groups"
sleep 1
echo " You current have users $n1, $n2, $n3 and $n4 in the system "
sleep 1
echo "Enter the name of the group you wish to delete"
sleep 1
echo "
1. $n1
2. $n2
3. $n3
4. $n4
"

read -p "Please select what user to delete {1 - 4 } " grp
sleep 2

until [ $grp == "1" ] || [ $grp == "2" ] || [ $grp == "3" ] || [ $grp == "4" ]
do
  echo "You entered and invalid option"
  sleep 2
  echo -e "Please select a valid option \n 1 - $n1 \n 2 - $n2 \n 3 - $n3  \n 4 - $n4 "

  read -p "Select an option " grp
  sleep 2
done


case $grp in
    1) echo "you selected user account $n1 to to be deleted"
        sleep 1
        echo "deleting $n1..."
        sleep 2
        groupdel $n1
        echo "$n1 has been deleted"
        sleep 2
        ;;
    
    2) echo "you selected user account $n2 to to be deleted"
        sleep 1
        echo "deleting $n2..."
        sleep 2
        groupdel $n2
        echo "$n2 has been deleted"
        sleep 2
        ;;

    3) echo "you selected user account $n3 to to be deleted"
        sleep 1
        echo "deleting $n3..."
        sleep 2
        groupdel $n3
        echo "$n3 has been deleted"
        sleep 2
        ;;
    
    4) echo "you selected user account $n4 to to be deleted"
        sleep 1
        echo "deleting $n4..."
        sleep 2
        groupdel $n4
        echo "$n4 has been deleted"
        sleep 2
        ;;

    
esac
clear

# Verify the group and user was deleted
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
clear

#ADDING USER TO WHEEL GROUP
echo "The list below shows the list of users"
sleep 2
awk -F: '{print $1,$2}' /etc/passwd | tail -3 | sed 's/x/ UserAccount/g'
sleep 2
echo "Printing the list os users in the sudo group"
echo "."
sleep 1
echo ".."
sleep 1
echo "..."
cat /etc/group | grep sudo
echo "Enter the name of the user you want added to the sudo group"
read s1
sleep 2

until [ $s == $u1 ] || [ $s == $u2 ] || [ $s == $u2 ]
do
echo "You entered an invalid user "
sleep 1
echo "Please enter a valid user from the list below "
awk -F: '{print $1}' /etc/passwd | tail -3 
read s1 
sleep
done

echo "adding $s1 to the sudo group..."
sleep 1
usermod -aG sudo $s1
echo "User $s1 has been added to sudo group"
sleep 2
echo "Printing the list os users in the sudo group"
echo "."
sleep 1
echo ".."
sleep 1
echo "..."
sleep 1
cat /etc/group | grep sudo


