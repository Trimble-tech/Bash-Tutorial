# File Oriented Logic

Bash is a scripting language, it brings together files from different parts of the system together.
Bash is a means of operating file-oriented operating systems. Linux & Unix are prime examples of this.

> Everything is a file.

On some systems that are immuttable, parts of the system cannot be written to;
ChromeOS or Fedora Silverblue are examples of this.
You can still *read* or see the files however.

Regardless of immuttablity, there is immense power in working with files.

Here are some general commands for navigating a file system.
Feel free to try these out:

> **ls** see the files in your folder
>> **ls -la** show hidden files as well
> **cd** change directory, for example 'cd /home'
> **cd ..** go up a folder, like from $PWD/script/dialog to $PWD/script
> **$PWD** show the current directory

Additionally, there are commands to show how much space everything takes.

> **du -h** see how much space is used by a folder's files, like **du -h /etc/**
> **df** see how much space is used by your filesystem.

In the next segment of this tutorial we will practice these commands "in the dojo".
