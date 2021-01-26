#! /bin/bash
#150117007-150117033-150117044
#Edanur Öztürk-Feyza Nur Bulgurcu-Sueda Bilen
#Problem4

#take filename from user
filename=$1

#if file is not found state an error and exit from the program.
if [ ! -f "$1" ]; then
    echo "$1 does not exist. Please enter different txt file."
    exit 1
    #else go into the while where you read the file.txt line by line
    else
	while read line; 
	do
		#change the following numbers to their text equivalents by using sed.
		echo $line | sed 's/0/zero/g ; 
		s/1/one/g ; 
		s/2/two/g ;
		s/3/three/g ; 
		s/4/four/g ; 
		s/5/five/g ;
		s/6/six/g;
		s/7/seven/g;
		s/8/eight/g;
		s/9/nine/g'
	#When lines are finished exit from the while loop and then finish if-else statement
	done < $1
fi
