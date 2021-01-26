#!/bin/bash -f

#150117007-150117033-150117044
#Edanur Öztürk-Feyza Nur Bulgurcu-Sueda Bilen
#Problem4

#loop for menu choice. stays in this loop until it gets exit exit.
while :
do
	clear
	echo
	echo " Please select an option: "
	echo 
	echo "1. Create histograms"
	echo "2. Encryption"
	echo "3. Delete oldest"
	echo "4. Convert Numbers"
	echo "5. Organized files"
	echo "6. Exit"
	echo
	#read options and execute them with their properties.
	#Press a key for returning or you are stuck at there warning.
	read -p "Enter your option [1-6]: " choose
	case $choose in
		1) read -p "Enter a txt file: " op1; ./Problem1.sh $op1 ; echo "Press a key for returning to the main menu." ; read ;;
		2) read -p "Enter String and number: " op1 op2 ; ./Problem2.sh $op1 $op2 ; echo "Press a key for returning to the main menu  ." ; read ;;
		3) read -p "Enter operations: " op1 op2 op3; ./Problem3.sh $op1 $op2 $op3 ; echo "Press a key for returning to the main menu ." ; read ;;
		4) read -p "txt file: " op1; ./Problem4.sh $op1 ; echo "Press a key for returning to the main menu ." ; read ;;
		5) read -p "Enter a Path and/or Option: " op1 op2; ./Problem5.sh $op1 $op2; echo "Press a key for returning to the main menu ." ; read ;;
		6) exit 0 ;;
		#if user enters a number that doesnt assosiciate with our options give a warning.
		*) echo "Wrong Choice of Option !!! Please select choice 1,2,3,4,5 or 6";
	esac
done
