#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 10 ]
then 
  echo "given no $NUMBER is greater than 10"
else
  echo "given no $NUMBER is less than 10"
fi