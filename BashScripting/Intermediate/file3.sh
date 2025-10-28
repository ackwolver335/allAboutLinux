<<COMMENT

    # Using filters, heads, tails & wc in Terminal.
    >> Filter : If a program, reads from a stdin and then it writes to stdout, then it is called as a filter, can be used in the middle of a pipe.
    And these are useful in case of providing the different type of command we want in our output.

    >> head : Used for getting a starting bunch of line from a file's data, as per the given argument, also by default it gives us 10 lines

    # using head for getting the first five line of content from a file, together by using | (pipe) with it,
    ls -l | head -5             # here at the place of 5, we can provde an integer as per the number of lines we wants to generate !

    >> tail : Used for getting the content of the file from the bottom side of it, works similar in case of getting data as head used to do !

    # getting last 3 lines of the context or any file
    ls -l | tail -3             # here also at the place of 3, we can use the number of lines we wants in the stdout !

    # checking out the last 2 lines using tail command, in a file which grows continuously
    tail -n2 -f file_name

    ## Note : We can also use the combination of these head and tail command in order to get specific data,
    
    ls -l | head -5 | tail -3               # this will first take the first 5 lines and from those it will take the last 3 lines

    >> wc : It is used for getting the details regarding the word count in a particular file or context. Also used in order to get more details
    >> related to file's lines available in it.

    # getting the general usage of word count i.e. wc 
    wc file_name

    # default output of wc with simple command and file_name
    line_count word_count character_count file_name

    # getting the number of lines only in a file
    wc -l file_name

    >> Command Sed : It is a kind of streame editor, generally used for batch editing tasks, mostly used as a filter similar to head & tail !
    >> Used for applying its editing to all lines in the input.
    >> Old Pattern & Regular expressions can be used with it ! Substitutes the first occurences of old in each lines, for the new files &
    >> displasy the output then in the stdout !

    # general short example of this command,
    sed 's/old/new'  file_name                              # you can also use the regular expresssion with it.

    # In the command above, / is used for seperating the older character from the new. The file can't be changed once assigned, also
    # the new version is shown on the screen with the stdout ! for simple subsitution we don't have to use many options in it !

    >> Awk Language : It is a pattern matching language, interpreting programming language that works as a filter, best in it for report writing.
    >> Handy for short "Arithmetic" type of programming or processing. Generally breaks lines into fields.
    >> Breaks the line into fields of $1, $2,..etc.    

    # example of awk command
    ps -el | \ awk '/pts/||$8~/35/{printf("%5d %5d %s\n", $4, $5, $14)}'

    # replacing particular word from another word using sed command
    sed 's/old_script/new_script/' file_name

    >> Parameters : These are used for providing input from the user's side in order to make the usage of multiple digits or characters at once.
    >> Also we have its category called as "Positional Parameters" that are used here.

    # example of its use case
    x=abc
    abc=def
    echo ${!x}              # this will print def on the place of abc or any other

    # unset or null variable
    x=${var:-hotdog}

    >> Script ":?" checks, if there is an error its displays it and exit script if var is unset/null
    >> Script ":+" checks, if the var is unset/null it returns nothing, otherwise returns a value
    >> ${var:offset} : value of the string starting at the offset.
    >> ${var:offset:len} : value of the variable starting at offset.
    >> ${#var} : length of the variable.
    >> ${var#pre} : removes the matching prefix

    # getting the last 3 part using first method
    x=abhay
    echo ${x:2}     # will show hay in the output

COMMENT

# getting the overall list first
echo "Overall list first :";
ls -l

# getting the first 3 entries of the files
echo -e "\nFirst 3 entries from the list :";
ls -l | head -3

# getting the last 2 lines from the same
echo -e "\nLast 2 entries from the list :";
ls -l | tail -2

# getting the in b/w entries of the same
echo -e "\nThe In b/w entries of the list :";
ls -l | head -4 | tail -2

# getting the wc command used for details regarding wc and lines
echo -e -n "\nDefault Word Count by wc command on this current file :";
wc file3.sh

# using wc count together with the other context of the commands
# data of current directory list or folder's context
echo -e -n "\nCurrent folder's/directory's list with word count's default details : ";
ls | wc

# count of overall directories and folders
echo -e -n "\nTotal number of directories or files in current directories : $(ls | wc -l) Objects.\n";