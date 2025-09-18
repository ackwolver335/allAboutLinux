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