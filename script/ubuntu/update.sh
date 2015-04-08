#!/bin/sh

#use brasilian mirrors
sed -i 's/http:\/\/us./http:\/\/br./g' /etc/apt/sources.list

# Update the box
apt-get -y update
apt-get -y upgrade

# Install some software
apt-get -y install build-essential 
apt-get -y install vim 
apt-get -y install exuberant-ctags 
apt-get -y install git-core 
apt-get -y install redis-server 
apt-get -y install postgresql-server-dev-all 
apt-get -y install postgresql-client 
apt-get -y install postgresql-9.3

# Install dependencies
apt-get -y install dkms
apt-get -y install nfs-common

