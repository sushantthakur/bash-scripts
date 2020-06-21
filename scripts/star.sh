#!/bin/bash
################################ Header Begin ######################################################
#Descriptioan
#Created Date : Wed May 27 08:12:27 PDT 2020
#Version: 
#Modified by 
#Modified Date 
 
################################ Header End and Code Begins  ########################################
 
printstar() {
Num=$1
Center=$((Num / 2 ))
#echo "Center : $Center"
echo "print with input";print
for (( i=0; i<=$Num; i++))
do
		for (( j=0; j <=$Num; j++ ))
			do
				if [ $j -eq $((Center - i)) ] 
				then
					echo -ne "*"
				elif [ $j -eq $((Center + i)) ]
				then
					echo -ne "*"
				else	
					echo -ne "  "
				fi
			done
	echo -e "\n"
done
}

input() {

if [ "$1" = "" ]
then
read -p "Enter the even number to display * : " num
#echo "print with input";print
if [ $((num % 2)) -ne 0 ] 
then
	echo "Number is not even"
else
	printstar $num
fi
else
printstar $1
fi
}

print() {
echo "Print bash_source0 ${BASH_SOURCE[0]}"
echo "bash source 1 ${BASH_SOURCE[1]}"
echo "0:  $0"
}
 
#### Main function starts
input $@
################################ Code  End     ######################################################
