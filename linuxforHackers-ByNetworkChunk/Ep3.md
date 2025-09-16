# 3️⃣ Don't Stuck - Get Help

▶️ In this Markdown, we're going to learn about any situation in which we get stuck and get help, we can use this **file** in order to keep going through the learning of this workflow. Let's now learn about something new not to get stuck in any possible condition, we get **Stuck**.

🔖 **Note** → Initially, it is considered but it is actually called as **Terminal Emulator**. The Terminal is a common word that is been used by most of the **Developers** or **Coders**. It's main work is to give us access to do work based on the commands that we used to work with or provide as per our need and purposes.

## 💻 Important Key-Points 🗃️

▶️ **Shell** → The Actual things that we observe or work with the **Terminal** is **Shell**. Overall files, folders and other output that we see after providing a command is all based on the Shell, to which we provide the command inside the Terminal. In other words, it is called as **UI**. 

▶️ **Bash** → The Bash is considered as the one running, it generally stands for **Bourne-Again Shell**. We can even find out, which type of shell we're actually using in our **Terminal**.

📌 Let's get started with learning some commands related to **Terminal's Shell or Bash**.

## 📑 New Commands (Help) 👩🏻‍💻

🔖 **ps** → It generally stands for **Process Status**, used to check the processes running of our current **OS**. Also including the **Status** of current **Operating System**. We have **TaskBar Settings** in case of **Windows** if you want to check the same thing via **GUI**, also in other Linux Distributions also it is available in UI Application's Format.

```bash
ps
```

📌 **Output** →

```bash
 PID TTY          TIME CMD
   1507 pts/0    00:00:00 zsh
   1644 pts/0    00:00:00 ps
```

🔖 **id** → It generally tells about the **ID** and related details like, **group**, **id**,..etc related to the one user using the Terminal or the Operating System. In case you're using a **GUI** based **OS** you need to go to **Settings** in order to check these details.

```bash
id
```

📌 **Output** →

```bash
uid=1000(kali) gid=1000(kali) groups=1000(kali),4(adm),20(dialout),24(cdrom),25(floppy),27(sudo),29(audio),30(dip),44(video),46(plugdev),100(users),101(netdev),103(scanner),107(bluetooth),125(lpadmin),133(wireshark),135(kaboxer),136(vboxsf)
```

🔖 **hostname** → Generally tells the **HostName** to the one **User** using the Terminal at that particular timing. Simiply, we have the example of it below in order to have learning case 👇🏻

```bash
hostname
```

📌 **Output** →

```bash
kali
```

🔖 **uname** → It is used for getting the details of the **username** including others different things. Contains all data or the data regarding version of the distribution of a particular **OS**, you're using it.

```bash
uname # for getting name simply

uname -r # getting the details about the version of ditribution

uname -a # getting all details about the username
```

📌 **Output** →

```bash
Linux

6.12.38+kali-amd64

Linux kali 6.12.38+kali-amd64 #1 SMP PREEMPT_DYNAMIC Kali 6.12.38-1kali1 (2025-08-12) x86_64 GNU/Linux
```

🔖 **ifconfig** → It is basically used in order to get the details about **Network Stuff**, in order to check the details of every **Internet Connection** that is being used for getting your connection with the Internet.

```bash
ifconfig
```

📌 **Output** →

```bash
eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 10.0.2.15  netmask 255.255.255.0  broadcast 10.0.2.255
        inet6 fe80::49d6:77fd:ffad:b0fb  prefixlen 64  scopeid 0x20<link>
        inet6 fd17:625c:f037:2:d839:a503:78f9:1a20  prefixlen 64  scopeid 0x0<global>
        ether 08:00:27:d1:f8:5d  txqueuelen 1000  (Ethernet)
        RX packets 15  bytes 3776 (3.6 KiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 43  bytes 5873 (5.7 KiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 8  bytes 480 (480.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 8  bytes 480 (480.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
```

🔖 **ip** → It is used in order to get more detailed information about network details, we can consider that it works deeply and similar to the command **ifconfig**, below we have its general overview and detailed output with use case 👇🏻

```bash
ip
```

📌 **Output** →

```bash
Usage: ip [ OPTIONS ] OBJECT { COMMAND | help }
       ip [ -force ] -batch filename
where  OBJECT := { address | addrlabel | fou | help | ila | ioam | l2tp | link |
                   macsec | maddress | monitor | mptcp | mroute | mrule |
                   neighbor | neighbour | netconf | netns | nexthop | ntable |
                   ntbl | route | rule | sr | stats | tap | tcpmetrics |
                   token | tunnel | tuntap | vrf | xfrm }
       OPTIONS := { -V[ersion] | -s[tatistics] | -d[etails] | -r[esolve] |
                    -h[uman-readable] | -iec | -j[son] | -p[retty] |
                    -f[amily] { inet | inet6 | mpls | bridge | link } |
                    -4 | -6 | -M | -B | -0 |
                    -l[oops] { maximum-addr-flush-attempts } | -echo | -br[ief] |
                    -o[neline] | -t[imestamp] | -ts[hort] | -b[atch] [filename] |
                    -rc[vbuf] [size] | -n[etns] name | -N[umeric] | -a[ll] |
                    -c[olor] }
```

🔖 **netstat** → It is used for getting the status of the **Network** and related **Services** that we're using in our current **Operating System**. An example with proper use case is been given below 👇🏻

```bash
netstat
```

📌 **Output** →

```bash
Active Internet connections (w/o servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State      
udp        0      0 10.0.2.15:bootpc        10.0.2.2:bootps         ESTABLISHED
Active UNIX domain sockets (w/o servers)
Proto RefCnt Flags       Type       State         I-Node   Path
unix  3      [ ]         STREAM     CONNECTED     8777     /run/user/1000/bus
unix  3      [ ]         STREAM     CONNECTED     8712     /run/user/1000/bus
unix  3      [ ]         STREAM     CONNECTED     11637    
unix  3      [ ]         STREAM     CONNECTED     8165     
unix  3      [ ]         STREAM     CONNECTED     8044     @/tmp/.X11-unix/X0
```

🔖 **ss** → It is used for getting the **Session** related details that are currently running in our **Operating System**, in case we're using **GUI** based **OS** we can easily get it to by using **Taskbar** like applications available in our **OS**.

```bash
ss
```

📌 **Output** →

```bash
Netid           State            Recv-Q           Send-Q                                                      Local Address:Port                            Peer Address:Port             
u_str           ESTAB            0                0                                                      /run/user/1000/bus 8777                                       * 11292            
u_str           ESTAB            0                0                                                      /run/user/1000/bus 8712                                       * 10729            
u_str           ESTAB            0                0                                                                       * 11637                                      * 9051             
u_str           ESTAB            0                0                                                                       * 8165                                       * 10716            
u_str           ESTAB            0                0                                                      @/tmp/.X11-unix/X0 8044                                       * 10575            
u_dgr           ESTAB            0                0                                                                       * 4736                                       * 4737
```

🔖 **env** → The available **Environment Variables** that are currently available in our System Block can be check using this Command in **Terminal**.

```bash
env
```

📌 **Output** →

```bash
COLORFGBG=15;0
COLORTERM=truecolor
COMMAND_NOT_FOUND_INSTALL_PROMPT=1
DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus
DESKTOP_SESSION=lightdm-xsession
DISPLAY=:0.0
DOTNET_CLI_TELEMETRY_OPTOUT=1
GDMSESSION=lightdm-xsession
HOME=/home/kali
LANG=en_US.UTF-8
LANGUAGE=
LOGNAME=kali
```

🔖 **lsblk** → It is generally used for checking the available **Hard-Drive** Stuff in our Operating System that we're using right now ! Also provides detailed overview of the drives that are being used by the **System**.

```bash
lsblk
```

📌 **Output** →

```bash
NAME   MAJ:MIN RM  SIZE RO TYPE MOUNTPOINTS
sda      8:0    0 80.1G  0 disk 
└─sda1   8:1    0 80.1G  0 part /
sr0     11:0    1 1024M  0 rom
```

🔖 **lsusb** → It is used in order to check if any **USB** is plugged in to your device, it will show the relevant information regarding it like **size**, **name**,..etc. In case of **GUI** based **OS** we generally gets notification when any device or **USB** is plugged in it !

```bash
lsusb
```

🔖 **lsof** → It is used in order to check the number of **file** open in our **System** at that particular time. We have applications like **Task Manager** in case of using a **GUI** based **OS** for checking the same thing there.

```bash
lsof
```

📌 **Output** →

```bash
COMMAND    PID  TID TASKCMD         USER   FD      TYPE             DEVICE  SIZE/OFF    NODE NAME
systemd      1                      root  cwd   unknown                                      /proc/1/cwd (readlink: Permission denied)
systemd      1                      root  rtd   unknown                                      /proc/1/root (readlink: Permission denied)
systemd      1                      root  txt   unknown                                      /proc/1/exe (readlink: Permission denied)
systemd      1                      root NOFD      0000                                      /proc/1/fd (opendir: Permission denied)
```

## 📑 Helping Commands 🗃️

▶️ Now we're going to learn about some really helpful commands that are actually used to get the *help*, in case we got stucked while with any particular command. Also we just need to have their syntax and so on we'll get the parameters and format to use it.

🖥️ **man** → Basically it stands for **Manual** and is used in order to get manual about any particular command which we wanted to use for specific purpose, it included all the necessary **parameters** that are used in its format for performing specific operation. You can use this, if you wanted a brief overview on the usage of any particular command. Below we have an example for using this command or its use case 👇🏻

```bash
man uname # getting the manual about uname command
```

🔖 **Output** →

```bash
UNAME(1)                                                                              User Commands                                                                              UNAME(1)

NAME
       uname - print system information

SYNOPSIS
       uname [OPTION]...

DESCRIPTION
       Print certain system information.  With no OPTION, same as -s.

       -a, --all
              print all information, in the following order, except omit -p and -i if unknown:

       -s, --kernel-name
              print the kernel name

       -n, --nodename
              print the network node hostname

       -r, --kernel-release
              print the kernel release

       -v, --kernel-version
              print the kernel version

       -m, --machine
              print the machine hardware name

       -p, --processor
              print the processor type (non-portable)

       -i, --hardware-platform
              print the hardware platform (non-portable)

       -o, --operating-system
              print the operating system

       --help display this help and exit
```

🖥️ **h** or **help** →  It is used in a different format than **man** command in order to get the details and **help** about the usage of a particular command. As it differs from **OS** to **OS**, so we have just 2 different format to use it some linux version supports one and some supports other. It can be used in order to get a **Short** Description about the command that we wanted to use !

```bash
command_name -h or command_name --help
```

🔖 **Output** →

```bash
Usage: uname [OPTION]...
Print certain system information.  With no OPTION, same as -s.

  -a, --all                print all information, in the following order,
                             except omit -p and -i if unknown:
  -s, --kernel-name        print the kernel name
  -n, --nodename           print the network node hostname
  -r, --kernel-release     print the kernel release
  -v, --kernel-version     print the kernel version
  -m, --machine            print the machine hardware name
  -p, --processor          print the processor type (non-portable)
  -i, --hardware-platform  print the hardware platform (non-portable)
  -o, --operating-system   print the operating system
      --help        display this help and exit
      --version     output version information and exit

GNU coreutils online help: <https://www.gnu.org/software/coreutils/>
Full documentation <https://www.gnu.org/software/coreutils/uname>
or available locally via: info '(coreutils) uname invocation'
```

🖥️ **apropos** → It is used in order to find out the number of commands that are available for specific stuff or function. Likewise, if I wanted to search the command related to **usb** we can use this command to search all the available commands that are used to perform operations related to **USB**. Below 👇🏻 we have a usecase example for it !

```bash
apropos command_name
```

🔖 **Output** →

```bash
ipp-usb (8)          - Daemon for IPP over USB printer support
lsusb (8)            - list USB devices
sane-canon630u (5)   - SANE backend for the Canon 630u USB flatbed scanner
sane-canon_lide70 (5) - SANE backend for the Canon LiDE 70 and 600(F) USB flatbed scanners
sane-cardscan (5)    - SANE backend for Corex CardScan usb scanners
sane-epjitsu (5)     - SANE backend for Epson-based Fujitsu USB scanners
sane-find-scanner (1) - find SCSI and USB scanners and their device files
sane-genesys (5)     - SANE backend for GL646, GL841, GL843, GL847 and GL124 based USB flatbed scanners
```

## 🖥️ Power Shell 👩🏻‍💻

▶️ **PowerShell** → In case, we can also use the **PowerShell**, another type of shell used in Linux based on the **Window's Terminal**. It actually works similar to the one of **PowerShell** that we uses in Windows.

🔖 **Note** → The **$** sign represents that you are **User** logged in, and you're using **Shell** as a user of that **Operating System**. And in case you got a **#** on the place, it shows that you are a **Root User** that is using the **Terminal Shell**.

## 📑 Today's Task

📌 You need to check and learn every possible command in which you're doubted with, also keep the usage properly by learning from the format and manual given in the help desk also from the **Manual** provided by the **man** command.