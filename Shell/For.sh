#!/bin/sh

arr=(0,1,2,3,4,5)
echo "array values: ${arr[@]}"

for i in ${arr[*]}
do
 echo $i
done

