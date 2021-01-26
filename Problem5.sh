#!/bin/bash

if [ $# -eq 0 ]
then	
echo "Please give an argument about filename and recursive func."

elif [ $# -eq 1 ]
then
	mkdir -p ./copied
	find . -type f -name "*$1*" -exec cp {} /home/copied/ \; 
	#cp -R ~/dir/*/*  ~/copied/


	if [ $1 == "-R" -or $1 == "-r" ]
	test
	then
	echo "Please give file name"
	fi

else 
echo "bos"
fi



