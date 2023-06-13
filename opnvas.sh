#!/bin/bash

if [ "$EUID" -ne 0 ]; then
    echo 'Script requires root privileges'
    exit 1
fi

package_install(){
    # Installing Metasploit

    sudo apt-get install gvm && openvas
    gvm-setup
    gvm-start

}

package_install
