#!/bin/bash
################################ Header Begin ######################################################
#Descriptioan
#Created Date : Fri May 29 14:04:21 PDT 2020
#Version: 
#Modified by 
#Modified Date 
 
################################ Header End and Code Begins  ########################################
RunDir=`pwd`
echo "RunDir : $RunDir"

if [ "${BASH_SOURCE[0]}" == "" ] 
then
	echo "BashSource is empty so now using $0"
	ProgPath="${dirname $0}"
else
	echo "setting progapth to bashsource:$ProgPath"
	ProgPath="${BASH_SOURCE[0]%/*}"
fi

echo "Progpath: $ProgPath" 
 
### #Main function starts
################################ Code  End     ######################################################
