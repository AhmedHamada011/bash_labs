#!/bin/bash
## We can use bc to perform floating point operations in bash
## by echoing the expression and piping it to bc
## echo num1 op num2 | bc
## examples:
## sum
## echo 1.2+ 3.2 | bc
echo "sum of 1.2 + 3.2 = " $(echo 1.2 + 3.2 | bc)
## subtract
## echo 5.3 - 3.2 | bc
echo "subtract of 5.3 and 3.2 = " $(echo 5.3 - 3.2 | bc)
## division
## echo 5.0 / 2.5 | bc
echo "division of 5.0 and 2.5 = " $(echo 5.0 / 2.5 | bc)
## multiply
## echo 5.0 \* 2.5 | bc
echo "multiplication of 5.0 and 2.5 = " $(echo 5.0 \* 2.5 | bc)







