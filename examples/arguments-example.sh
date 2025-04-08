#!/bin/bash
#This is an example of arguments and positional parameters.

#Help/options functions
Help()
{
    echo "This script displays the number of lines in a file."
    echo "If a file name is supplied, include the full path."
    echo "Syntax: scriptTemplate [-r|-h|-v]"
    echo "options:"
    echo "r [filename] Run the main script on a file."
    echo "h     Print this Help."
    echo "v     Print software version and exit."
    echo ""
}

#Use a while loop but with arguments before the script.
#Instead of asking the option with "read" command we demand it before the script runs.
#Note that the case letters do not have * after them since we need/want to be specific.

#Our case is called options, but it can be called almost anything that is only one word and doesn't appear elsewhere
while getopts ":hrv" options; do
    case $options in
        h) # display Help
            Help
            exit;;

        v) #display version
            echo "Version 1.0"
            exit;;

        r) #Run the script below this loop
            echo 'Running script.'
            break;;

        ##This part handles invalid options
        \?) #Catch all other options/statements
            echo "Error: Invalid option."
            echo "Consult help with: 'arguments-example.sh -h'"
            exit;;
        esac
done

#echo name of script
echo "$0"
#echo what is entered after file (etc. filename.sh help)
echo "Option selected:" "$1"

#Use $2 for reading the file name
echo "file selected" $2

#Define the variable nlines to handle the command for reading lines
#We then feed the $2 parameter into this command.
nlines=$(wc -l < $2)

#Display the number of lines in this file
#Note that I put {} around nlines to keep it in one piece. Not strictly necessary but a good idea for longer variables.
echo "Number of lines in file:" ${nlines}