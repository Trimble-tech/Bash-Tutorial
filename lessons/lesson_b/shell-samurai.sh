#!/bin/bash

#Teach basic commands to navigate a shell
#Create exersizes working with files in the sandbox folder
#See, move, create, delete, and merge files

#Set the argument passed by the tutorial as the text viewer
edits=$1

echo $edits "is your text viewer."

#Display the markdown
#PWD is the working path OF THE TUTORIAL
$edits $PWD/lessons/lesson_b/file-logic.md

#Start interactive section of the lesson
echo "Now we will put these commands to good use."
echo ''
echo "To get started, please follow along in your second terminal window."
read -p "Press enter to continue"

#Teach cd and ls
echo "To get started, you will need to enter the dojo."
echo "We will use the following command:"
#While we reference the folder as $PWD/sandbox inside the script, it will be presented differently to the user.
#As $PWD is the folder the tutorial is running inside of this will be different for each user.
#Additionally, to make this work I have to echo 'cd' and then the folder.
#Otherwise, the command 'echo cd $PWD/sandbox' will execute and fail
echo 'cd' $PWD/sandbox
echo ''
echo "Once in the folder, do this command to see what is there."
echo 'ls'
read -p "Press enter to continue"

#Make the user enter when they are ready
echo "Welcome to the dojo!"
echo ''
sleep 2

#Teach the echo command
echo "Now that you are here, feel free to say hello."
echo "The command 'echo' can be used to state text in the terminal, like this:"
#I put the full command in echo to display how it should be written. The spaces are for visual clarity.
echo "    echo 'Hello World!'    " 
echo ''
echo "Please note that double or single quote marks are around the text that is echoed."
echo ''
read -p "Press enter to continue"

#Teach the cat command
echo "If we want to display the output of a file in the terminal, one way is through the command 'cat'."
echo "We have two text documents in this folder:"
ls $PWD/sandbox
echo ''
echo "In your terminal window, try this command:"
echo "cat document1"
echo ''
echo 'If this file is viewed with another program, you will see the contents are the same as the output of the last command.'
read -p "Press enter to continue"

echo "I encourage you to try some of the more advanced commands as well."


#User might want to separately re-open dialog, so point them there.
echo "If you need to review the commands we discussed so far, they can be read from here."

echo $PWD/file-logic.md
echo $PWD/advanced-commands.md
