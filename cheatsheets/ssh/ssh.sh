# establish a remote connection from a client to a remote computer.

# Prepare target server / computer

# Install OpenSSH Server on Linux

  # - ubuntu
sudo apt install openssh-server ufw

  # - arch linux
sudo pacman -S sshd ufw net-tools

## check status of Server # Active: active (running)
systemctl enable ufw.service
systemctl start ufw.service
systemctl status ssh

## listening to ssh?
ss -ltup

## allo any incomeing connection on the ssh-port (firewall)
sudo ufw allow ssh

sudo ufw status

# get ip-address # eth0: inet 192.168.0.***
ip addr

# Connect with an SSH Client
ssh username@ip_address

# save fingerprint # enter password
yes

# Check SSH Server Listening Port
sudo netstat -ltnp | grep sshd

# Copy files with ssh
scp ~/file.file username@ip_address:~/location/file.file

# Authenticate with private and public keys # default # passphrase = empty
ssh-keygen

# copy to server / machine
scp ~/.ssh/id_rsa.pub/ username@ip_address:~/

# save key to authorized keys
cat ~/id_rsa-pub >> .ssh/authorized_keys

# open windows on target machine
export DISPLAY=:0

