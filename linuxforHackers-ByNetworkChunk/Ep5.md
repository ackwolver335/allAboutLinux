# 5️⃣ Installation Guides - Don't get Confused !

▶️ In this session we're going to learn how to install packages from every possible reason, together by containing the different requirments for it. We are also going to learn - which tools we're going to use and in how much different ways ! Basically in simple words we're going to learn, how to install packages ??

## 📦 Package and Guide 🖥️

▶️ Here we're going to use **2** different things to learn from **dpkg** and **apt** for installation of application/programs/softwares using the **Terminal** in case of its proper **installation**. Let's break it one by one !

📌 **dpkg** → It is the simplest and boring package manager in simple words. It is used for installation of **debian** based packages and is also sometime considered as **dumb**. Also due to its **Low-Level Package Manager** property. It used for instalation of software and packages, and for their installation we already need to have that specific package that is needed to be **Installed**.

## 👩🏻‍💻 Installation Guide 📑

→ For the installation of **debian** based packages we need to use this **dpkg** command stands for **Debian Package** and the package in our system that we're going to install in our Device. For Linux we're using this packages category otherwise in other **OS** we have other category to be used. It would be helpful if we want to install a particular program or software that doesn't really available in the category of **apt**.

📌 Below we have the command for execution and installation of **Discord** via debian based package :

```bash
dpkg -i package_name.deb            # here -i stands for installation process

# for listing all of the packages of your system
dpkg -l
```

▶️ **Disadvantages of Debian Packages →**

→ In case we're using the **Debian** package we need to have it downloaded before getting actually installed in our **System** or **Device**.

→ With the help of **apt** we can also update and upgrade already installed packages in our system.

→ **apt** : On the place the package with **debian** category will only get installed, if all the other dependencies of it will be avialable otherwise it will not get installed and show us different kinds of errors ! For that particular problem's solution we have the **apt** which stands for **Advance Package Tool**. Below we have the usage guide for **apt** 👇🏻

```bash
sudo apt update                 # for updating the allover available installed programs and softwares

sudo apt upgrade                # this command is used in order to upgrade the packages those were update from the command used above
# above command is also used and recommended for proper installation

sudo apt install package_name   # for installation of specific packages that we have requirements and need with

# we can also do the update and upgrade at one single line using && Operator
sudo apt update && sudo apt upgrade
sudo apt update && sudo apt full-upgrade            # this will remove the older version of the packages and add-on the newer version of the packages
```

→ In case of using **apt** we have an online **Repository** or an **Storage Location (Collection of Software)** from where we used to install the Software or Program directly into our device, hence we have the advantage of installing the software directly, and no need of download its packages before installation. 

▶️ Checking the **Sources** of **apt** →

→ From here we'll get the details of the sources from where the data is coming for packages installation
```bash
sudo apt edit-sources
```

→ It will list all the available packages that are installed in your Linux Machine.
```bash
sudo apt list
```

→ It will show the packages that were installed in your Linux Machine
```bash
sudo apt --installed
```

→ For getting details about the package that we're going to installed
```bash
sudo apt show
```

→ For removing already installed package
```bash
sudo apt remove package_name
```

→ For removing any already installed package from depth or core
```bash
sudo apt purge package_name
```

→ For checking if there is any data left from any specific **package** or not !
```bash
sudo apt --installed | grep ^package_name
```

→ **aptitude** : In case of using aptitude with the command given below, we have a different level of **UI** interface that is opened regarding the packages that were already installed, and the packages that were installed regarding specific purpose seperately including some other different functionality available in it.

→ If it is showing that the command is not found, you need to install it. In most of the cases, we must need to install it before using in case of using it in Kali Linux, we must need to install it first, cause it isn't already installed.


```bash
sudo apt install aptitude -y
```

→ For using it as per the system permission we can use **sudo** with it.

```bash
sudo aptitude           # provides different level of UI interface inside the Terminal Only

# for installing different packages we have the command below
sudo aptitude install package_name
```

→ **snap** : This is another category of **Package Manager** which has a different functionality of working, in case of using **snap** we will have our packages installed at a specific place or store from where we can easily pick and use them whenever we wanted !

→ We must need to install **snap**, together by **enabling** and **starting** its services, before using it for installation of different packages.

```bash
sudo apt install snapd -y               # for installing snapd and all its components

sudo systemctl enable snapd             # for enabling its services
sudo systemctl start snapd              # for starting its services

# enabling the sockets for creating or establishing the links before getting any packages installed
sudo systemctl enable snapd.socket
sudo systemctl start snapd.socket

# now you can use the following command for installation of packages
sudo snap install package_name --classic

# or you can use the command given below for the same operation
sudo snap install --classic package_name
```

→ **git** : It is another kind of packages manager that is not actually used by the developers as a package manager. It is used as **Code Manager** in most of the Cases. Below we have use cases for using it and installing different categories of packages.

→ You also need to take care of using the latest version of **git** that helps you finding the latest version of packages that you're looking for.

```bash
sudo apt update && sudo apt install --only-upgrade git -y
```

→ On the place of installing some stuff, here we used to clone the repository of the codes that were created by other hackers in order to be usable, and they put it in their public repos that we used to clone.

```bash
git clone repos_link
```

## 👩🏻‍💻 Today's Task

→ Revise all the things that were included in today's session regarding different category of available package managers together by doing different installation practice. Don't forget to star this repo for upcoming updates !