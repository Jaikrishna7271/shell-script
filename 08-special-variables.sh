#!/bin/bash

#IMP QUESTIONS FOR INTERVIEW
echo "all variables: $@"
echo "no of variables passed: $#"
echo "script name: $0"
echo "prsent working directory: $PWD"
echo "home directory of current user: $HOME"
echo "which user is running this script: $USER"
echo "hostname: $HOSTNAME"
echo "process id of current script: $$"
sleep 60 &
echo "process id of last background command: $!"