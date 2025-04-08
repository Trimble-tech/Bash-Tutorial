## Making an Exit: Talking about exit codes
Exit codes are typically left behind by programs after they stop running.
This is often what tells the difference of whether a command failed of succeeded.
Normally, *0* is considered "error-free", while anything else is an error.
(Think of it like a count of errors, if there is zero there are none.)
(That doesn't mean however that 2 means two errors, it is just to help memory.)

In another terminal, try running this simple command:
> `ls`
Then, we can check for the exit code of that command, it will read 0.
> `echo $?`

Then, try running the same `ls` command but point it to a folder you know doesn't exist:
> `ls /nonexistant`
> `echo $?`

Look at the error code of this command and you will see it is something different (most likely 2).

### Creating our own error codes
Now, if we want to we can make our own error codes.
There is a program called `exit` which is used at the end of many scripts; this can append our exit code.

> `exit`
> `exit 0`
These two commands above equal the same thing, but `exit 0` is rarely used.

> `exit 1`
> `exit 2`
These two commands both exit with an error (1 and 2 respectively).