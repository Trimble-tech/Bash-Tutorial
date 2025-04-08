#!/bin/bash

#The 'which' command shows the location of a certain program.
#If which returns nothing then the command isn't installed.

echo 'Checking for text editors:' && echo ''
    
    echo 'vim (popular)'
        which vim | { echo 'Program location:' && grep '.*' || echo 'not installed'; }
        echo''

    #nano is usually the easiest to read and learn with, although people like vim
    echo 'nano (preferred)'
        which nano | { echo 'Program location:' && grep '.*' || echo 'not installed'; }
        echo ''

    echo 'less (common)'
        which less | { echo 'Program location:' && grep '.*' || echo 'not installed'; }
        echo ''

    echo 'more (easiest)'
        which more | { echo 'Program location:' && grep '.*' || echo 'not installed'; }
        echo ''

#Here is an option to simply show the file and let the user open it on their own.
echo 'showit.sh'
    echo 'This just shows the location of the text file and lets you decide how to open it.'
    echo 'This script is stored in' $PWD/showit.sh
    echo ''