#!/bin/sh

# 2013 Jon Suderman
# https://github.com/suderman/symlink/

# Open a terminal and run this command:
# curl https://raw.github.com/suderman/symlink/master/install.sh | sh

# Ensure /usr/local/bin exists
if [ ! -d "/usr/local" ]; then
  sudo mkdir -p /usr/local/bin
  ULB_OWNER=`whoami`:`ls -ld /usr | awk '{print $4}'`
  sudo chown $ULB_OWNER /usr/{local,local/bin}
fi

# Download symlink into /usr/local/bin
sudo curl https://raw.github.com/suderman/symlink/master/symlink -o /usr/local/bin/symlink

# Set permissions
ULB_OWNER=`ls -ld /usr/local/bin | awk '{print $3}'`:`ls -ld /usr/local/bin | awk '{print $4}'`
sudo chown $ULB_OWNER /usr/local/bin/symlink 
sudo chmod +x /usr/local/bin/symlink

echo "Installed symlink to /usr/local/bin"
