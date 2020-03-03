#!/bin/sh

a=2
b=2
add=`expr $a + $b`
echo "Add: $add"
sub=`expr $a - $b`
echo "Sub: $sub"
mul=`expr $a \* $b`
echo "Mul: $mul"
div=`expr $a / $b`
echo "Div: $div"
mod=`expr $a % $b`
echo "Mod: $mod"
asmt=$a
echo "Assignment value: $asmt"
