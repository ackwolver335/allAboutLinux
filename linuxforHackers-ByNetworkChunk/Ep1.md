# 1️⃣ Linux for Hackers 👩🏻‍💻 Beginner's Guide

▶️ Here in this one, we'll be discussing about some courses from a platform providing them for almost free of cost. Also here we'll be learning some basic commands for working on Linux and its terminal getting its basic overview and functionality !

## 📦 Components of Linux

| **Components** | **Descrption** |
| :------------- | :------------- |
| **Bootloader** | A piece of code that runs to guide the booting process to start the operating system. Parrot Linux uses the GRUB Bootloader. |
| **OS Kernel** | The kernel is the main component of an operating system. It manages the resources for system's I/O devices at the hardware level. |
| **Daemons** | Background services are called "daemons" in Linux. Their purpose is to ensure that key functions such as scheduling, printing, and multimedia are working correctly. These small programs load after we booted or log into the computer. |
| **OS Shell** | The operating system shell or the command language interpreter (also known as the command line) is the interface between the OS and the user. This interface allows the user to tell the OS what to do. The most commonly used shells are Bash, Tcsh/Csh, Ksh, Zsh, and Fish. |
| **Graphics Server** | This provides a graphical sub-system (server) called "X" or "X-server" that allows graphical programs to run locally or remotely on the X-windowing system. |
| **Window Manager** | Also known as a graphical user interface (GUI). There are many options, including GNOME, KDE, MATE, Unity, and Cinnamon. A desktop environment usually has several applications, including file and web browsers. These allow the user to access and manage the essential and frequently accessed features and services of an operating system. |
| **Utilities** | Applications or utilities are programs that perform particular functions for the user or another program. |

## 🖥️ Linux Architecture

| **Layer** | **Description** |
| :-------- | :-------------- |
| **Hardware** | Peripheral devices such as the system's RAM, hard drive, CPU, and others. |
| **Kernel** | The core of the Linux operating system whose function is to virtualize and control common computer hardware resources like CPU, allocated memory, accessed data, and others. The kernel gives each process its own virtual resources and prevents/mitigates conflicts between different processes. |
| **Shell** | A command-line interface (CLI), also known as a shell that a user can enter commands into to execute the kernel's functions. |
| **System Utilities** | Makes available to the user all of the operating system's functionality. |

## 🗃️ File System

▶️ The Linux operating system is structured in a tree-like hierarchy and is documented in the Filesystem Hierarchy Standard (FHS). 

📌 Linux is structured with the following standard top-level directories:

| **Path** | **Description** |
| :------- | :-------------- |
| **/** | The top-level directory is the root filesystem and contains all of the files required to boot the operating system before other filesystems are mounted, as well as the files required to boot the other filesystems. After boot, all of the other filesystems are mounted at standard mount points as subdirectories of the root. |
| **/bin** | Contains essential command binaries. |
| **/boot** | Consists of the static bootloader, kernel executable, and files required to boot the Linux OS. |
| **/dev** | Contains device files to facilitate access to every hardware device attached to the system. |
| **/etc** | Local system configuration files. Configuration files for installed applications may be saved here as well. |
| **/home** | Each user on the system has a subdirectory here for storage. |
| **/lib** | Shared library files that are required for system boot. |
| **/media** | External removable media devices such as USB drives are mounted here. |
| **/mnt** | Temporary mount point for regular filesystems. |
| **/opt** | Optional files such as third-party tools can be saved here. |
| **/root** | The home directory for the root user. |
| **/sbin** | This directory contains executables used for system administration (binary system files). |
| **/tmp** | The operating system and many programs use this directory to store temporary files. This directory is generally cleared upon system boot and may be deleted at other times without any warning. |
| **/usr** | Contains executables, libraries, man files, etc. |
| **/var** | This directory contains variable data files such as log files, email in-boxes, web application related files, cron files, and more. |

## 📑 Features of Linux

- **Open Source**.
- **Faster** as compared to OS like **Windows** or **MAC**.
- **More Secure** in case of using it of any specific purpose.

## 👩🏻‍💻 Getting Started - Basic Commands 📄

🔖 Let's get started with some basic operations that we can perform over to the use of **Linux Terminal**, doing the same operation from GUI side by side ! Below we have some commands that are used for performing these **Basic Operations** in the **Terminal**.

📌 **pwd** → It is basically used for getting the current **location** of yours or your **Current Directory** with full path. You can check that easily, by opening the folder in the Explorer !

```bash
pwd
```

💻 It would provide you some **Output** like, `/home/htb-ac-2136676`

📌 **ls** → It simply provides us **List** the content available in our current directory. Inlcudes all the **files** & **directories** available in our current directory. In **GUI**, you can do the same for checking by opening the folder of that particular **Directory**.

```bash
ls
```

💻 **Output** → `cacert.der  Documents  Music     Public     Videos  Desktop  Downloads  Pictures  Templates`.

📌 **cd** → It basically stands for **Change Directory** and is used for changing the current directory for doing different operations in other specific directory. Also we can do the same in case of **GUI** by **Double-Clicking** the specific directory where we wanted to go !

```bash
cd directory_name
```

💻 **Output** → `[eu-academy-2]─[10.10.14.43]─[htb-ac-2136676@htb-j5fimxqzba]─[~/Documents]`

🔖 **Note** → For checking or confirmation that you are in that specific directory whose path you have given, you can check that with the help of **ls** command for listing the data of that directory in order to get the confirmation from **GUI** also.

▶️ For getting back to previus directory without actually knowing the name of it, or just for going it we can use the command given below 👇🏻

```bash
cd ..
```

💻 **Output** → `[eu-academy-2]─[10.10.14.43]─[htb-ac-2136676@htb-j5fimxqzba]─[~]`

▶️ For getting to the **Root** directory we generally need to use `cd ..` command until or unless we get **/** as our current directory.

🔖 **Note** → You can also check the content of the **Root** directory with the help of **ls** when you reach at **/** directory. You can also check the current directory by using `pwd` command in the **Terminal**.

## 👩🏻‍💻 Today's Task

📌 You need to go from **/** i.e. from **Root Directory** to `/home/htb-ac-2136676` directory, you can either do this with single or dual command, drop your answer in the **Discussion Page** of this Repository, & Peace On !