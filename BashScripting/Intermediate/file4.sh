<<COMMENT

    >> Coprocess : It is a Background process, where we get the file descriptors with the help of shell for the process stdin and stdout.
    >> It is implemented with the help of pipe "|".
    >> For creating it we generally need a script that is a filter.

    # for using it in any file we can consider the following command :
    coproc ./file_name.sh

    # we can also rename our coprocess with the command format below
    coproc name_of_coprocess { ./file_name.sh }

    >> bash prog : Used to run program that don't needs execute permission.
    >> bash -x prog : Echo commands after processing, can also be used for setting -x or +x inside of any script.
    >> bash -n prog : Don't execute any commands, only checks for syntax errors !

    >> set -u : It reports, if we're using any unset variables.
    >> tee : Used for getting input from somewhere and writes it into a proper file as its output.

    >> trap : It is used for handling signals, changes the behaviour of a single within a script. Generally ignores the signals during critical scripts. Also performs some signals when it is recieved.

    >> eval : Mainly used for bash evaluating a string.

    >> getopt : Used for processing the command-line options.

COMMENT

# running the coproc command
# coproc ./sample.sh                          # running a particular file
# echo BANANA >&"${COPROC[1]}"                # checking the first command
# cat <&"${COPROC[0]}"                        # running another process

# giving our new coprocess a new name
coproc mybook { ./sample.sh; }
echo BANANA >&"${mybook[1]}";
echo <&"${mybook[0]}"