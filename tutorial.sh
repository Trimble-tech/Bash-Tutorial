#!/bin/bash

#Introduction to BASH
#LILUG April 2025

#This is a comment

#I use 'echo' to say things inside of the script.
#Here I send 3 strings into the echo command, with the middle calling the username by a variable.
#This variable is built into Bash and is discussed more in lesson_e.
echo 'Welcome to the tutorial' $USER'!'

#Here is a 'while' loop. The loop goes from here until 'done'.
#'read' with these options creates a dialog and listens for a yes or no.
#Yes = y or Y, No = n or N.
while true; do
    read -r -p "echo 'Are you ready to begin?' [Y/N] " yn
        case $yn in
        [Yy]* ) 
                echo "Okay, let's go!"
                break;;

        [Nn]* ) echo 'No problem, we can come back to this later.'
                echo 'If you want to view the scripts or files on your own, they can be found here:'
                echo $PWD
                echo ''
                #exit the tutorial completely
                exit;;

                #If something starting with something other than y or n is entered loop the script and ask politely for something correct.
                #Technically yolo and noob are correct entries... I see no problem with this. Remove the * if you do.
        * ) echo 'Yes or No?' ;;
    esac
done
#While loop ends

echo 'This tutorial presents several text documents along the way.'
echo 'We will see which common programs are available to use.'

#Run a script to detect some common text editors and return to this one
$PWD/scripts/text-editor-check.sh

#Dialog to ask which editor is used
while true; do
    read -r -p "echo 'Which program will you like to use to view the documents?' [vim/nano/less/more/showit.sh] " yn
        case $yn in
        #vim
        [Vv]* ) 
                editor=vim
                echo $editor
                break;;
        #nano
        [Nn]* ) 
                editor=nano
                echo $editor
                break;;
        #less
        [Ll]* )
                editor=less
                echo $editor
                break;;
        #more   
        [Mm]* )
                editor=more
                echo $editor
                break;;
        #showit.sh
        [Ss]* )
                editor=$PWD/scripts/showit.sh
                echo $editor
                break;;

        #Give the user another chance to redeem themselves...
        * ) $PWD/scripts/text-editor-check.sh ;;
    esac
done

#Leave case dialog and proceed with the program
#'editor' is the text editor the user picked
#'$editor' is how we will call the preferred one for the rest of this tutorial 
                
echo 'The documents will be opened automatically by this program:'
echo $editor
                
#I can make another yes/no dialog inside this one to let users reconsider.
    #If I do this, it will allow users to select another program if they typed wrong.
    #However, I will not do that. We are still really early in the script.
    #We will strike a balance by making it quicker/easier for the 90% of people who type right.
    #The other 10% should not be too annoyed to re-run at this stage.
    #Compromise to please the majority when possible.
    echo 'If you want to change programs, please exit (Ctrl C) and re-run tutorial.sh again.'
    read -p "Press enter to continue"

$PWD/scripts/lesson-list.sh

#For this while loop, I choose to name the case variable for the dialog strt.
#This is not necessary in this case but having unique variables is a good idea in the event code combines together at a later point.
#I picked strt as it is unlikely to be typed anywhere else in this project, and short for "start".
while true; do
    read -r -p "echo 'Which lesson should we start with?' [S/A/B/C/D/E/F/G] " strt
        case $strt in

        [Ss]* ) 
                #Lesson A
                $editor $PWD/lessons/lesson_a/welcome.md
                #Lesson B
                $PWD/lessons/lesson_b/shell-samurai.sh $editor
                #Lesson C
                $PWD/lessons/lesson_c/build-a-script.sh $editor
                #Lesson D
                $PWD/lessons/lesson_d/combine-commands.sh $editor
                #Lesson E
                $PWD/lessons/lesson_e/variables.sh $editor
                #Lesson F
                $PWD/lessons/lesson_f/introducing-arguments.sh $editor
                #Lesson G
                $PWD/lessons/lesson_g/implementing-exit-codes.sh $editor
                break;;

        [Aa]* )
                #Lesson A
                $editor $PWD/lessons/lesson_a/welcome.md
                break;;

        [Bb]* )
                #Lesson B
                $PWD/lessons/lesson_b/shell-samurai.sh $editor
                break;;

        [Cc]* )
                #Lesson C
                $PWD/lessons/lesson_c/build-a-script.sh $editor
                break;;

        [Dd]* )
                #Lesson D
                $PWD/lessons/lesson_d/combine-commands.sh $editor
                break;;

        [Ee]* )
                #Lesson E
                $PWD/lessons/lesson_e/variables.sh $editor
                break;;

        [Ff]* )
                #Lesson F
                $PWD/lessons/lesson_f/introducing-arguments.sh $editor
                break;;

        [Gg]* )
                #Lesson G
                $PWD/lessons/lesson_g/implementing-exit-codes.sh $editor
                break;;

        * ) $PWD/scripts/lesson-list.sh ;;
    esac
done

#This ends the tutorial script and exits

echo "I hope you have enjoyed this tutorial."
echo ''
echo "I enjoyed making it,"
echo "and hope you learned as much as I did with this script."
echo "Check my Github profile for more projects:"
echo ''
echo "https://github.com/Trimble-tech"
echo ''
echo "Additionally, check out the Long Island Linux User Group:"
echo "https://lilug.org/"
sleep 5
exit