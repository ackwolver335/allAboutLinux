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