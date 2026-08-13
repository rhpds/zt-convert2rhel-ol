#!/bin/bash
USER=rhel

echo "Adding wheel" > /root/post-run.log
usermod -aG wheel rhel

echo "Setup vm control01" > /tmp/progress.log

chmod 666 /tmp/progress.log 

# add oracle linux Distro Builder repo and install datefudge (for remediation exercise)
sudo dnf config-manager --enable ol9_distro_builder
sudo dnf install -y datefudge