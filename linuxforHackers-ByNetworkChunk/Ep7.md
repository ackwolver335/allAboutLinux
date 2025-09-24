# Day 7 - Killing Linux Processes

▶️ In today's session we're going to learn, basically **How to kill processes in Linux ?** & the twist here is we're going to face all of this without depending on any normal or specific version of the Linux. Let's get started for killing or stopping linux processes that are already running in our current **Linux** Distros. Also we have different kinds of processes in our system, first one is **foreground** and another one is **background**.

→ In order to check the currently running processes in our **OS** we can check it through, the command given below, follow up and check the output goes same as in order as it is shown below 👇🏻

```bash
ps
```

🔖 **Output** :

```bash
PID TTY          TIME CMD
   1602 pts/0    00:00:00 zsh
   1615 pts/0    00:00:00 ps
```

→ **Note** : This will only tell about those processes that are currently running in our **Terminal**, also if we wanted to go for specific one, we can follow up through below 👇🏻

🤔 **Doubt** → What if I wanted to check those **Processes** that are running for my **User** or in my **User** directory **?**

→ It can be done with the help of initiating a parameter, and providing the user's name after as per the rule of using that particular parameter. Its usecase or example is been given below 👇🏻

```bash
ps -u username
```

🔖 **Output** :

```bash
PID TTY          TIME CMD
    984 ?        00:00:00 systemd
    986 ?        00:00:00 (sd-pam)
   1006 ?        00:00:00 dbus-daemon
   1007 ?        00:00:00 pipewire
   1008 ?        00:00:00 pipewire
   1010 ?        00:00:00 gnome-keyring-d
   1011 ?        00:00:00 mpris-proxy
   1013 ?        00:00:00 wireplumber
```

→ We can also find that for specific **File/Software/Application** for which we actually wanted to check, command overview and usecase given below 👇🏻

```bash
ps -u username | grep software/application_name
```

🔖 **Output** :

```bash
1171 ?        00:00:00 ssh-agent
1180 ?        00:00:00 gpg-agent
1264 ?        00:00:00 agent
```

🤔 **Doubt** : What if I wanted just the **PID** of a particular process, not the other stuff **??**

→ In order to just find a particular **PID** of a particular **Process**, we can use the command given below 👇🏻

```bash
pgrep process_name/software/application_name                # it is the combination of process and grep command in order to find PID
```

## 🔪 Killing a Process ??

▶️ In simple words, this process for killing a particular process is been executed in case, if it is not working properly or get stuck at one point. In other words, it is not working in proper behaviour or manner. So, below we have the **Guidence**, *How to kill a particular process ?*

```bash
kill PID                # the simplest command that you have ever heard of kill
```

## 👩🏻‍💻 Different Ways for Help 📑

→ In case of getting help for the usage of process related commands, we can't do just `ps --help` it will show us different ways to get help with. Let's talk about it after getting different ways first with the **Terminal** that we're using right now !

```bash
ps --help
```

🔖 **Output** :

```bash
Usage:
 ps [options]

 Try 'ps --help <simple|list|output|threads|misc|all>'
  or 'ps --help <s|l|o|t|m|a>'
 for additional help text.

For more details see ps(1).
```

### 📌 Methods for Help

→ **Simple** : It will provide us the simple parameters as per its name as per finding the process related details that are actually working and that we actually need to find out let's take a look at its actual view only that it provides to us !

```bash
ps --help simple
```

🔖 **Output** :

```bash
Usage:
 ps [options]

Basic options:
 -A, -e               all processes
 -a                   all with tty, except session leaders
  a                   all with tty, including other users
 -d                   all except session leaders
 -N, --deselect       negate selection
  r                   only running processes
  T                   all processes on this terminal
  x                   processes without controlling ttys

For more details see ps(1).
```

→ **list** : It is used in case we wanted to find the processes that are contained in a specific list category. The **list** option is available for using the `ps` command to find the processes in combined list categories. Let's take a look at its usage **Guide**.

```bash
ps --help list
```

🔖 **Output** :

```bash
Usage:
 ps [options]

Selection by list:
 -C <command>         command name
 -G, --Group <GID>    real group id or name
 -g, --group <group>  session or effective group name
 -p, p, --pid <PID>   process id
        --ppid <PID>  parent process id
 -q, q, --quick-pid <PID>
                      process id (quick mode)
 -s, --sid <session>  session id
 -t, t, --tty <tty>   terminal
 -u, U, --user <UID>  effective user id or name
 -U, --User <UID>     real user id or name

  The selection options take as their argument either:
    a comma-separated list e.g. '-u root,nobody' or
    a blank-separated list e.g. '-p 123 4567'

For more details see ps(1).
```

→ **output** : It is used in order to get the details ready in output format, also in order to get the detailed output on a specific process that is actually running currently in our system, either with its name or by its **PID**. Below we have its usage **Guide** !

```bash
ps --help output
```

🔖 **Output** :

```bash
Usage:
 ps [options]

Output formats:
 -D <format>          date format for lstart
 -F                   extra full
 -f                   full-format, including command lines
  f, --forest         ascii art process tree
 -H                   show process hierarchy
 -j                   jobs format
  j                   BSD job control format
 -l                   long format
  l                   BSD long format
 -M, Z                add security data (for SELinux)
 -O <format>          preloaded with default columns
  O <format>          as -O, with BSD personality
 -o, o, --format <format>
                      user-defined format
  -P                  add psr column
  s                   signal format
  u                   user-oriented format
  v                   virtual memory format
  X                   register format
 -y                   do not show flags, show rss vs. addr (used with -l)
     --context        display security context (for SELinux)
     --headers        repeat header lines, one per page
     --no-headers     do not print header at all
     --cols, --columns, --width <num>
                      set screen width
     --rows, --lines <num>
                      set screen height
     --signames       display signal masks using signal names

For more details see ps(1).
```

→ **threads** : By its name it is used in order to get the details of the processes that are running related to **thread** or running on a particular thread, or thread related process details can be gathered by using this approach, and the **Guide** given below regarding it !

```bash
ps --help threads
```

🔖 **Output** :

```bash
Usage:
 ps [options]

Show threads:
  H                   as if they were processes
 -L                   possibly with LWP and NLWP columns
 -m, m                after processes
 -T                   possibly with SPID column

For more details see ps(1).
```

→ **misc** : It is used in order to get the details of any miscelleneous category of processes in order to get it sorted, scheduled or any other guidence. In order to get the **Guide** you can follow up further below 👇🏻

```bash
ps --help misc
```

🔖 **Output** :

```bash
Usage:
 ps [options]

Miscellaneous options:
 -c                   show scheduling class with -l option
  c                   show true command name
  e                   show the environment after command
  k,    --sort        specify sort order as: [+|-]key[,[+|-]key[,...]]
  L                   show format specifiers
  n                   display numeric uid and wchan
  S,    --cumulative  include some dead child process data
 -y                   do not show flags, show rss (only with -l)
 -V, V, --version     display version information and exit
 -w, w                unlimited output width

        --help <simple|list|output|threads|misc|all>
                      display help and exit

For more details see ps(1).
```

→ **all** : It is the one **Guide** that is available for using or getting all kinds of particular processes details whether we wanted it in **Groups** or in any kind of miscelleneous activity. Below we have the command to use it, and the output is not shown cause, in the output all the commands guide that was shown seperately till now is given at once as it is.

```bash
ps --help all
```

## Monitoring Linux Process ⌨️

→ We also have some commands to get it monitor different processes that are actually running on our Linux Machine and that can be done through our **Terminal** only, just by the use of our Linux Terminal we can check which process in considering *How much amount of CPU, RAM,..etc ?* let take a look and use it one by one !

```bash
# just getting the processes details
top

#  getting the live working view from all of it
htop
```

## Background & Foreground Processes

📌 **Foreground Processes**

→ First we're going to use the **ping** for getting the details from a server in our **Terminal** (Foreground). Let's check for `google.com` as per the guidence given below ! As this is foreground we can do anything unitl this particular foreground process is running currently !

```bash
ping -c 100 server.com                      # here -c stands for count 100 is the number to count and server.com is the site for checking it
```

→ I have asked the ping for 5 times from **google.com** via `ping -c 5 google.com`, and this happened !

```bash
PING google.com (142.250.194.14) 56(84) bytes of data.
64 bytes from del12s01-in-f14.1e100.net (142.250.194.14): icmp_seq=1 ttl=255 time=7.93 ms
64 bytes from del12s01-in-f14.1e100.net (142.250.194.14): icmp_seq=2 ttl=255 time=6.36 ms
64 bytes from del12s01-in-f14.1e100.net (142.250.194.14): icmp_seq=3 ttl=255 time=4.85 ms
64 bytes from del12s01-in-f14.1e100.net (142.250.194.14): icmp_seq=4 ttl=255 time=5.49 ms
64 bytes from del12s01-in-f14.1e100.net (142.250.194.14): icmp_seq=5 ttl=255 time=6.52 ms

--- google.com ping statistics ---
5 packets transmitted, 5 received, 0% packet loss, time 4359ms
rtt min/avg/max/mdev = 4.853/6.229/7.925/1.041 ms
```

→ **sleep** : As per its word, we have this particular command or `foreground` process that we can consider for running in Terminal till then the Terminal gets paused we can't get any response even if we type any command in it, checkout the command or **Guide** below 👇🏻

```bash
sleep time_in_seconds
```

→ **Note** : Remember if you want to quit any foreground running process we can do it with the use of a shortcut **CTRL + C**. We can also use a shortcut to sleep any particular process and get that closed or stopped one with the help of `jobs` command, by first stopping it with shortcut **CTRL + Z**. We have a view for it provided and done below ! In other words we can turn that into **Sleep** mode whatever task it is assigned, but we can also reassign it.

```bash
(kali㉿kali)-[~]
└─$ ping -c 10 google.com
PING google.com (172.217.24.78) 56(84) bytes of data.
64 bytes from hkg07s46-in-f14.1e100.net (172.217.24.78): icmp_seq=1 ttl=255 time=4.11 ms
64 bytes from hkg07s46-in-f14.1e100.net (172.217.24.78): icmp_seq=2 ttl=255 time=3.82 ms
^Z
zsh: suspended  ping -c 10 google.com
                                                                                                                          
┌──(kali㉿kali)-[~]
└─$ jobs          
[1]  + suspended  ping -c 10 google.com
```

### 👩🏻‍💻 Converting foreground Process to Background Process

→ We can do that by simply using the command below for convertion of the **fg** process to **bg** process together by using the job number that it is assigned to ! Below we have the command guide for it !

```bash
bg job_number           # here you can find the job number by using the job command
```

→ **Note** : After using the command given above the *fg* process is now became a *bg** process and we can't stop it right now by using **CTRL + C**. For stopping it first we need to use `fg job_number` and then enter, now it will be running, but it has become a `fg` process again and can be stopped using **CTRL + C** or **CTRL + Z** for getting it paused or in sleep mode. We can also do that by starting and assigning multiple jobs and making them **fg** and **bg** process together by switching in b/w.

→ **#Important** : We can also create any process directly a **bg** process by the use of command that is given below 👇🏻

```bash
ping -c 100 google.com &        # in simple format process &
```

→ **Note** : We can also checkout any particular processes that we have turned in the sleep mode, after using the **CTRL + Z** and then by checking it in the list of all the processes that are shown using the **ps** command. We can checkout that using `ps -ax` command.

→ **#Important** : For checking all the possible signals or parameters that we can use together by using the kill command, we can use the **kill -l** for listing them all at once in the **Terminal**. And the default parameter that is used with it, even if we don't actually use any parameter is **SIGTERM**. Below we have the command or guide for killing a particular process !

```bash
kill -9 PID

# for killing all processes by names
pkill -9 process_name
```

## 🖥️ Today's Task

→ Try creating and killing different processes using all over the guidence given above, and try different ways of doing it, either by using the **PID** or by killing the processes by their names **process_name**. Creating and managing processes is the best task to do before we initiate our Journey in Linux !