# 🗃️ Getting our Services Down 👩🏻‍💻

▶️ In this session, we're going to learn how we can create our services running, together by learning **How to Stop Services in Linux ?** Different categories of services available in our Linux Operating System. Including different tools to perform operations on it. In Linux to the services we name them as **Daemons**. [Operations like **Start**, **Stop**, **Reload**,..etc and so on.]

### #️⃣ Some Important Keypoints to Remember

→ **Processes** : In simple words, we can consider them as running instance of **Programs**. Running any particular **Program/Software** will let you show what you're opening and what is running in background ! Below we have the **Command** for checking the processes that are actually running in our Linux Machine right now !

```bash
ps -aux
```

🔖 Below we have the **Output** for it :

```bash
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.3  0.3  23864 14584 ?        Ss   02:57   0:02 /sbin/init splash
root           2  0.0  0.0      0     0 ?        S    02:57   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        S    02:57   0:00 [pool_workqueue_release]
root           4  0.0  0.0      0     0 ?        I<   02:57   0:00 [kworker/R-kvfree_rcu_reclaim]
root           5  0.0  0.0      0     0 ?        I<   02:57   0:00 [kworker/R-rcu_gp]
root           6  0.0  0.0      0     0 ?        I<   02:57   0:00 [kworker/R-sync_wq]
root           7  0.0  0.0      0     0 ?        I<   02:57   0:00 [kworker/R-slub_flushwq]
root           8  0.0  0.0      0     0 ?        I<   02:57   0:00 [kworker/R-netns]
```

## 📌 Time to filter out a specific process running in our Machine's **Background**.

→ Below we have the same command with some modifications in it, in order to search different or specific processes seperately.

```bash
ps -aux | grep process_name         # command for usage
```

→ Now, I m using the same command for running **VS Code** Editor for checking how complex it is running in our Machine's Background.

```bash
# I m running VS Code and checking its details in terminal with the command given below
ps -aux | grep code
```

🔖 **Output** for it is given below :

```bash
kali        2020  5.1  4.7 1461481136 192296 ?   SLsl 03:12   0:05 /usr/share/code/code
kali        2026  0.0  1.2 33803808 49396 ?      S    03:12   0:00 /usr/share/code/code --type=zygote --no-zygote-sandbox
kali        2027  0.0  1.2 33803800 49760 ?      S    03:12   0:00 /usr/share/code/code --type=zygote
kali        2029  0.0  0.3 33803828 12720 ?      S    03:12   0:00 /usr/share/code/code --type=zygote
```

→ **Note** : You can also check the process again, by running the same command again after closing that particular application for which you have checked for the number of **Processes** or **Sub-Processes** running for that **Application**.

## 📌 Making Changes in Daemons regarding **Start**, **Stop** and Other Operations.

```bash
nano daemons

# we can also check the details about the current nano editor that we have just used by the command given below
ps -aux | grep nano
```

→ **Note** : We can also consider that daemons are the processes that usually starts automatically when the **System** gets started or when there is a need of specific process to be started. The automated processes in other words are considered as **daemons**, for the users or beginners. These makes sure that the necessary processes that are required to run must be in running state in our Machine's Background. Remember a **daemon** service must be having a **d** at the end of that specific one. Example, **ssh** will be **sshd** if it is a daemon service. Also **systemd** is considered as the daemons which is above all the processes running in the background.

→ **systemd** : The Daemon process above all the available daemons, usually provides the direction to all the other sub-processes, that are required to be in running state for specific purpose.

📌 **pstree** → It is the command that is used to get a look of processes's tree that provides us the view regarding all the major and sub-processes that are actually running in the background of the **System**. Below we have a working example and view for it.

```bash
pstree
```

🔖 **Output** for it :

```bash
systemd─┬─ModemManager───3*[{ModemManager}]
        ├─NetworkManager───3*[{NetworkManager}]
        ├─3*[VBoxClient───VBoxClient───3*[{VBoxClient}]]
        ├─VBoxClient───VBoxClient───4*[{VBoxClient}]
        ├─VBoxService───8*[{VBoxService}]
        ├─accounts-daemon───3*[{accounts-daemon}]
        ├─agetty
        ├─colord───3*[{colord}]
        ├─cron
        ├─dbus-daemon
        ├─haveged
        ├─lightdm─┬─Xorg───{Xorg}
        │         ├─lightdm─┬─xfce4-session─┬─Thunar───4*[{Thunar}]
```

→ **Note** : Systemd generally considered the sub-processes running under it as **Units**, on the place of processes or sub-processes or **daemons**. 

## 📌 Services or Basic Operations used in **Systemctl** :

→ **Starting Services** : Basically, we can start any particular service, that we wanted to in order to use it in our system. We use the command given below for starting any particular **Service**. Here we uses the **Systemctl** for starting any service due to being the **Boss** of all the Services which are running in our Device.

```bash
systemctl start service_name
```

→ **Stopping Services** : We have the similar parameter for stopping any already running service, just by the different of change in a particular parameter we uses this format which is given below ! Similar to starting a particular service, in case of stopping the service also we requires **systemctl** in our command format.

```bash
systemctl start service_name
```

→ **Restarting Services** : It is quite different from all the cases of using operations on **Processes** of the services. In case of restarting any particular service, the service is first stopped and then started again, so on the place of stopping any service and then starting we can just restart the service on the place first stopping and then starting it. Below we have the direction on **How to use it ?** or **The Command for it !**.

```bash
systemclt restart service_name
```

→ **Reloading Services** : It is an alternative of doing the restart, but there is a difference according to me, that in case of reloading we just load the service on the place of loading it from **Scratch**. Below we have the direction for its use-case. Remember it doesn't works for all the services that are available in our system.

```bash
systemctl reload service_name
```

🔖 **Alternative** for using reload command safely :

```bash
systemctl reload-or-restart service_name
```

→ **Note** : In all the cases of performing any kind of Operations on servides, it will ask the user's password of our current **System**. Also we can use the **sudo** command before all of these command in our to use these command in **Administrator** mode or view.

## 📌 Starting & Stopping at System Boots

→ **Disbaling Services** : It is literally a different task from other operations performed on the available services, in case of disabling any particular service it is actively running in its status, but it will not get active again once, the system gets reboot. After the next boot of your system, the service will not get run on when all other services will be running on auto startup. Below we have its use-case or example for using it.

```bash
systemctl disable service_name
```

→ **Note** : You can check it, if it is disabled or not by using the command *systemctl status service_name*.

→ **Enabling Services** : It is used for doing the vice-versa task of the above. Used of enabling the services in case, when the system gets boots up again then the service will gets started automatically with the other necessary services which are necessarily required for running the system smoothly without any kind of errors.

```bash
systemctl enable service_name
```
→ **Note** : In case you just wanted to check if any service is active or not (also for enabled or not) on the place of the whole stuff that comes all its like the **PID** or the **enable**/**disable** of that particular service, we can use the command given below !

```bash
systemctl in-active service_name            # you can include the sudo command before it if you wanted to !

# similar one for checking if the service is enabled or not just
systemctl in-enabled service_name
```

📌 Checking the list of daemon process that are running currently ?

→ **list-units** : Now, with the command given below we can check the list of all the daemon processes that are currently running in our system with the command given below 👇🏻 Also we have the use-case or example given below !

```bash
systemctl list-units            # for systemctl all the sub-processes or daemons are considered as units
```

→ **Note** : We can also checkout the active services that are currently running in our system, with the use of command which is given below !

```bash
systemctl list-units -t service

# for checking specific type services by using naming filter for it
systemctl list-units | grep service_name                                                # will only show the service if it is active

systemctl list-units --all | grep service_name                                          # will show all the service with this name even if it is inactive
# all the above will only be shown only if there are loaded in the memory

# for listing all the files that are not even loaded in the memory
systemctl list-unit-files | grep service_name                                          # will show all the services even if those are not loaded in memory

# in the similar way of using systemctl we can also use a service itself called as Journel CTL
journelctl -xe                                                                          # we need to active our ngnix service before we start using our jorunelctl service
```

## Today's Task 👩🏻‍💻

→ Start using the things in it, with the commands shown above also be cared about the different services by starting and stopping them, enabling disbaling them on different shorts of views.