#!/usr/bin/env bash


###Check if nginx is installed
which nginx >/dev/null
check=$?

###Install if not installed, report is it is installed
if [ $check -ne 0 ]; then
	export DEBIAN_FRONTEND=noninteractive
	sudo apt-get update
	sudo apt-get install -y nginx
	sudo apt-get clean
	echo "Nginx has been instaled"
else
	echo "Nginx is already installed"
fi



