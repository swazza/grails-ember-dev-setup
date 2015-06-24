#!/bin/bash
# Script to install grails
wget "https://github.com/grails/grails-core/releases/download/v2.2.3/grails-2.2.3.zip"
unzip grails-2.2.3.zip
mv grails-2.2.3 /usr/local/
echo "export PATH=$PATH:/usr/local/grails-2.2.3/bin" >> /etc/profile
