#!/bin/sh
echo $$ ##prints the process id
echo $0 ##prints the filename of current script
echo $n ##arguments with which script is invoked
echo $? ##prints exit status of previous command

echo "File name: $0" ## prints the first argument
echo "First parameter: $1" ##prints second argument
echo "Second parameter: $2" ##prints third argument
echo "Quoted values: $@" ##prints all arguments in quotes
echo "Quoted values: $*" ##prints all arguments in separate quotes
echo "Total number of parameters passed: $#" ##number of parameters passed during script execution

#Difference between #@ and #*
for TOKEN in $*
do
 echo $TOKEN
done

for TT in $@
do
 echo $TT
done
