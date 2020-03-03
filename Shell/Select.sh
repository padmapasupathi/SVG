#!/bin/ksh

select DRINK in tea coffee water juice apple all none
do
 case $DRINK in
  tea|coffee|water|all)
   echo "Go to canteen"
   ;;
  juice|apple)
   echo "Available at home"
   ;;
  none)
   break
   ;;
  *)
   echo "Error!"
   ;;
 esac
done
