#!/bin/sh

Name[0]="Padma"
Name[1]="Vijay"
Name[2]="Akshay"

echo "First: ${Name[0]}"
echo "Second: ${Name[1]}"

echo "All: ${Name[*]}"
echo "All: ${Name[@]}"
