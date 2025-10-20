<<COMMENT

    Intro to Variables, Control Structures and Arithmetic Operations.

    - In an array, the indexing starts from 0th to infinite and the last element is at -1 index.

    function function_name{
        # function code here
        # code here or defined variable will not effect the variables outside it 
    }

    function changeval {
        typeset name;
        name="Ack";
        lastName="Wolver";
    }

    # getting started with loops
    while (( x < 10 ))
    do
        echo loop $x;
        date >data.$x
        (( x=x+1 ))
    done

    # command for printing numbers without any loop
    seq first_number last_number                            # Example : seq 1 5

    # for using it together with a loop
    for numbers in `seq 1 6`                                # here we have used `` backticks for entering some command inside another

    # for looping over a whole file
    for line in $(<file_name)                               # here we have used < for getting input from the file as each line

    # for making a list from file globbing
    for j in *.c                                            # content from all files containig this extension .c

    # finding word based line in particular file
    for line in $(find . -name *.c)                         # content from all file after . containing .c extension

    # return statement : It is used for ending the function or method in order to set the user in the global scope, also we can return any value
    # inside the function at the time of its ending.

    function function_name{
        # function code goes here
        # now there is no need for this function, ending it with a return statement
        return
    }

    # exit : It is used for exiting the currently used states in order to get out of particular condition, situation or state.
    
    # method for using exit similar to the return statement
    function showsomething {
        echo "I m inside it !"
        exit 2                                          # here 2 is the state of getting exit outside this function/method
        echo "I m invisible to the Terminal!"           # this will not get printed on the terminal screen
    }

    # for checking the real state of the exit command we can use the command given below
    echo $?

    # storing the output in a variable
    variable_name=$(function_name)

    # we can use the exit command only in the shell properly with its proper requirements
    # exit : for using it inside the bash or shell scripting we need to give it some arguments, we can use similar to the return statement that we used before

    # Redirection & Pipes
    # Files Operations : 0 > stdin, 1 > stdout, 2 > stderr
    # stdout command | stdin command
    # alternative way for it
    # commad |& command2
    # command >> file
    # command &>> file : Appending the stdout and stderr at the end of this file.
    
    # command for sorting general input given by the user! 
    # sort <<END
    # ...
    # END

    # exec N> file_name : Used to write inside the file, with the next passed command in it.

    # using lsof together with the exec command to get all the opened files inside a particular folder
    exec 7>/folder/sub_folder
    lsof -p process_id_here                     # at the process_id we can also use the current shell's process id

    # testing data with different files and directory
    test -d directory_name                      # used for checking if the directory exists or not
    test -f file_name                           # used for checking if it is a regular file
    test -s directory_name/file_name            # used for checking if the given object exists and it is not empty

    # testing different available permission on files or directories
    test -x file_name                           # returns true if the file can be executed
    test -w file_name                           # returns true if the file can be edited
    test -r file_name                           # returns true if the file can be readable

    # ternary operator also works in the bash, example below
    expression1 ? expression_if_true : expression_if_false

COMMENT

# defining a method here for typesetting variables
name="Abhay";
lastName="Chaudhary";

# method changing first name as typeset in its definition and last name directly
function changeval {
    typeset name;
    name="Ack";
    lastName="Wolver";
}

# printing values before calling the methods
echo "First name is $name and last name is $lastName";

# printing values after calling the methods
changeval
echo "First name is $name and last name is $lastName";

# getting started with loops
# printing the owner name using loop
ls -l | while read a b c d
        do
            echo "Owner's name is $c";
        done

function goodthings {                                          # remember leaving space after name of the function
    echo "The Things and days are getting better !"
    return 
    echo "This will not get printed":
}

# running the function to checkout the output
goodthings

# checking what goodthings is returning to us
returned_data=$(goodthings)
echo "The Methods goodthings returned : $returned_data";

# method for the use of exit statement
function showsomething {
    echo "I m inside it !"
    exit 2                                          # here 2 is the state of getting exit outside this function/method
    echo "I m invisible to the Terminal!"           # this will not get printed on the terminal screen
}

echo "I m in the global state !"
# showsomething                                       # calling the method here
# echo "I will not get printed !"                     # the code after this and including it will not get printed

# trying END with while loop
while read a b c
do
    echo a: $a b: $b and c: $c
done <<EOF
    one two none
    third fouth fifth
    sixth seventh eigth
EOF

# checking if this current directory exists or not
if test -s data1.sh;
then
    echo "Directory with name Beginner exists"
else
    echo "The given statement is false";
fi

# checking different persmission on current files or creating a new one
if test -x data1.sh;
then
    echo "The File can be executed !";
fi

if test -w data1.sh;
then
    echo "The File can be edited !";
fi

if test -r data1.sh;
then
    echo "The File is readable !";
else
    echo "No operation can be performed on this file!";
fi