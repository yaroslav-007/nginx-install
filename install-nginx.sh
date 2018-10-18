#!/usr/bin/env bash
###Check if nginx is installed
export DEBIAN_FRONTEND=noninteractive
which nginx >/dev/null || {
	sudo apt-get update
	sudo apt-get install -y nginx
	sudo apt-get clean
	echo "Nginx has been instaled"
}
