#!/bin/bash

movies=("rrr" "gaami" "premalu")
#size of array is 3.
#indexes are 0,1,2
#list always starts with 0.
echo "my first movie is ${movies[0]}"
echo "my first movie is ${movies[@]}"
# @ means all the arrays in the list