#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo 'Script requires root privileges'
    exit 1
fi

package_install(){
    # Installing Metasploit

    sudo apt-get update 

    sudo apt-get install apache2 -y

    sudo systemctl start apache2

    sudo apt-get install mysql-server -y
    
    sudo systemctl start mysql

    sudo apt-get install vsftpd -y

    sudo systemctl start vsftpd

    sudo apt-get install telnetd -y

    sudo systemctl start telnet

    sudo apt-get install openssh-server -y

    sudo systemctl start ssh

    sudo apt-get install samba -y

    sudo systemctl start smbd

    sudo apt-get install postgresql -y

    sudo systemctl start postgresql

    sudo apt-get install mongodb -y

    sudo systemctl start mongodb

    sudo apt-get install nfs-kernel-server -y

    sudo systemctl start nfs-kernel-server

    sudo apt-get install rabbitmq-server -y

    sudo systemctl start rabbitmq-server

    sudo apt-get install redis-server -y

    sudo systemctl start redis

    sudo apt-get install tftpd -y

    sudo systemctl start tftpd

    sudo apt-get install bind9 -y

    sudo systemctl start bind9

    sudo apt-get install inetsim -y

    sudo systemctl start inetsim

}

package_install
