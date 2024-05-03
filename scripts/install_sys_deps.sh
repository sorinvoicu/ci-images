#!/bin/bash
set -e

# List of system dependencies
pkgs_to_install="\
curl \
lbzip2 \
rsync \
qpdf \
wget \
"
apt-get update -y
# shellcheck disable=SC2086
apt-get install -q -y ${pkgs_to_install}

[ $(which google-chrome) ] || apt-get install -y gnupg curl
[ $(which google-chrome) ] || curl -fsSL -o /tmp/google-chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
[ $(which google-chrome) ] || DEBIAN_FRONTEND='noninteractive' apt-get install -y /tmp/google-chrome.deb
apt-get -y install libcurl4-openssl-dev libssl-dev pandoc libpng-dev libfontconfig1-dev libfreetype6-dev libicu-dev libxml2-dev git libgit2-dev libtiff-dev libfribidi-dev libharfbuzz-dev zlib1g-dev libnode-dev imagemagick libmagick++-dev
rm -f /tmp/google-chrome.deb

# Clean up
apt-get autoremove -y
apt-get autoclean -y
rm -rf /var/lib/apt/lists/*

# Install lychee URL checker
curl -Ls https://github.com/lycheeverse/lychee/releases/download/v"${LYCHEE_VERSION}"/lychee-v"${LYCHEE_VERSION}"-"$(arch)"-unknown-linux-gnu.tar.gz | tar xz -C /usr/local/bin
