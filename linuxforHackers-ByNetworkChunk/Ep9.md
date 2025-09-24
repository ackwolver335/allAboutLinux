# Day 9 - ⌨️ Hack faster being a Hacker

→ In this session, we're going to learn *How to be faster being a Hacker using Linux ?* this is all we're going to enroll in using the **Terminal** only. Also for moving that faster we have the commands guide that will be available after every concept and reconncept !

## 🖥️ Use of cd

→ Below we're going to use different **cd** command in our **Terminal**. In the bash command format only we're going to have our own command for it ! Together by getting its different ways to be used inside it only !

```bash
# using cd for moving in forward direction
cd sub_directory/sub_folder

# cd for moving to root directory
cd /

# moving to home directory
cd 

# getting backware twise in directories
cd ../..

# for checking the details of current directory we can checkout using the pwd command for directory confirmation
# similarly for getting back to 3 directories
cd ../../..

# for getting back to the previous last directory in which we're already come from we can use the command below
cd -
```

## ⌨️ ls Command

→ Getting the advance and faster use of `ls` command for making details to be appeared faster in front of us while we use the **Terminal** to gather details from it ! It contains some important and different versions of it to be used for making it usable faster !

```bash
# getting the list of all sub-directory and files
ls 

# for getting the details for files and directory together by loading them in a proper list format
ls -l                                                       # we can do the same thing with ll command

# for getting all the hidden files or directories
ls -a                                                       # the hidden files and directories will be having a dot in their initiating names

# for getting hidden files and directories with details format with all other files
ls -al                                                      # we can do the same thing with la command
```

## 📑 Creating our Own Commands

→ We can create our own commands using the **alias**, this is basically helpful in case of creating a command to be used on the place of getting the things done in shorter, also we can put a long or larger command in shorter with the help of `alias` command, let's see a review and more informational things from it in the bash below 👇🏻

```bash
# creating an alias
alias new_command="original commad here"            # will create a shortcut to perform the same operation with the command !

# for making this changes permanent we can use the .bashrc file for making the code stored permanently
nano .bashrc            # opening the file for permanent changes

# after opening we can type the command below, nearby the already assigned aliases
alias cr='clear'            # now we can use cr on the place of typing clear
```

📌 Further Shortcut Commands are listed below !

→ **less** : Getting the longer text or content file to be seen at shorter time interval, we can use them in order to gather the information or the content slower. 

```bash
less file_name/file_path            # will show the file shortly if it is too longer
```

→ **sudo !!** : It is used for running the preview command with the help of sudo permission integrated in it ! In that particular command `sudo` will automatically get added or adjusted !

```bash
sudo !!                 # will run the previous command by adding sudo in it

# will run the command by adding as shown below
sudo previous_commad
```

→ **tail** : It is used to check the last 10 lines of the file given in order to check the changes at the **EOF**, and it is done in nano editor, also if we type `TAB` after / twice it will given the directories options available after that particular directory or folder.

```bash
# getting the last 10 lines of the file
tail file_name/file_path

# if I forget the path after the first folder I can use tab
cd /first_folder/                   # now click tab twice

# getting real time changes in log files
sudo tail -f file_name/file_path
```

## 🗃️ Terminal Shortcuts

| **Shorcuts** | **Commands** |
| :----------- | :----------- |
| **Zoom In Terminal** | **CTRL + +** or **CTRL + SHIFT + +** |
| **Zoom Out Terminal** | **CTRL + -** or **CTRL + SHIFT + -** |
| **Copy Selection** | **CTRL + SHIFT + C** |
| **Paste Selection** | **CTRL + SHIFT + V** |
| **Return to Line Beginning** | **CTRL + A** |
| **End of the Line** | **CTRL + E** |
| **Deletes everything before your Cursor** | **CTRL + U** |
| **Deletes everything after your Cursor** | **CTRL + K** |
| **Pastes Deleted Content** | **CTRL + Y** |
| **Opens current Command in Text Editor** | **CTRL + X + E** |
| **Reverse Search in Command History** | **CTRL + R** |