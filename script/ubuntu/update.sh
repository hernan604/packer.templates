#!/bin/sh

#use brasilian mirrors
sed -i 's/http:\/\/us./http:\/\/br./g' /etc/apt/sources.list

# Update the box
apt-get -y update
apt-get -y upgrade

# Install some software
apt-get -y install build-essential vim-tiny exuberant-ctags git-core redis-server postgresql-server-dev-all postgresql-client postgresql-9.3

# Install dependencies
apt-get -y install dkms
apt-get -y install nfs-common

