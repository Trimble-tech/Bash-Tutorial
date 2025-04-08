#!/bin/bash

#Show how to create and use variables within a bash script

echo 'Welcome to our lesson in variables' $USER'.'
echo ''

#Set the argument passed by the tutorial as the text viewer
edits=$1

#Show the markdown
$edits $PWD/lessons/lesson_e/discussing-variables.md