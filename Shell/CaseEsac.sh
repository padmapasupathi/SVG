#!/bin/sh

echo "Enter your name"
read Name

case $Name in
 "Padma") echo "Hi Padma"
 ;;
 "Vijay") echo "Welcome Vijay"
 ;;
 *) echo "Am sorry you are not in Database"
esac
