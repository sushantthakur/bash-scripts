#!/bin/bash
# This script needs to called for creating new bash script  with default template
filedir=$(pwd)
#ls -ltr $filedir|awk '{print $NF}'|grep -Fx "$temp"
check_file() {
ls -ltr $filedir|grep "${1}.sh"
if [ $# -ne  1 ]
then
	echo -e "Invalid arguments. You provided $# arguments "
	prompt_filename $1
else 
	create_file $1
fi
}

prompt_filename() {
#echo "Im in prompt file"
echo -e "Please provide the filename or type A to abort "
read filename
	if [ "$filename" == "A" ]
	then
		echo "Aborting !"
		exit 1;
	elif [ -z $filename ]
	then
		prompt_filename	
	else 
		create_file $filename	
  fi		
		
	#	create_file $filename
	
}
create_file() {
#echo "Im in create file"
#echo $1
filen=`echo "${filedir}/${1}.sh"`
check_file_ext $filen
}

file_template() {
#echo "Im in file template"
filen=$1
echo "#!/bin/bash" >$filen
echo "################################ Header Begin ######################################################" >>$filen
echo "#Descriptioa"n >>$filen
echo "#Created Date : `date`" >>$filen
echo "#Version: " >>$filen
echo "#Modified by " >>$filen
echo "#Modified Date ">>$filen
echo " " >>$filen

echo "################################ Header End and Code Begins  ########################################" >>$filen
echo " " >>$filen
#echo "################################ Code  Begin   ######################################################" >>$filen
echo " " >>$filen
echo " " >>$filen
echo "#### Main function starts" >>$filen
chmod +x $filen

echo "################################ Code  End     ######################################################" >>$filen
echo "file $filen successfully created "
}

check_file_ext() {
#echo "Im in check file extension:"
echo "$1"|grep '\.' >/dev/null
if [ $? -eq 0 ] 
then
#	echo "File extension exists"
  localfile=`echo $1 |awk 'BEGIN {FS="."}{print $1}'`
  localfileext=`echo $1 |awk 'BEGIN {FS="."}{print $2}'`
#	echo "localfile:$localfile"
#	echo "localfile extention :$localfileext"
	filename=`echo "${localfile}.sh"`
else
#	echo "File extension doesn't exists"
	filename=`echo "${localfile}.sh"`
	#filename=`echo "${1}.sh"`
fi	
#	echo "File name before returning $filename"
	tempfilename=`echo $filename|awk 'BEGIN{FS="/"}{print $NF}'`
	ls -ltr $filedir|awk '{print $NF}'|grep -Fx "$tempfilename"
		if [ $? -eq 0 ]
		then
			echo "File with name $filename exists .Please provide another name"
			prompt_filename
    else
			file_template $filename
    fi

#	file_template $filename
}
#### main
check_file $@
