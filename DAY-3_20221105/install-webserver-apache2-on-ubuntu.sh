#!/bin/bash

# Basic & Advanced Commads 

hostname

hostname -I 

cat /etc/os-release 

uname -a 

free -m 

cat /proc/cpuinfo

cat /proc/meminfo

df -TH


# File & Directory Mgmt
touch file_name

cat file_name

head file_name

tail file_name

more file_name

less file_name

# Permissions
chmod 
    - Symbolic : u g o = - + 
    - Absolute : - 0 1 2 3 4 5 6 7 

chmod u=r-- cloudbinary-keys.pem

chmod 400 cloudbinary-keys.pem

# User & Group Management

# User Database Files in Linux/Unix
grep apache2 /etc/password /etc/shadow 

# Group Database Files in Linux/Unix
grep apache2 /etc/group /etc/gshadow 

# Package Management

dpkg -l 
dpkg -l | grep apache2 

apt update                  OR apt-get update 
apt install apache2 -y      OR apt-get install apache2 -y  

https://ubuntu.com/server/docs/package-management

# Controlling Services & Daemons

systemctl status apache2 
systemctl enable apache2 
systemctl start apache2 
systemctl restart apache2 

#  Log Management

/var/log/apache2/

#  Process Management

ps -aux | grep apache2

# To Host Your Code :

DocumentRoot : /var/www/html/

cd /opt/ 

git clone https://github.com/kesavkummari/kesavkummari-website-code.git

cd kesavkummari-website-code

ls -lrt 

cp -pvr * /var/www/html/

root@web:/opt/kesavkummari-website-code# cd /var/www/html

root@web:/var/www/html# pwd
/var/www/html

root@web:/var/www/html# ls -lrt
-rw-r--r-- 1 root root    65 Nov  5 05:20 README.md
-rw-r--r-- 1 root root 22238 Nov  5 05:20 index.html
-rw-r--r-- 1 root root  1951 Nov  5 05:20 devops.html
-rw-r--r-- 1 root root 20417 Nov  5 05:20 azure.html
-rw-r--r-- 1 root root 10617 Nov  5 05:20 aws.html
drwxr-xr-x 7 root root  4096 Nov  5 05:20 assets

Go to Browser : 
http://54.235.49.228/

# To Learn Any Command In linux:

root@web:~# id
uid=0(root) gid=0(root) groups=0(root)

root@web:~# whatis id
id (1)               - print real and effective user and group IDs

root@web:~# whereis id
id: /usr/bin/id /usr/share/man/man1/id.1.gz

root@web:~# man id 
