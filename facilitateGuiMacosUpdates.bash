
#!/bin/sh

# Open Mac App Store Updates page or Software Update Preferences as user per macOS version.

# get current username
user=$(stat -f %Su /dev/console)

macOSMajor=$(sw_vers | awk -F '[:.]' '/ProductVersion:/ { print $3 }')
if [ "$macOSMajor" -lt 14 ]; then
	# Open Mac App Store to Updates page as user
  sudo -u $user open macappstore://showUpdatesPage
else
	# Open Software Update Preferences as user
  sudo -u $user open /System/Library/PreferencePanes/SoftwareUpdate.prefPane
fi

exit 0
