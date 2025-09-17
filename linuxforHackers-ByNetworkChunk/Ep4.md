# 🖥️ Sudo - Powerful Command

▶️ In this session, we're going to learn about the every main possible use-case of **sudo** command for making our **System** more productive and creative in order to be knowledgable about the **Power** of sudo command which is used in most of the case to make changes in **System Configuration**. Let's get started with this amazing command with its *format* and *structure* below 👇🏻

## Getting started with Commands

▶️ Now, we're going to create a new user using the command **sudo** before adduser to see the difference as we have already used to **adduser** commamd seperately before doing to the main job with **sudo** command in preview sessions. 

📌 **sudo adduser** → It basically depends on the purpose for which we're going to use the command, just doing the same thing changes in our **System** adding some configuration regarding new user's credentials.

```bash
sudo adduser user_name # on the place of username we can add username
```

🔖 **Output** →

```bash
[sudo] password for kali: 
New password: 
Retype new password: 
passwd: password updated successfully
Changing the user information for thor
Enter the new value, or press ENTER for the default
        Full Name []: AvengerThor
        Room Number []: 
        Work Phone []: 
        Home Phone []: 
        Other []: 
Is the information correct? [Y/n] y
```

📌 **cat /etc/passwd** → With this command we can generally find out the number of users available on our system. Also we'll able to out some other relevant details regarding their user specification. Below we have usecase example and more details overview that you get on using this particular command.

```bash
cat /etc/passwd
```

🔖 **Output** →

```bash
newKali:x:1001:1001:Kalis Brother,,,:/home/newKali:/bin/bash
thor:x:1002:1002:AvengerThor,,,:/home/thor:/bin/bash
```

📌 **cat /etc/shadow** → The shadow file is similar to the **passwd** file, but difference is it shows the **Password** and **IDs** of the username aside of it, together by showing the password in the **Hased** format. On the place we can simply do that just by replacing the **passwd** with **shadow** in the last command that we used above ! But here we need permission for which we're going to use **sudo** before our overall command.

```bash
sudo cat /etc/shadow
```

🔖 **Output** →

```bash
newKali:$y$j9T$X6C6vbXa.ZaODsyhFB6sI.$f8frVZPK5pE4sgdnk68XJG9hAjN7EwI/Sptz9SAJpf4:20346:0:99999:7:::
thor:$y$j9T$F9gHJlqTouRzheCChaCgE1$JqYl0sToOWh1/TqFQoeM/tnOGt47asrcv1YdlteihgD:20347:0:99999:7:::
```

📌 **useradd** → This command is also being useful for adding a new user to the **Device** or **OS**, but the difference is, it is called as **Lazy Command**. The Reason for so called **Lazy Command** is that it don't ask you for credentials and directly creates a user without adding the password even, due to which there is no specific output provided by it. As, here also we are going to change something is **System** we need to have the use of **sudo** command in it.

```bash
sudo useradd user_name

sudo useradd user_name -m   # here -m is used for adding it to the /home directory
```

▶️ On checking the credentials of this user **ironman** with `cat /etc/passwd` we'll find that we don't have even the **bash** for our newly created user !

```bash
ironman:x:1003:1003::/home/ironman:/bin/sh
```

▶️ For setting up the password for the newly created user **ironman**, we can use the command given below 👇🏻

```bash
sudo passwd ironman         # after this in the next line we can type the password, then further there is no output
```

🔖 **Note** → But remember, still you don't have any other credentials set due to which your new user created with **useradd** command will not be shown in our **/home** director. For adding that there we need to learn some other commands for modifying the user's credentials that are needed to !

📌 **usermod** → It is used for doing any kind of modification or in other words modifying user's credentials in order to provide a new property or fetch older one, below we have the usecase for it in order to change the default **shell** from **/sh** to **/bash**.

```bash
sudo usermode ironman --shell /bin/bash

sudo usermod -l tonystark ironman           # for changing the username from ironman to tonystark

sudo usermod -aG group_name                 # for adding the user to a specific group
```

🔖 **Output** →

```bash
ironman:x:1003:1003::/home/ironman:/bin/bash

tonystark:x:1003:1003::/home/ironman:/bin/bash
```

▶️ **sudo** → It basically used mainly for making changes in our **System Configuration**, and it stands for **Super User Do**. We can even perform some different operations that are related to the **Root** user configurations.

📌 **su** → It is generally used for switching b/w the number of different user's available in your **System** or are created for specific purposes. We can also use it to switch to the **Root** user, but as it requires password for authentication and we can do that with the help of combining the **sudo** command in it.

```bash
su - user_name          # for switching to different user's available in  home directory

su -                    # for switching to the root user but with the help of password authentication

sudo su -               # for switching to the root user without password authentication
```

▶️ **Note** → Remember that we can't use the sudo command with the **user** in order to do **sudo** operations, if the user or its details is not listed in the **/home** directory. And in the **sudoers** file it is listed that who can use the **sudo** and who can't. 

📌 **visudo** → In order to provide specific or all property to any other user we need to use this command with **sudo** with this command and then it will open this file in **VI** editor, there you need to print the line given below after the line where the property of the **Root** is defined !

```bash
username ALL=ALL
```

📌 **userdel** → It is used for deleting a particular user from the **/home** or the **System** in order to delete one user from using the entire system under its limitations. Below we have the usage or command format for using it, & here also we'll be using **sudo** command for doing the things.

```bash
sudo userdel username
```

🔖 **#Important** → Remember, here we don't have to provide the password of that specific user that we're going to delete.

📌 **groupadd** → It is used for adding a group to the **System** or main directory in order to combine multiple user at once. We can create that particular group with the help of format of this command given below 👇🏻

```bash
sudo usergroup group_name       # for creating a group

# for checking the group name or where do they exits
cat /etc/group

# for checking the number of groups available and we're working with
groups
```

▶️ **Note** → In case you need to add the **group** created, you need to add that to the **sudo** file via **sudo visudo** and then at the line after **%sudo** or next it we need to add the name and other properties as shown below in the bash !

```bash
sudo visudo         # for opening the sudo file in VI Editor

group_name ALL = NOPASSWD: ALL      # for doing operations through the group member without using password or authentications
```

📌 **gpasswd** → It is used in order to remove a paritcular user from the group in which it was added in past, and here also we're going to require **sudo** command for removing a particular user from a specific group. Below, we have the usecase example !

```bash
sudo gpasswd -d username group_name         # for deleting a particular user from a group

# we can also check that it happened or not
cat /etc/group
```

📌 **groupdel** → It is used for deleting a group that is existing, but remember that the users of that particular group will not get deleted, also here we're going to use the **sudo** command for this specific purpose. Below we have the use-case example !

```bash
sudo groupdel group_name

# for checking if the group is deleted or not
cat /etc/group
```

## 👩🏻‍💻 Today's Task

→ Creating a modifying different user's and their properties, together by deleting and adding them in different groups, also creating and deleting different groups available through the commands in this **MarkDown**.