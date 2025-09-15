# 2️⃣ Linux for Hackers - In Depth File System

▶️ In this Episode, we're just going to learn some advance and general purpose commands used for performing different file's related operations. This included **copying** a file, **moving** it to another folder, **clearing** the **Terminal's** screen and so on,.. but before this you must learn the **File System** listed below 👇🏻

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

## 👩🏻‍💻 Getting Started - General Commands 📄

📌 Let's get started by launching our **Linux Terminal** right from the **Top Panel** available in our Linux GUI. And begin with some amazing **Terminal's** commands listed below regarding different operations, checkout 👇🏻

▶️ **whoami** → It generally tells us that **Who are you ?**, in simple words your **User Name** from which you are **Logged In** to the System. For checking it through **GUI** you need to go through the File Explorer to check it even in **Windows** and other **OS**.

```bash
whoami
```

💻 **Output** → `htb-ac-2136676`

▶️ **clear** → Oftenly used by the **Users** for clearning the **Terminal's Screen** in order to get back at the Top of it, similar to getting inside an empty folder in case of **GUI**.

```bash
clear
```

🔖 **Note** → Here we just get our **Screen Cleared** don't get any kind of specific output on the screen, *Just got Cleard*. We can do the same with **Ctrl+L**.

📌 **/bin** → At this specific location, we'll find all the files that actually are contained in **Binary Format**, and contains the files of these **Commands** that we have used till now in our **Terminal**. We can go inside them after root in **bin** folder.

🔖 **Instruction** to go through these files or path way 👇🏻

```bash
cd .. # untill you get to the root directory /
```

🔖 When you reach your **Root** directory i.e. **/** go inside **bin** folder and then you'll surely get the output as shown below 👇🏻

`'['                                   gnome-browser-connector-host           montage-im6.q16              rediff
 1password2john                       gnome-calculator                       more                         redis-benchmark
 411toppm                             gnome-calendar                         mosquitto2john               redis-check-aof
 7z                                   gnome-characters                       mount` and so on...

▶️ **cat** → It is used for checking the content available inside a particular **file**, also it stands for **Concatenate**. So, on the place of going and opening a file from our **GUI**, we can do the same in the Terminal after the use of this command called **cat**. Below we have the example for it !

```bash
cat ls
```

🔖 **Output** →
`/lib64/ld-linux-x86-64.so.2GNU��GNU��29�|;�k.;n@d888 P�ڹ�GNUj��H�6 �R �jklnoprsuvx{|}~�Pv�3����|�����,cr��<����O��9�L>�
                                                                                                                       �bA�1 �>[���~j�u8��f_���e�m���`=)��DF��>]��q ��v8���f��
                       Z��t���
                              ��lR��]�<#E+N��Jy,��R��KL X1������BU���p�|�6��oX5�����y, G&(Z�z��eE��!%a�J&��@6��`Jx�!0� J7X��H#��"_�H-`


▶️ **cp** → It is generally used for **Copying** files with specific names in its format, also sometimes we need to have **please** in order to copy that file in **System Directories**, for that purpose we have another specific command combinations.

```bash
cp file_name_to_copy new_file_name
```

👩🏻‍💻 **Note** → If the above command doesn't works we need to give a **System Reference** in order to give a permission for making changes in **System Files or Directories**. 

```bash
sudo cp old_file_name new_file_name
```

🔖 **Note** → Now I have used command `sudo cp ls newFiel` in order to copy the ls **List** file in order to make a copy before removing it, from the **System Directories**. Now we can also use newFiel on the place of **ls** for listing the **files** & **directories** of the current directory.

```bash
newFiel
```

👩🏻‍💻 **Note** → Now the above command `newFiel` will work same as `ls` command.

▶️ **rm** → It is used for **removing** the files or empty directories from the **Current** directory. But, here also it doesn't works similar in case of using it in the **System Directories** or **Files**. So, for **deleting** or **removing** normal files from **User** folders, we can use the command shown below 👇🏻

```bash
rm file_name
```

🔖 **Note** → In case, you're in system folder, you can use the command given below 👇🏻

```bash
sudo rm file_name
```

📑 **#Important** → You can check the file by using `ls` in your current directory.

▶️ **sbin** → It stands for **SuperBin**. The commands available here are generally used by the **Administrators** in order to **Administor** the system. It is similar to running any application in **Window's GUI** by giving the **Administration's Permission**.

→ First we're getting inside **/sbin** after reaching the **Root** Directory.

```bash
cd sbin
```

🔖 **Note** → You can check the content that is available inside of it like **Files** or **Directories** by using `ls` command after getting inside this specific directory called **sbin**.

▶️ **adduser** → Generally used by the **Administrator** in order to create a new user for using that particular **OS**. This can also be done from the **GUI**, but we need to know the options and different **GUI Stuff**. Remember we are going to add a new user that is changes in **OS** configuration that means we need to use **sudo** in our command, here also.

```bash
sudo adduser userName
```

🔖 **Note** → On using the above command, we also need to set other **Credentials** like **Password**, **Username**, **FullName**, ..etc. that are required for setting a user for using an **OS**.

- **Note** → Remember that using a **bin** or **sbin** from either the **Root** Directory or the **/usr** directory are almost same, but in case of **/usr** directory we can assume or there is actually some more commands available for performing different functions or operations from the user.

#### Commands from /bin or /usr/bin ??

▶️ **which** → Used for checking from where the general commands like **ls** or **pwd** are getting used or utitlised ! In case of doing the same thing with the help of GUI, we can do by moving on to different folders and files inside the user directory and files.

```bash
which command_here
```

🔖 **Output** → `/usr/bin/ls`

📌 **#Important** → Inside the **/** root directory, we also have some other useful directories like **lib** that contains all necessary required library files for running different programs in the system, **boot** this directory contains the files and directories that are required at the timing of **Booting** and **OS**, **var** containing the log files regarding different **thumbnails** or **Blueprints** of the data, **temp** files that contains the temporary files which are deleted when the system get **Rebooted**.

▶️ Checking the number of **Users** available ??

→ We can easily check that by following the command instructions given below 👇🏻 Also for doing it we just need to check the available **Directories** in the **/home** folder after the root i.e. **/** directory. Let's check the example,

```bash
cd home
ls
```

🔖 **Output** → `kali  newKali` here we have two users one with **kali** and another **newKali** as its **Username**.

▶️ Checking **files** available for our devices or Hardware connected to Linux ??

→ We can easily do that by going inside the **/dev** directory available inside the **/** root directory of our **System**. Similar to going inside the **/home** directory we can go inside the **/dev** directory to find the devices and related information to it.

```bash
cd dev
ls
```

🔖 **Output** →
```bash
autofs         cpu_dma_latency  hidraw0       mapper  ptmx    sg1       tty0   tty17  tty25  tty33  tty41  tty5   tty58  tty9     userfaultfd  vcs6   vcsa6  vcsu6        vsock
block          cuse             hpet          mem     pts     shm       tty1   tty18  tty26  tty34  tty42  tty50  tty59  ttyS0    vboxguest    vcs7   vcsa7  vcsu7        zero
bsg            disk             hugepages     mqueue  random  snapshot  tty10  tty19  tty27  tty35  tty43  tty51  tty6   ttyS1    vboxuser     vcs8   vcsa8  vcsu8
btrfs-control  dma_heap         hwrng         net     rfkill  snd       tty11  tty2   tty28  tty36  tty44  tty52  tty60  ttyS2    vcs          vcsa   vcsu   vfio
bus            dri              initctl       null    rtc     sr0       tty12  tty20  tty29  tty37  tty45  tty53  tty61  ttyS3    vcs1         vcsa1  vcsu1  vga_arbiter
cdrom          fb0              input         nvram   rtc0    stderr    tty13  tty21  tty3   tty38  tty46  tty54  tty62  udmabuf  vcs2         vcsa2  vcsu2  vhci
char           fd               kmsg          port    sda     stdin     tty14  tty22  tty30  tty39  tty47  tty55  tty63  uhid     vcs3         vcsa3  vcsu3  vhost-net
console        full             log           ppp     sda1    stdout    tty15  tty23  tty31  tty4   tty48  tty56  tty7   uinput   vcs4         vcsa4  vcsu4  vhost-vsock
core           fuse             loop-control  psaux   sg0     tty       tty16  tty24  tty32  tty40  tty49  tty57  tty8   urandom  vcs5         vcsa5  vcsu5  vmci

```

🔖 **Note** → For checking the data inside any particular **Device** we can just do that with the help of `sudo cat device_name`

▶️ Checking **files** available for our **Network** connected to Linux ??

→ The network related information of our system that is been used in it are generally stored inside the **/etc** folder inside the **/** root directory of the System. It is called as **etsy** directory or the files inside it are called as **etsy files**. 

```bash
cd /
cd etc
ls
```

🔖 **Output** →
```bash
adduser.conf              cupshelpers          grub.d           ld.so.conf.d        mtab               powershell-empire  selinux            theHarvester
alsa                      dbus-1               gshadow          legion.conf         mysql              ppp                sensors3.conf      tightvncserver.conf
alternatives              dconf                gshadow-         libao.conf          nanorc             profile            sensors.d          timidity
apache2                   debconf.conf         gss              libaudit.conf       netconfig          profile.d          services           tmpfiles.d
apparmor                  debian_version       gtk-2.0          libblockdev         netsniff-ng
```

📑 **#Important** → We can also check the network details by going inside the **network** folder and then by opening the **interfaces.d** file, here all over information related to the Network and their details are mentioned.

## 👩🏻‍💻 Today's Task

📌 You need to create **flash Cards** of all the commands that are introduced in this **session** or **Markdown file**, also to use them in further different ways in order to learn more information mind of your owns and keep them in your notes.