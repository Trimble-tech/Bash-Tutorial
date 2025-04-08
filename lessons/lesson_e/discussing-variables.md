## Discussing Variables
Variables are a tool for having a your shell (or script) remember and recall complex commands.
Whether it is entered by the user or a command, variables can help with this.
If you look at any of the scripts used by this tutorial, you are likely to find variables.

### Creating a Variable
To create a variable, we can either enter it directly use a program like "read" to obtain it during a script.

For example, we will set the name Bob to equal adminuser:
> adminuser="bob"

If you enter this into your terminal and then enter this command, you will be given the output "bob".
> echo "$adminuser"
I put quotes around the variable to make sure the whole string is counted as one item.
A variable like "admin_user" or "admin^user" is possible and can be ugly without the quotes.

Now, to remove this variable we created, simply set it to equal nothing.
> adminuser=

### Built-in variables
There are several built-in variables already in bash, and many built into the programs that run inside it.
However, there are a few that are really helpful.

1. $PWD is the current folder you are in. You don't need to type your current folder if it is really long.
2. $OLDPWD is the folder you previously were working in.
3. $BASH is the installation folder of the Bash program.
4. $BASH_VERSION is the version of your installation of Bash.
5. $HOME is your user's home folder.
6. $SHELL is the path to your system's default shell.
7. $USER is the name of your user.
8. $UID is the user ID of your user.
9. $HOSTNAME is the name of the computer.
10. $HOSTTYPE is the CPU architecture of the computer.

In this Bash tutorial, you can find an example script employing variables in the "examples" folder.
The example script is called "variables-sample.sh"

Feel free to open or run this script to see some of the built-in variables in action.
Additionally, code within this project has some variables throughout.