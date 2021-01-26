#!/bin/bash
#150117007 150117033 150117044
#Edanur Öztürk-Feyza Nur Bulgurcu-Sueda Bilen
#program that iterates letters by given numbers
letter=$1
number=$2

lenNumber=${#number}
lenLetter=${#letter}

i=0
#if length of number and letter is equal
#or length of number eq to 1 
if [ $lenNumber -eq $lenLetter ] || [ $lenNumber -eq 1 ]
then
	#iterate through letter char by char
	for ((i=0; i<$lenLetter; i++))
	do
	#change every char by shifting acc to numbers
	if [ $lenNumber -eq $lenLetter ] 
	then
		shiftVal=${number:$i:1}
		unicode=$(printf %d \'${letter:$i:1})
		index=`expr $unicode - 97`
		newIndex=$(( ($index+$shiftVal) % 26))
		newUni=$(($newIndex+97))
		newChar=$(printf "\\$(printf "%03o" $newUni)")
		echo -n "$newChar"
	fi
	#change every char by shifting acc to 1 number
	if [ $lenNumber -eq 1 ]
	then
	 	shiftVal=${number:0:1}
		unicode=$(printf %d \'${letter:$i:1})
		index=`expr $unicode - 97`
		newIndex=$(( ($index+$shiftVal) % 26))
		newUni=$(($newIndex+97))
		newChar=$(printf "\\$(printf "%03o" $newUni)")
		echo -n "$newChar"
	fi 
	done
	echo 
#if our input is not w true form
else 
echo "Please give true form of input!"
exit 1
fi
