#!/bin/bash
################################ Header Begin ######################################################
#Descriptioan
#Created Date : Tue Jun  2 08:44:06 PDT 2020
#Version: 
#Modified by 
#Modified Date 
 
################################ Header End and Code Begins  ########################################
DirLoc=/Users/sushant/bash
FileName=${DirLoc}/fie.txt
echo $FileName

if [ -d $DirLoc ] 
then
	echo "Directory exists"
fi
if [ -f $FileName ]
then
	echo "-f exists "
fi
if [ -r $FileName ]
then
	echo "-r read mode"
fi
if [ -s $FileName ]
then
	echo "-s not empty "
fi
if [ -x $FileName ]
then
	echo "-x "
else
	echo "not X"
fi
if [ -w $FileName ]
then
	echo "-w "
else
	echo "everything else"
fi

if [ -z "a" ]
then
	echo "-z => not empty "
else
	echo "-z => empty"
fi

if [ -n "a" ]
then
	echo "-n => not empty "
else
	echo "-n=> empty"
fi

 
#### Main function starts
################################ Code  End     ######################################################
