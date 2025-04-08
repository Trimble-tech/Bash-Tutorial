## Running your first script
Now that you have made a script file, we will go and run it.
In order to run the script, we call it with this command (assuming the file is myscript.sh):

./myscript.sh

However, this command will usually not work right away.
This is because the file is not "executable".
We need to set this to tell your computer to run this file as a program.
To do this, run the following:

chmod +x myscript.sh

If you re-run the first command command, the script should be able to run now.
The execute property of the file stays even when edited. If you need to revoke it, run:
chmod -x myscript.sh

If the script doesn't do what you expect, then consider how it is written.
The commands may be correct but the order or layout is wrong.
Or, you might need to use different commands to achieve what you really want.
Don't get too frustrated by this, it is part of the learning process.
Once you are comfortable with the process, feel free to move onto the next lesson.