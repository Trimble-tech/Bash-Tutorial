#!/bin/bash

echo "Arguments are a way to accept input into a script before running it."
echo "With arguments, you have different options on how the script can run."
echo "This is an alternative to creating prompts during the script."
echo ''

#Set the argument passed by the tutorial as the text viewer
edits=$1

#Open the markdown
$edits $PWD/lessons/lesson_f/arguments.md

echo "To view examples of this concept, I encourage you to view and/or run the following:"
echo $PWD/examples/yes-or-no.sh
echo $PWD/lesson_f/examples/arguments-examples.sh/

read -p "Press enter to continue"