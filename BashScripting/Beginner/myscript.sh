#!/usr/bin/env bash

# for  putting Hello World on the screen
echo "Hello World!"

# creating my age and using it afterwards
myage=21
echo "My Age is $myage"

declare -r myname="Abhay"
echo "The name is $myname"

# myname="Coding" will create an error
# defining a lowerstring variable using declare
declare -l lowerstringname="ABHAY CHAUDHARY"
echo "My fullname in lowerstring is $lowerstringname"