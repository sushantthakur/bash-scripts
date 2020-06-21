#!/bin/bash
################################ Header Begin ######################################################
#Descriptioan
#Created Date : Sat Jun  6 08:17:59 PDT 2020
#Version: 
#Modified by 
#Modified Date 
 
################################ Header End and Code Begins  ########################################
cat /dev/null > f1.txt
cat "f1.txt"
while read -r i
do
	echo $i|grep "^$" >>/dev/null
	if [ $? -eq 0 ] 
	then
		continue
	fi
	echo  "$i"|grep "\*\*\*" >/dev/null
	if [ $? -eq 0 ]
	then
			echo "" >>f1.txt
 	else
		echo  "$i" |tr '\n' ' ' >>f1.txt
		echo -ne " " >>f1.txt
	fi		
done< file.txt
echo "Output File generated :f1.txt"
 
#### Main function starts
################################ Code  End     ######################################################
