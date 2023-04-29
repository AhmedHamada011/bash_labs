#!/bin/bash
## script to perform floating point mathematical operations
## Parameters
##	1st parameter: 1st number
##	2nd parameter: 2nd number
## Exit codes
##	0: Success
##	1: Not enough parameters
##	2: Division by zero
##	3: NUM1 is not a number
##	4: NUM2 is not a number

##Check for parameters
[ ${#} -ne 2 ]  && exit 1

## Check division by zero
[ ${2} == 0 ]  || [ ${2} == "0.0" ]  && exit 2

##Assign values to variables
NUM1=${1}
NUM2=${2}


## Check for floating point values
echo "${NUM1}" | grep -Eq '^[-+]?[0-9]+\.?[0-9]*$' || exit 3
echo "${NUM2}" | grep -Eq '^[-+]?[0-9]+\.?[0-9]*$' || exit 4


## sum
echo "sum of ${NUM1} + ${NUM2} = " $(echo ${NUM1} + ${NUM2} | bc)

## subtract
echo "subtract of ${NUM1} and ${NUM2} = " $(echo ${NUM1} - ${NUM2} | bc)

## division
echo "division of ${NUM1} and ${NUM2} = " $(echo ${NUM1} / ${NUM2} | bc)

## multiply
echo "multiplication of ${NUM1} and ${NUM2} = " $(echo ${NUM1} \* ${NUM2} | bc)



