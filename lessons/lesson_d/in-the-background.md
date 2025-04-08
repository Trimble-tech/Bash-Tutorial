## Background Processes
A different usage of the Ampersand is *&*.
When used on its own, *&* can separate the command from your currently running shell.
Once separated, the command will give you a process ID.
This ID can be used to recall or end the program.

For example:
> firefox &
If installed as a Debian package (not snap) on Debian or Ubuntu, this command will open Firefox in a new window.
If you close the terminal, the Firefox window will stay open; it is separate from the shell.
Try this command again without the & symbol. (It will shut when the terminal is.)

(Note that other Linux distributions should also include this Firefox command, but only if not installed as Snap or Flatpak.)

Note the process number that we see when the command is run. We can use this to end the task.
> sudo pkill -9 6943

Alternatively, a nicer thing to do is call the process to "foreground" so it appears in the terminal. Then we can exit normally.
Try this:
> nano awesome-file.txt &
> fg
> ctrl +x

Let's say you run a command but want to cancel it in the shell. What you can do is use the Ctrl C combination.
Try this:
> top
> Ctrl C
Top will display a view of system resources (if installed). Ctrl C stops the command and returns it to the terminal.
Run this to clean up your screen on that terminal window:
> clear

We can then bring the 'top' command back into focus with this command:
> fg

Now, if we want to stop running this for a while and come back to it instead, we can do this:
> top
> Ctrl Z
> fg