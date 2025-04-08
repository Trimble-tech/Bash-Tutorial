#! /bin/bash

echo 'This Linux system was installed on:'
#Check for age of / {root} filesystem
#The age of the root filesystem will tell when the Linux install was "born"
stat -c %w /

#Check current kernel version
echo 'The current kernel version is:'
#We can use 'uname -a' if more detail is desired
uname -r