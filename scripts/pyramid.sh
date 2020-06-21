#!/bin/bash
################################ Header Begin ######################################################
#Descriptioan : This program is to build pyramid
#Created Date : Thu May 28 08:44:59 PDT 2020
#Version: 
#Modified by 
#Modified Date 
 
################################ Header End and Code Begins  ########################################
pyramid() {
Num=$(($1 * 2 ))
Center=$((Num / 2))
for ((i=0; i<=$Center; i++))
do
	for ((j=0; j<=$Num; j++ ))
		do
			if [ $j -lt $((Center -i)) ] || [ $j -gt $((Center +i)) ] 
			then
				echo -ne " "
			else
				echo -ne "*"
			fi	
		done
			echo ""
done
}



 
 
#### Main function starts
read -p "Enter even number: " num
pyramid $num
################################ Code  End     ######################################################
