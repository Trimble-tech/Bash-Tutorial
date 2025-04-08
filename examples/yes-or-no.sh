#!/bin/bash

#Yes = y or Y, No = n or N.
while true; do
    read -r -p "echo 'Do you like Linux?' [Y/N] " yn
        case $yn in
        [Yy]* ) 
                echo "Great!"
                break;;

        [Nn]* ) echo 'I think you should be learning PowerShell instead...'
                echo ''
                #exit completely
                exit;;

        * ) echo 'Yes or No?' ;;
    esac
done
#While loop ends

#Do some things after the loop, this is not needed for the loop itself.
echo "The script is:" $0
echo "The current folder is:" ${PWD}
echo "You are:" ${USER}
echo ''