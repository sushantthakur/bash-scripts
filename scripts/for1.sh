#!/bin/bash
################################ Header Begin ######################################################
#Descriptioan
#Created Date : Tue May 26 07:34:18 PDT 2020
#Version: 
#Modified by 
#Modified Date 
 
################################ Header End   ######################################################
 
################################ Code  Begin   ######################################################
takeinput() {
echo -e "Please enter the max number : "
read  -p "Enter : " n
declare -i num=$n
echo "You have entered $n max value"
for (( i=1;i<=n;i++ ))
do
echo $i
#i=i++
done
}

takeinput
 
 
### Main function starts
################################ Code  End     ######################################################
