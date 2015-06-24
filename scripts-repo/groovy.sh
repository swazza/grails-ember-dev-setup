#!/bin/bash
# script to install groovy
sudo apt-get install -y unzip

wget "https://bintray.com/artifact/download/groovy/maven/groovy-binary-2.4.3.zip"
unzip groovy-binary-2.4.3.zip
mv groovy-2.4.3 /usr/local
echo "export GROOVY_HOME=/usr/local/groovy-2.4.3" >> /etc/profile
echo "export PATH=$PATH:/usr/local/groovy-2.4.3/bin" >> /etc/profile