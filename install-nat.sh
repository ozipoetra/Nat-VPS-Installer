#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi

# xray service
aa="https://raw.githubusercontent.com/ozipoetra/mantapv2/main/data-xray.sh"
#installing script
wget ${aa} && chmod +x data-xray.sh && ./data-xray.sh

cd /usr/bin
wget -O xraymenu https://raw.githubusercontent.com/ozipoetra/mantapv2/main/menu-akun/add-ws.sh
chmod +x xraymenu
cd /root
clear

wget -O ninstall-nat.sh https://raw.githubusercontent.com/ozipoetra/Mantap/main/install-nat.sh && chmod +x ninstall-nat.sh && ./ninstall-nat.sh

#
clear
echo "Installation Success! Rebooting..."
sleep 3
reboot
# clear installation files (soon)
# rm -r *.sh
