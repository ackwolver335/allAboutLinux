# Working with Arguments
<<COMMENT
This is another way of using comments
in the purpose to write multiple lines !
COMMENT

# first method for passing argument while running the script file
# taking input from the user while running this script file
echo "My file name is $0 and my name is $1";
echo "My First name is $1 and Last Name is $2";

# printing all the number of inputs given by the user while running the bash scripting
for i in $@
do
    echo "Given argument : $i";
done

echo "Total argument given : $#";           # for checking how many arguments are given by the user

# for getting input using optional args and with the use of while loop together with the case statements
<<COMMENT
while getopts u:p:ab option;
do
    case $option in
        u) user=$OPTARG;;
        p) pass=$OPTARG;;
        a) echo "Got the a flag !";;
        b) echo "Got the b flag !";;
        ?) echo "I don't have clarification for this flag $OPTARG";;
    esac
done

# checking the value of both user and pass
echo -e "user: $user \npass : $pass";
COMMENT

# single line for input that can be edited afterwards and question together by storing the response in a variable
<<COMMENT
read -ep "Enter your favourite pet ? " -i "Dog" favouritePet
echo "Your Favourite pet is : $favouritePet";
COMMENT

# using conditional base code as per number of argument given
<<COMMENT
if (($#));
then
    echo "The script requires three arguments as an input before running the file through command line !";
else
    echo "First arg: $1";
    echo "Second arg: $2";
    echo "Third Arg: $3";
fi
COMMENT

# running the script based on a particular condition for last long using the loops
<<COMMENT
read -p "Favourite pet animal ? " favpet
while [[ -z $fav ]]
do
    read -p "I need the answer of it, what's your favourite pet ? " fav
done
COMMENT

