# line continuation character: \ at the end with one space
ls \            # after \ we can write another command in the next line

# shebang bash file
#!/usr/bin/env bash         # at the starting of the file for making it executable
# for running the file
./myscript.sh 

# for using parentheses we uses escaping using \ \
echo 'The \(kernel\) is $(uname -r).'                       # inside double quotes it will be skipped.

# Seperate echo command
echo;echo More Space;echo;

echo -n "No newline"                # for not getting a new line after the end

# Getting started with in Bash
variable="Doing"                    # variable_name = "Doing" will not work if we use space in between

# for accessing
echo $variable

# creating a variable that can't be changed after its declaration
declare -r myname="Abhay"

declare -l lowercasedata="DATA IN LOWERCASE"        # for declaring some content in lowercase we use this format
# for uppercase we uses the declare -u format, in case of -l or -u we can change the value but not in case of -r

# doing simple calculations
echo $(( 4 ** 56))

# for doing using a variable
num1=34
echo $((num1--))                                    # here we don't use $ sign for reminding it that it is a variable

# operations like += or -= can also be done here
# we can also do if we just wanted to perform them by either using bc or awk
echo $RANDOM            # used for getting a random number

# for getting more than one value
echo $(( RANDOM % 2 ))

# test : It is used for testing the expressions or command if those are true or not !
[ -d /bin/bash ]; echo $?               # checking if the bash is a directory

# for string's comparison
[ "first" = "Second" ]; echo $          # we can also perform some mathematic operations for checking the same thing

# we can use -lt or -gt for less than or greater than in order to do comparison
# for just the arithematic operations we can use (()) parenthesis
# logical or operator '-o', logical and operator && and for logical or ||
[[ -d ~ ]] && echo "This will only run if the first statement is true !"

# for using escape characters with echo
echo -e "This contains 2\t\ttabs after all of this content\nA newline character is been added here !"

# for indicating a bell like character we can use the \a character in for giving it a gap with echo
echo -e "\a"

# defining an array in bash (Indexed Arrays)
array_name=("first" "second" "third")
echo ${array_name[2]}                   # for printing particular array's element
array_name[4]="fourth"                  # adding a particular array's element

# another method for adding array's element
array_name+="fifth"

echo ${array_name[@]}                   # for showing all the characters of the array

# for printing all the element of the array using loop
for i in {1..5}; do echo "$i: ${array_name[i]}"; done

echo ${array_name[@]: -1}               # for printing the last character

# Getting started with Associated Arrays
declare -A array_name1                  # declaring an Associated Array

array_name1[name]="Ack Wolver"          # declaring key and value in Associated Array