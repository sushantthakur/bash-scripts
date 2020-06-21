#!/bin/bash
################################ Header Begin ######################################################
#Descriptioan
#Created Date : Sun Jun  7 12:51:23 PDT 2020
#Version: 
#Modified by 
#Modified Date 
 
################################ Header End and Code Begins  ########################################

echo "Basebame of file = $(basename $0) "
echo "dirrname of file = $(dirname $0) "
echo $$ > /tmp/$(basename $0).pid
for i in $(ls)
do
	echo $i
done

 
 
#### Main function starts
################################ Code  End     ######################################################
