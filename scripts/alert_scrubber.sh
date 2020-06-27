#!/bin/bash
################################ Header Begin ######################################################
#Descriptioan
#Created Date : Wed Jun 24 09:14:04 PDT 2020
#Version: 
#Modified by 
#Modified Date 
 
################################ Header End and Code Begins  ########################################
export Pattern="ORA-|TNS-" # Please add more patters by adding with | and pattern
export Line=2 # This will print next 10 lines of code after pattern matching 
export FileToBeScanned="alert.log"
DumpDir=/tmp
export Dt=$(date +'%d-%m-%y-%H-%M-%S')
export DaysTobeScanned=4
export Date=$(date -v -${DaysTobeScanned}d +"%a %b %d")

OutPutFile="${DumpDir}/Alert_output_${Dt}.dat"

#### Main function starts
################################ Code  End     ######################################################
 #awk -v P="$Pattern" -v L=$Line -v D="$Date" 'BEGIN{print " ###############  This is the begining of trimmed alert log #############";i=0;print "\n"}{ if ( $0 ~ D ||  i != 0 ) { if ( $0 ~ P || i <= L ) {print $0,"i="i;i++;k++ } else { print "Resetting counter";i=0}}} END {print P, "\n Total Lines printed:"k-1}' $FileToBeScanned > $OutPutFile
 awk -v P="$Pattern" -v L=$Line -v D="$Date" 'BEGIN{print " ###############  This is the begining of trimmed alert log #############";i=0;print "\n"}{ if ( $0 ~ D ||  i != 0 ) { if ( $0 ~ P || i <= L )  {print $0,"i="i;i++;k++ } else { print "Resetting counter";i=1}}} END {print "END " "\n Total Lines printed:"k-1}' $FileToBeScanned 
if [ $? -eq 0 ] ; then
	echo "Output File : $OutPutFile"
else
	echo "Error in scanning alert log"
fi
