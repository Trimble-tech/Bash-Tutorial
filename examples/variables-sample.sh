#!/bin/bash

#Echo some built in variables

echo "Hello" $USER!
echo ''
echo "This is some information about your system:"
echo "Hostname:" $HOSTNAME
echo "CPU Type:" $HOSTTYPE
echo "Shell:" $SHELL 
echo "Your home folder is:" $HOME
echo "Your current folder is:" $PWD

#Show a yes/no dialog as this is a good use of variables
#This loop asks for anything starting with y or n and then feeds it to the variable $yn.
#The $yn variable then works with the case function to carry out the command(s) in the selected choice.
while true; do
    read -r -p "echo 'Are you enjoying the tutorial?' [Y/N] " yn
        case $yn in
        [Yy]* ) 
                echo "Great! I am glad that you like it."
                break;;

        [Nn]* ) echo 'No problem, I hope you learn well from it.'
                exit;;

                #If something starting with something other than y or n is entered loop the script and ask politely for something correct.
                #Technically yolo and noob are correct entries... I see no problem with this. Remove the * if you do.
        * ) echo 'Yes or No?' ;;
    esac
done

#exit completely
exit