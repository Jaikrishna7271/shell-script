#!/bin/bash

COURSE="DEVOPS FROM CURRENT USER SCRIPT"

echo "before calling other script, course: $COURSE"
echo "process id of current script: $$"

#./16-otherscript.sh
source ./16-otherscript.sh

echo "after calling other script, course: $COURSE"