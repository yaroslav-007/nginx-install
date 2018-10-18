#!/usr/bin/env bash

###Check if nginx is installed
which nginx >/dev/null

###Install if not installed, report is it is installed
if [ $? -ne 0 ]; then
	sudo apt-get update
	sudo apt-get install -y nginx
	apt-get clean
	echo "Nginx has been instaled"
else
	echo "Nginx is already installed"
fi



