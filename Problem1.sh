#!/bin/bash
#150117007-150117033-150117044
#Edanur Öztürk-Feyza Nur Bulgurcu-Sueda Bilen
#Problem 1 

#take filename from user
filename=$1
while read line; do
	#is number btw 0-9
        if [ $line -ge 10 ]
        then
        echo "Wrong input:Please give numbers btw 0-9"
        break
        else
        	#counting occurrences of each number
                for i in 0 1 2 3 4 5 6 7 8 9
                        do
                        if [ $line -eq $i ]
                        then
                        ((number[$line]++))
                        fi
                        done
        fi   
done < $filename


for((i=0; i<10; i++))
do
	if (( number[$i] == 0 ))
	then 
	echo -n "$i "
	echo
	else
	echo -n "$i " 
	for((j=1; j <= ((number[$i])); j++)) #for loop of star pattern
	do
	echo -n "*" 
	done
	echo #to next line
	fi
done
  
