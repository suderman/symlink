#!/bin/sh

# 2012 Jon Suderman
# https://github.com/suderman/symlink/

# Open a terminal and run this command:
# curl https://raw.github.com/suderman/symlink/master/install.sh | sh

# Ensure /usr/local/bin exists
if [ ! -d "/usr/local" ]; then
  sudo mkdir -p /usr/local/bin
  sudo chown `whoami`:admin /usr/{local,local/bin}
fi

# Download symlink into /usr/local/bin
curl https://raw.github.com/suderman/symlink/master/symlink -o /usr/local/bin/symlink

# Set permissions
chmod +x /usr/local/bin/symlink

echo "Installed symlink to /usr/local/bin"
