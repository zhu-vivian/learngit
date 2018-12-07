#!/usr/bin/bash

mytime=`date +%Y-%m-%d_%T`

if [[ $# < 1 ]] ; then
	echo "No data file!"
	exit
fi

dos2unix $1
sed -i '1d' $1
echo ${mytime} >> $1

#if [ $? != 0 ]; then
#	echo "dos2unix $1 is error!"
#	exit
#fi
