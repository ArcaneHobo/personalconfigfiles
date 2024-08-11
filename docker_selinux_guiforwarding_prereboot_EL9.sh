#!/bin/bash
sudo sed -i -e "s/X11Forwarding no/X11Forwarding yes/g" /etc/ssh/sshd_config
sudo sed -i -e "s/SELINUX=enabled/SELINUX=disabled/g" /etc/selinux/config 
touch ./.Xauthority
reboot
