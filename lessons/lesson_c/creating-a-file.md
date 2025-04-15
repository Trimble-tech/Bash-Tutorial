## Creating Your First Bash Script
Now that we are here, we can create a new file.
This can be done either through the terminal or a text editor.
The file can be named anything but it is good practice to end it in .sh

For example:
> *myscript.sh*

In the terminal, a good program is *nano*.
To create a file with nano, use this command:
> *nano myscript.sh*

### What should go in my file?
Well, there are lots of uses for bash scripts.
Within the "sandbox" folder, there are different files to experiment with, this is a 
good place to start.

We will now examine a few examples to include in your first script.
Feel free to copy one (or more) of these examples to your file.
Some of these examples use variables and combine commands.
We will go into these concepts more in lessons D and E.

Also, notice that these examples will begin with this first line:
**#!/bin/bash**
This is called a *"shebang"*.
With this line, we tell the computer to use Bash to interpret the code.
This is a good practice to prevent the wrong program from handling the file.
*You can of course put a different shell in (such as zsh for example) but this will not be covered here.*

#### 01 Show the folder and its file path
#!/bin/bash
ls
echo 'Your folder is:'
echo $PWD

#### 02 Show files in other folders
#!/bin/bash 
echo 'Here are the files in folder 1:'
ls 'folder1'
echo 'Here are the files in folder 2:'
ls 'folder2'

#### 03 Copy files from both folders to a new folder
#!/bin/bash
mkdir -p 'folder3' 
cp -r -v folder1 folder3 && cp -r -v folder2 folder3

#### 04 Ask to show the disk space used on your system.
while true; do
    read -r -p "echo 'Do you want to see disk usage?' [Y/N] " yn
        case $yn in
        [Yy]* ) 
                echo "Displaying disk usage:"
                df -h -l
                break;;

        [Nn]* ) echo "Not showing disk usage."
                exit;;

        * ) echo 'Yes or No?' ;;
    esac
done
exit

#### 05 Delete folder3
***rm -rf is a powerful/dangerous command.***
***Make sure you are deleting the right folder!***
rm -rf folder3

**If you need help saving your file, refer to these instructions for terminal editors:**
**VIM**: *Esc*, then type :wq
**Nano**: Press *Ctrl* and *X* at the same time

The next document (running-your-script.md) will show you how to get your script running.