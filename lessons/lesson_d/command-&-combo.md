## Command & Combo
Let's use our *imagination* for a moment.

Let's say that you are troubleshooting internet on a server.
You are connected to the server using a serial connection or a single terminal.
You need to run some commands while also checking for connectivity at the same time.
In order to do this, we can start a ping command from the background and watch the output.

> command ping -i 5 github.com &

Once this is done, a ping command will go to the background and give output to your terminal every 5 seconds.
Feel free to do other commands and they will run but be interrupted by the ping output.
It is not a clean display but in this situation it works.
Note that you can enter a program like nano and it will display the output when leaving the program.

When you are done with this, do the following:
1. This command shows the ping running in the background.
> jobs
2. This command will stop the job since it should be the first (and only) one in the background right now.
> kill %1
3. Clear the terminal to wipe away the output (optional).
> clear

With all of this done, we can proceed to the next lesson.