#!/usr/bin/env bash

ps -l

# exec N<>sample.sh

# closing the file descriptor
# exec N<&-

# for listing the open files
# lsof

<<COMMENT
while read line
do
    echo $line | tr "ABC" "abc"                     # will translate every ABC to abc wherever it is written
done
COMMENT

trap '' INT                                         # this will be an infinite loop when someone try to stop the terminal
trap 'echo stopping..; exit' INT
trap "echo you cannot quit now" QUIT
cd /
while true
do
    echo looping...
    du -m * 2>/dev/null
    echo sleeping..
    sleep 5
done