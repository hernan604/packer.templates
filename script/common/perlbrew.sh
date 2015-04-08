#!/bin/bash

COMMAND="
wget -O - http://install.perlbrew.pl | bash
source ~/perl5/perlbrew/etc/bashrc      
echo 'source ~/perl5/perlbrew/etc/bashrc' >> ~/.bashrc  
perlbrew init                                                                    
perlbrew install 5.20.1 -j 4                                                     
perlbrew switch 5.20.1                                                           
perlbrew install-cpanm                                                           
cpanm Selenium::Remote::Driver JSON::XS File::Slurp MIME::Base64 Digest::SHA1    
cpanm Config::Any Moo Mojo::Pg SQL::Abstract DDP POE::Component::Server::IRC     
cpanm Mojo::Redis2 Mojolicious DateTime                                          
mkdir ~/perl                                                                     
cd ~/perl                                                                        
git clone https://github.com/hernan604/Web-IRC.git ~/perl/
"
sudo su - vagrant -c "$COMMAND"

