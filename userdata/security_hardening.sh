#!/bin/bash

sed -i 's/^#Port 22/Port 5000/' /etc/ssh/sshd_config
sed -i 's/^PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config

systemctl restart sshd
