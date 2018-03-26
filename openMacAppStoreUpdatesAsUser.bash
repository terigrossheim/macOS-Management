#!/bin/sh

# Open Mac App Store to Updates page as user

# get current username
user=$(stat -f %Su /dev/console)

# Open Mac App Store to Updates page as user
sudo -u $user open macappstore://showUpdatesPage

exit 0
