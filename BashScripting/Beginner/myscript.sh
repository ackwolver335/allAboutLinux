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

# now we are going to learn more things
# taking input from the user while running this script file
echo "My file name is $0 and my name is $1";
echo "My First name is $1 and Last Name is $2";

# printing all the number of inputs given by the user while running the bash scripting
for i in $@
do
    echo "Given argument : $i";
done

echo "Total argument given : $#";           # for checking how many arguments are given by the user

# getting the input on the basis of the arguments
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

# taking input using read keyword
echo "What is your name ?";
read firstName
echo "What is your age ?";
read age
echo "What is your id pass ?";
read -s password                            # -s for not showing what is been typed by the user's keyboard

echo "Do you agree with these details ? ";
read agrees

# getting a whole line of input
read -p "Enter a sentence you loves to ?" sentence
echo -e "\nYour name is $firstName and age is $age, your pass is $password, also the sentence you given : $sentence";

# using select keyword and its format for choosing a particular string from programmer's defined options together by taking input
# from the user for making the comparision
echo -e "\nWhich category is yours ?"
select coder in "programmer" "hacker" "developer"
do
    case $coder in
        programmer) echo "Programmer used to generate programs in order to build Software Applications !";;
        hacker) echo "Hacker used to destruct and find bugs to improve the Software's functionalities !";;
        developer) echo "Developer used to developer Application and Softwares using code and provide them to Programmers !";;
        *) break;;
    esac
done

# getting an editable user's input from the user as option that can be edited afterwards
read -ep "Enter your favourite pet ? " -i "Dog" favouritePet
echo "Your Favourite pet is : $favouritePet";

# providing conditional output on the basis of number of given argument
if (($#));
then
    echo "The script requires three arguments as an input before running the file through command line !";
else
    echo "First arg: $1";
    echo "Second arg: $2";
    echo "Third Arg: $3";
fi

# running script based on some value using loops, if there is no value then there will no ending of the loop
read -p "Favourite pet animal ? " favpet
while [[ -z $fav ]]
do
    read -p "I need the answer of it, what's your favourite pet ? " fav
done