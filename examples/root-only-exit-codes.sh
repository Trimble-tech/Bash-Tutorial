#!/bin/bash

#This is a script which can only be run by root
#Note that sudo counts, run with `sudo ./root-only-exit-codes.sh`

#If the user is root the exit code is zero
#If the user is anything else the error code is 1

if [[ "$(whoami)" != root ]]; then
    echo "Only the root user can run this script."
    exit 1
fi 

#Do something harmless but visible to show the script worked
ls /

exit