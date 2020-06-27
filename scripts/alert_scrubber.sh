#!/bin/bash
################################ Header Begin ######################################################
#Descriptioan
#Created Date : Wed Jun 24 09:14:04 PDT 2020
#Version: 
#Modified by 
#Modified Date 
 
################################ Header End and Code Begins  ########################################
export Pattern="ORA-|TNS-" # Please add more patters by adding with | and pattern
export Line=100 # This will print next 10 lines of code after pattern matching 
export FileToBeScanned="alert.log"
DumpDir=/tmp
export Dt=$(date +'%d-%m-%y-%H-%M-%S')
export DaysTobeScanned=3
export Date=$(date -v -${DaysTobeScanned}d +"%a %b %d")

OutPutFile="${DumpDir}/Alert_output_${Dt}.dat"

echo $DumpDir 
echo $OutPutFile 
echo $Date 
#### Main function starts
################################ Code  End     ######################################################
 awk -v Pat="$Pattern" -v L=$Line -v D="$Date" 'BEGIN{print "This is the begining of code";i=0}{ if ( $0 ~ D ||  i != 0 ) { if ( $0 ~ P && i <= L ) {print $0;i++ }}} END {print "Total Lines printed:"i-1}' $FileToBeScanned > $OutPutFile
