#!/usr/bin/env bash

ps -l

exec N<>sample.sh

# closing the file descriptor
exec N<&-

# for listing the open files
lsof