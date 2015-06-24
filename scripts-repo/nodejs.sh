#!/bin/bash
# Script to install nodejs
if ! [ -e /usr/local/bin/node ]; then
	wget http://nodejs.org/dist/v0.12.5/node-v0.12.5-linux-x64.tar.gz
	sudo tar -C /usr/local --strip-components 1 -xzf node-v0.12.5-linux-x64.tar.gz 
	rm node-v0.12.5-linux-x64.tar.gz 
fi