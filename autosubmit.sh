#!/bin/bash
#Type this command before running the shell
#chmod +x autosubmit.sh
#Change $n -lt NUM <- this NUM to the submit times you prefer
#Change sleep 4m <- this 4m to Xm if you want to submit every X minutes
#Type Ctrl-C to terminate the shell anytime.

cookie=YOUR_COOKIE_HERE
n=0
while [[ $n -lt 20 ]]
do
	./submit func.c
	n=$((n+1))
	sleep 4m
	./results $cookie
done
