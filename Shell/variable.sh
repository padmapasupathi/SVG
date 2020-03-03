#!/bin/sh
echo "what is your name?"
read NAME
echo "Hello $NAME!"
#if a variable is inputed as readonly, its value cannot be changed. But it doesnt work
echo "what is your age?"
#readonly AGE
read AGE
echo "You look like 18 but its unbeleivable that you are $AGE"
#AGE = AGE + 1
#echo "Next year you will be $AGE"
unset AGE
echo $AGE
