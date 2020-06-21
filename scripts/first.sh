#!/bin/bash
# Comment 
#This is first sample program from python condition


check()
{	
	
	declare -i age
	age=$1

		if  [ $age -eq 18 ]
		then
			echo "You have just qualified for Driving ID"
		elif [ $age -lt 18 ]
		then
			echo "Sorry you are not qualified .You have to wait $((18 - $age)) more years";
		elif [ $age -gt 18 ]
		then
			echo "You are already qualified as your age is $Age which is more than allowed Age of 18 years";
		else 
			echo "Invalid Entry !";
		fi
		
}

#declare -i age 
read -p "Enter the age to check elegibility : " Age

if [[ $Age == \d+ ]] 
then 
	echo "Integer"
else
	echo "Not "
fi
check Age



