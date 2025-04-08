#!/bin/bash
#Short lesson showing how to combine commands together

echo 'Hello!' && echo 'Now that you have learned some commands and how to make a script, we can combine commands together.'
echo 'Sometimes it is necessary to run a command in the background while you do other things.'
echo 'We will discuss using the & symbol and managing processes.'
read -p "Press enter to continue"

#Set the argument passed by the tutorial as the text viewer
edits=$1

#Combine commands with &&
$edits $PWD/lessons/lesson_d/ampersand.md

sleep 1
echo 'Now we will go into depth about background processes.'
read -p "Press enter to continue"
#Demonstrate background commands
$edits $PWD/lessons/lesson_d/in-the-background.md

#Show command & combo
sleep 1
echo 'The last element for this lesson is starting a background process and seeing the output on your current window.'
read -p "Press enter to continue"
$edits $PWD'/lessons/lesson_d/command-&-combo.md'
