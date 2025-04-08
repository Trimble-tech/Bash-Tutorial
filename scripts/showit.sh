#Show the file requested and wait for the user to press enter before exiting.
echo "The file is located at:"
#$1 is the first argument given to the script, which will be the file name.
echo $1
echo ''
read -p "Press enter to continue"