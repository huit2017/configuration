#!/bin/sh

# GITのインストール
sudo yum -y install git

# ansible インストール
epel_file="epel-release-7-9.noarch.rpm"
sudo yum -y install wget
if [ ! -e $epel_file ]; then
  wget https://dl.fedoraproject.org/pub/epel/7/x86_64/e/$epel_file
fi

sudo rpm -Uvh $epel_file
sudo yum -y install ansible
ansible --version

cat << EOT > ~/.ssh/config
Host ticket
 HostName 192.168.43.42
Host ci
 HostName 192.168.43.43
Host web
 HostName 192.168.43.51
Host app
 HostName 192.168.43.52
Host db1
 HostName 192.168.43.53
Host db2
 HostName 192.168.43.54
Host redis1
 HostName 192.168.43.55
Host redis2
 HostName 192.168.43.56
EOT

chmod 600 ~/.ssh/config
ssh-keygen -t rsa
ssh-copy-id ticket
ssh-copy-id ci
