#!/bin/bash
set -e

# List of system dependencies
pkgs_to_install="\
lbzip2 \
rsync \
"
apt-get update -y
apt-get install -q -y ${pkgs_to_install}

# Clean up
apt-get autoremove -y
apt-get autoclean -y
rm -rf /var/lib/apt/lists/*
