#!/bin/bash
USER=rhel

echo "Adding wheel" > /root/post-run.log
usermod -aG wheel rhel

echo "Setup vm control01" > /tmp/progress.log

chmod 666 /tmp/progress.log 

sudo dnf -y install kernel-core
sudo grubby --set-default /boot/vmlinuz-`rpm -q --qf "%{BUILDTIME}\t%{EVR}.%{ARCH}\n" kernel-core | sort -nr | head -1 | cut -f2`
sudo reboot
