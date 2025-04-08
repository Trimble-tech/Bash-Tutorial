## Advanced Commands
Here, we will look additional commnads which can make Bash more powerful to you.
There are a variety of commands available, too many to cover them all here.
But, the commands here are commonly used by scripts and can also help you in your daily usage.

### Editing File Contents
We have a couple of commands that can help file file contents and edit them.
A good command for finding contents is Grep, and editing contents can be done with Sed.

Here are some good resources for learning these commands:
[Grep {from RedHat.com}] (https://www.redhat.com/en/blog/find-text-files-using-grep)
[Sed {from OpenSource.com}] (https://opensource.com/article/21/3/sed-cheat-sheet)

### Linux Stats
**Show how long the system has been running:**
> uptime

**Show the kernel version**
> uname -r
Note that other commands like *uname* or *uname -a* show more or less info.

**Show the filesystem**
> df -h

**Show the storage usage of the folders in your current directory**
du -h -d 1
This command is using *-h* to make it more readable, and *-d 1* sets the depth to 1.
This prevents it from showing all the subfolders individually.
### Doing things as a superuser (root &/or sudo)
Some things require more permission than your current user account has.
We can either change which account completes the command or ask root to do it.
Root is the "administrator" account on Linux.

#### Sudo
*Sudo* is a common way to quickly do things as an administrator.

The good thing about this is that when it is done it goes back to the normal permissions and doesn't change accounts.
This is good for package management, changing system files, or other administrative tasks involving root.

Also, it doesn't require the Root account to actually have a login or password.
This is safer as it prevents two things:
1. Sloppy commands destroying the system
2. Someone from finding the root password and taking over the system.

If you are worried about the second option, set a good password for yourself too.
If your account has sudo access it is almost as powerful as root itself.

#### Su
The traditional way is less commonly used day to day but powerful, we can change the account we have in our shell.

**Either of these two commands give us a root shell**
> su root
> sudo su

*Note that the first command requires the root password and the second typically requires the user's sudo password.*
If a password is not set on the root account (uncommon but happens in some newer systems) we need to set the password.
> sudo su
> passwd
> exit
Then the first command will work. There are pros and cons to having root able to login and some prefer not to have this.
It is a security consideration but as long as it is not abused or allowed remote access (like SSH) you shouldn't have problems.

Also, note that the su command will work for any user on the system. If you know the password you can do things like them.
For example, we can use Artyom's account to open a file:
> su Artyom
> nano /home/Artyom/.config/cool-config-file.md
> exit

Or, we can change his password:
> su Artyom
> passwd
> exit

With this command we should understand ethics and privacy for our users. 
If we respect this commands like this can still help them.

### Package Managers
There are different package managers available in Linux, including APT, RPM, Yum, and Pacman.
The concepts behind each of these are the same but the commands themselves are different.

If you want to learn how to use package managers, it is best to read directly from their maintainers.
Here is more information to get you started.

[APT Package Manager] (https://documentation.ubuntu.com/server/how-to/software/package-management/index.html)
[RPM & Yum Package Managers] (https://www.redhat.com/en/blog/how-manage-packages)
[Pacman Package Manager] (https://wiki.archlinux.org/title/Pacman)