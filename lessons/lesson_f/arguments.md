## Arguments in Bash
Arguments work in tandem with variables, and often have their input assigned to variables too.
A common type of argument is called a *"positional parameter"*.

### Positional Parameters
Positional Parameters are arguments related to the input placed in the terminal.
These parameters start from 0 and go up with the number of arguments.
For example:
> $0 is the name of the script currently running.
> $1 is the name of the first argument.
> $2 is the name of the second argument.
> $3 is the name of the third argument.

The number of positional parameters can go up much higher than this, but is uncommon.
If you need the positional parameters to go above 10, use this format:
> ${10}
> ${11}
> ${12}

By using this format, we group the digits of the positional parameter together.
This is to prevent the number 12 (for example) from being read as the numbers *1 and 2*.

### Intro Arguments
With positional parameters we have the background for Intro Arguments.
These are any strings that are entered behind the script when you initially call it.
Here is a good example:
> arguments-example.sh -h

In order to make it, we make a while loop and place a case inside of it.
This can be found in several scripts across the tutorial (such as the main tutorial script).
However, we instead call for options ahead of time with specific letters.