#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

# Check if nginx is installed
# install if not
which nginx &>/dev/null || {
  sudo apt-get update
  sudo apt-get install -y nginx
  sudo apt-get clean
}
