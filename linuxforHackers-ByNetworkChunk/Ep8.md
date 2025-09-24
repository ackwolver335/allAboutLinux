# Day 8 - 🖥️ Getting Web Servers on Linux

→ In this session, we're going to start workign or initiating a website via **Linux** or its **Terminal**, then we'll be covering different ports and related services on the websites to do it through Linux. Also using different available tools for it doing it faster in short time interval through it. Let's roll and start getting inside of it ! Commands that we're going to enroll in is **curl** and **wget** for gathering resources for their usage !

## ⌨️ Getting started with Server

→ Initially we're going to learn through first starting our server, with the help of our in-built **Python** environment creating and starting our virtual server through our Linux **Terminal**. Guide is below for starting it through the use of **Python**.

```bash
python -m http.server               # remember this is the local server you can checkout if it is running or not through the browser

# we can do the same thing with the use of PHP
php -S ip_address/127.0.0.1

# another same method for php if the above one doesn't works
php -S ip_address/localhost:port_number

# doing the same thing using the npm node package manager
npx http.server -p port_number

# for checking it in the browser you can type the url given below
localhost:port_number               # port number will be shown in 4-digit in the terminal only
```

→ **Note** : We can checkout locally on our desktop about the details of our system via a Browser like checking out our own Website, regarding information gathering or doing some other necessary stuff. We can also specify any other port if we wanted to while running our local server in it !

📌 Running Local Server on our Own Port :

```bash
python -m http.server port_number               # we can access the data over to the browser in the similar way by opening the localhost and port
```

## 📑 Running our Own WebPage

→ We can also run our own page or our page on our local server by creating it inside a folder/directory and running or initiating the server inside that particular directory that will show and run the server through that particular directory. Below we have the line by line **Guidence** in command for it !

```bash
# creating and changing the directory
mkdir website-project
cd website-project

# creating a file for webpage with some code in it
nano index.html                                                 # it will open the editor after creating the file, you can add some code in it

# running the server
python -m http.server port_number
```

📌 Initiating an Apache Server

→ We have intiated a server using different operators like, *python*, *php*,..etc. Now its time for initiating using **Apache2** but it runs that on default port of **80**, let's change its configuration from the file of its conf at `etc/apache2/port.conf` in order to change the port from it, from where it was listening at !

```bash
# changing the configuration in apache server
sudo nano /etc/apache2/ports.conf                           # now the nano editor will get opened and can be edited the port if you wanted to

# for running either you can also use sudo before the command given below
systemctl start apache2                                     # it will ask you your password for authentication purpose in order to start this service
```

## 🖥️ Curl & Wget

→ **curl** : It is used for gathering information at the client side as it stands for **Client URL**, means with the help of url or link we can gather information from the site using this command. It can be mainly used for *Downloading* files from the **URLs** that we're going to use it on ! URLs like, http, https, ftp, fttps, stp,..etc and so on can be used with it !

→ Let's try opening the site on our **Terminal** only, using this **curl** command !

```bash
curl url_link               # will open the site's code in your Terminal only

# opening the site in a file and details generated
curl -o fileName url_link                               # this will save the data in given filename in that current directory

# for getting just simple detailed format information we can use the following command
curl -I url_link

# for getting verbose related details we can use the switch given below
curl -v url_link
```

→ **wget** : It is used for gathering information about the data that is on that particular **url_link** that is being provided while using the specific command. We can do more with the commands using its different methods, some of its usecases are listed below !

```bash
# getting the file downloaded and data displayed over to the Terminal Window
wget url_link
```

## 🖥️ Today's Task

→ Task is simple try running different localhost:port_number using different ports or on different ports that you're going to use it in future. Also try getting details of them by the use of **curl** and **wget**. That's the only simple way for beginners to gather data from around !