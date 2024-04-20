#!/bin/bash


USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$($0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

VALIDATE(){
  if [ $1 -ne 0 ]
  then
       echo "$2...failure"
       exit 1
    else
       echo "$2...success"
    fi
}

if [ $USERID -ne 0 ]
then 
 echo "please run this script with root access"
 exit 1
else
 echo "you are a super user"
fi

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "INSTALLING MYSQL"

dnf install git -y &>>$LOGFILE
VALIDATE $? "INSTALLING GIT"

