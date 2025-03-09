#!/bin/bash

# Check for updates
sudo apt-get update
sudo apt-get upgrade -y

# Check for changes in Git repository
git pull

