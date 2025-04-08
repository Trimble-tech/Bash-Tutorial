#! /bin/bash

#Guide through creating a first script
#Make this something the user can grow through the rest of the tutorial (if possible)

echo 'Now we will get started building your first script.'

#Set the argument passed by the tutorial as the text viewer
edits=$1

#Go to the sandbox so the user can play
echo 'If you are not already there, it is encouraged to open the "sandbox" folder in another terminal:'
echo 'This is inside the main folder for the tutorial, i.e. Bash-Tutorial/sandbox '
read -p "Press enter to continue"

#Show markdown files
$edits $PWD/lessons/lesson_c/creating-a-file.md
$edits $PWD/lessons/lesson_c/running-your-script.md
