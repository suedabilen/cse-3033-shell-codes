#! /bin/bash

#Edanur Öztürk-150117007
#Feyza Nur BUlgurcu-150117033
#Sueda Bilen-150117044 
 
#Question3

pathname="$1" #its optional for users to enter arguments 

if [[ -z $pathname ]] #if input is empty
then
    oldestFile="$(ls -lt | grep -v '^d' | tail -1 | awk '{printf $NF}')" #finding the oldest file in the current directory.
    
   echo -e "Do you want to delete $oldestFile? (y/n):\c" 
   read user_input
   
     if [[ "$user_input" == "y" ]] #if users input is yes then delete the oldest file.
     then
            rm "$oldestFile" 
            echo "1 file deleted."
     fi
fi

if [[ -d $pathname ]] #if user give the pathname and it is valid
then
    cd "$pathname" #change the current directory to given pathname. 
     
    oldestFile="$(ls -lt | grep -v '^d' | tail -1 | awk '{printf $NF}')" #finding the oldest file in the current directory.
   
    echo -e "Do you want to delete $oldestFile? (y/n):\c"
    read user_input

        if [[ "$user_input" == "y" ]]
        then
             rm "$oldestFile" #delete the oldest file in the current directory
             echo "1 file deleted."
        fi    
fi    


  
