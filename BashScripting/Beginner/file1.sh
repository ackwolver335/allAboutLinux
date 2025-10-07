# this is a comment here that will not be running
echo "But, this will surely get printed"

# Piping : Sending output of one command to another and so on !
# checking the current file data with less format
cat file1.sh

# checking the word counts of the file
cat file1.sh | wc


# Redirection : It is done with < and > sign, and works with standard input/output/error in order to further move data onwards
# Listing the data of the directory to a file
ls > lists.txt
cat lists.txt

# In case of redirection we used to have different options with > and >>, out of which > is used for truncation and >> is used for concatenation
# concatenating the current files and folders in lists.txt
ls >> lists.txt

# for getting a particular output to be stored in a particular file, if there is no error we use 1> file_name.txt and for standard error we uses 2> file_name for storing the data in it
ls ./doing 1> output.txt 2> error.txt

# In the similar way we uses the < symbol for getting input from a specific files we used to have thi
# << it is used for here document
cat < lists.txt

# echo : Used for getting text output on the screen, but by default it ends with the '\n' character for ending it properly,
echo This is a single line of text !

# printf: Used for getting the text output, but without a proper '\n' character, so it usually looks wierd !
prinf I need some code here !

# we can also run both of them by adding keywords command and builtin for using its different versions, 
# also for checking its short details
command -V echo                             # remember the president is builtin only not command version of different available commands

enable -n echo
command -V echo                             # now command version enabled

enable echo                                 # returning back to builtin version of commands
command -V echo                             # checking for confirmation

# for getting any kind of help regarding it
help echo

# for checking the username or home
echo ~

# for getting into old working directory
echo ~-

# Brace Expension : It is used for creating sets or ranges.
echo {1..10}            # for counting till 1 to 10 we can also do the reverse of it, also with alphabets {a..z}

# for creating multiple file with same number but different initiation we can use it
touch file{1..5}.txt

cat {cat,dog}_{1..5}            # different combination with different things

# creating a variable
greeting="Doing Greater everyday !"
echo $greeting

# Pattern Substitution : In order to subsitute the value and create pattern for it, to be used afterwards.
echo ${greeting//e/_}           # will replace all e's with _ in the content inside it

# Command Subsitution : Used for putting the substitution of one command inside another command, which was represented as `...` in its older versions
userName="The name of the user using this device is $(whoami)"
currentpyver="The current version of Python is $(python3 -v)"

# for doing simple calculation
echo $((2+2))