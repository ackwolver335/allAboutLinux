# Bash Control Structures
# if conditional statement
a=8
if [[ $a -gt 4 ]]
then
    echo "The variable $a is greater then 4 !"
else
    echo "The variable $a is not greater then 4!"
fi

# doing the same thing with arithematic evaluation
number=56
if (( $number % 4 == 0 ))
then
    echo "The number $number is divisible by 4"
else
    echo "The number $number is not divisible by 4"
fi

# Getting started with Loops
# While Loop : Runs as long as the given condition is true and stops when the condition becomes false !
# Until Loop : Runs as long as their condition is false and stops when the condition becomes true !

# In short until loop is totally opposite of while loop in its work structure !
# an example of while loop :
num2=5

echo -e "\nAn example of using While Loop : "

while (( num2 <= 10 ))
do
    echo "The value of number is : $num2"
    (( num2++ ))
done

# an example of until loop :
num3=4

echo -e "\nAn example of using Until Loop : "

until (( num3 == 7 ));
do
    echo "The value of number is : $num3"
    (( num3++ ))
done

# getting started with for loop
echo -e "\nRunning the for loop within a range : \n";
for i in {1..5}
do
    echo $i
done

# for listing the same thing in a single line, we can do that in the given line below
# for i in {1..5}; do echo "The value of number is $i"; done

# another way of using the for loop, used in the C type language style
echo -e "\nAnother way of using for loop (C type format) : \n";
for (( i=1; i <= 10; i++ ))
do
    echo "The number is $i";
done

# Applying loop on arrays
fruits=("apple" "banana" "cherry");

echo -e "\nThe fruits are listed below : ";
for i in ${fruits[@]};
do
    echo "Fruit is $i";
done

# Using for loop with associated array
declare -A student;
student["name"]="Ack Wolver"
student["age"]=21

echo -e "\nStudent details : ";

for i in ${!student[@]};
do
    echo "Student's $i is ${student[$i]}";
done

# Case Statement : On the basis of specific value of particular variable what has to be done, on the basis of specific code !
student_name="Ack Wolver"

echo -e "\nCase statement result use case : ";

case $student_name in
    "Ack") echo "First Name";;
    "Wolver") echo "Last Name";;
    "Ack Wolver") echo "Full Name";;
    *) echo "Not found !";;
esac

# functions : Block of code defined by users in order to do the one thing again and again, not to write the code again and again.
greetings(){
    echo "Good Morning $1 !";
}

echo -e "\nNow you'll be greeted by an already defined function/method : ";
greetings Chicha                # here Chicha is the first argument that I have passed here !

# Using for loop inside a function defined
numberthings(){
    i=1
    for f in "$@";
    do
        echo $i: $f;
        (( i++ ))
    done
}

numberthings *
echo
numberthings

# Scope of variable inside and outside the function
myfunctions(){
    student="I m a Student"
    echo "Variable's value inside the method is : $student";
}

# Writing and Reading Textual files and their content
# > is used for overwriting or creating a new file for storing the data in it.
# >> is used for addding or appending newly created information in the file to be stored as usual, together with the newly added data.
# while read line; do each $line; done < in.txt

echo -e "\nCreating a file with multiple line of data in it : ";
for i in {1..5}
do
    echo "This is line number $i" >> newfile.txt
done

# reading the content of the file using while loop

echo -e "\nfile's content after creating the whole file :";

while read f
    do echo "Line : $f"
done < newfile.txt