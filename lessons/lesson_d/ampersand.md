## Combining Commands Using &&:
The **&** symbol can be used in bash to combine commands into one line or run them seperately.
The most common usage you might use day-to-day is *&&*.

For example, the command string below will echo twice and then show the current directory.
> echo 'command1' && echo 'command2' && ls

Note that this command runs each command in order, and if a command fails the sequence is broken.
Therefore, if the second command fails, the first will have already run but the third will be cancelled.