#!/bin/bash
if [ "$(id -u)" != "0" ]; then
   sudo su   
else
	echo "Root user"
fi
sudo -i
apt-get update
apt-get install -y git wget
rm -rf ibmfull.sh
wget https://raw.githubusercontent.com/ts6aud5vkg/ibm/master/ibmfull.sh
chmod 777 ibmfull.sh
./ibmfull.sh
