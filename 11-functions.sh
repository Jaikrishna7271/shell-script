#!/bin/bash


USERID=$(id -u)

VALIDATE(){
  echo "exit status: $1"
  echo "wt r u doing: $2"
}

if [ $USERID -ne 0 ]
then 
 echo "please run this script with root access"
 exit 1
else
 echo "you are a super user"
fi

dnf install mysql -y
VALIDATE $? "INSTALLING MYSQL"

dnf install git -y
VALIDATE $? "INSTALLING GIT"


echo "is script proceeding?"