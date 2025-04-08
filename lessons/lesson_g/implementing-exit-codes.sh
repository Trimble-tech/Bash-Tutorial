#!/bin/bash

#Set the argument passed by the tutorial as the text viewer
edits=$1

#open markdown
$edits $PWD/lessons/lesson_g/making-an-exit.md

#I will use a Yes-No prompt to ask if the user wants to view the example scripts.
while true; do
    read -r -p "echo 'Do you want to view an example script?' [Y/N] " yn
        case $yn in
        [Yy]* ) 
                echo "Okay, we will open this file to view:"
                
                #echo the locations of example file
                echo "The example scripts for arguments are here"
                echo $PWD/examples/root-only-exit-codes.sh
                
                #open the file
                $edits $PWD/examples/root-only-exit-codes.sh
                
                break;;

        [Nn]* )
                #echo the locations of example file
                echo "The example scripts for arguments are here if you need them:"
                echo $PWD/examples/root-only-exit-codes.sh
                #leave loop without opening the file
                break;;

        * ) echo 'Yes or No?' ;;
    esac
done

