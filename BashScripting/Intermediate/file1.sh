# Getting information about bash
man bash
man bash | wc -l                # for checking the number of lines available in the manual description about it

# information about the bash : A short version of manual description
info bash
info bash | wc -l               # for checking the same in order to get the information about the word available in the informational data

<<COMMENT
#! is known as "shebang" character generally called or known to be added in the first line of the bash script file !

#!/usr/bin/env bash             # for getting access and workflow with the env variables and data
#!/usr/bin/bash                 # used most of the times done, here the execve() will run in this case 

Note : In this after #! the given data is now considered as the arguments or command-line argument. In case of using #!/usr/bin/bash the kernel will execute the script. So, we don't have to use the "bash file_name.sh" while executing the file ! This line is used with multiple programming languages for interconnection Perl, Python, Expect and awk.

-> Also for checking out the bash the program will checkout in the env variable for its path !

-> In case, your shell script is using ./file_name.sh it will run it normally as per it is available in the current directory ! But only if that is not available in the env path variable ! Remember .sh extension is common to use with !

-> Adding permission to newly created file sample.sh using chmod command
chmod +x sample.sh

-> For getting a copy of any shell variable we need to export it and for doing that we have the following command :
export my_variable

declare -x my_variable

# we can do the same together by assigning it some value
export variable="its value here"                                    # we can use this is another terminal after getting exported

# for doing the same thing with the function we have the command given below
export -f myfunction

# block scope only works with paranthesis
a=1
(a=2)           # this will not change the value of variable a
{a=3}           # this will surely change the value of variable a
echo $a         # now the value of variable a is 3

# command used in order to find how much time it takes to complete from all side, together by getting the output of that command
time command args

# exporting a variable
export myname="Ack Wolver"

bash                        # starting a new terminal
echo $myname                # checking if the variable is been exported properly or not

# getting available keywords in bash shell for bash scripting
compgen -k

# .bash_profile file containing related data for the bash on system boot
# .bashrc file that starts when a bash gets started every single time, together with every single bash shell on getting started

# checking the data availabe on both .bashrc and .bash_profile
cat ~/.bash_profile
cat ~/.bashrc

# we can also set up some required variable in the .bashrc file in order to set them permanently whenever required 
# for the purpose of usage

# if the file is not even running after setting the executable permission we can use the method given below
source ./file_name_orpath.sh or . ./file_name_orpath.sh

# for removing any command from the command lists we can use the format below
unalias command_name

COMMENT

# command to check the timing consumed by any particular process in order to get completed finished
time find / -name core