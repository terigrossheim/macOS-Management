# macOS Management
Scripts to manage and change settings in macOS

## clearSoftwareUpdateCatalogURL.bash
Deletes custom software update server values to point Mac back to Apple's public update servers.

## com.company.team.ReconOnOsOrAppChange.plist
LaunchDaemon to update inventory for Casper Suite-managed Macs whenever the contents of /Applications/ or /System/Library/CoreServices/ are changed.

## installVendorPkgFromHttps.bash
Downloads and installs a package from the vendor's https download link.
+ Parameter 4 is the URL to the package.
+ Parameter 5 is a space-delimited list of installer choices used to build an installer choices XML file.
  + Populating parameter 5 causes the installer choices function to be used.
  + Leaving parameter 5 empty omits the installer choices option.

## removeSsidFromPreferredList.bash
Removes a specified SSID from the wireless interface's preferred networks list if the computer is not connected to the specified SSID at runtime.

## removeSudoTimeout.bash
Removes the five minute grace period for sudo commands. Once run successfully, every sudo command will require authentication.

## setSearchDomainsForAllNetworkServices.bash
Finds all configured network services and sets the designated search domains for each.

## softwareUpdateWithChecksAndBalances.bash
* Calls custom triggered policies to handle executing the updates.
* If no one is logged in, all updates are installed, rebooting if necessary.
* If no updates require reboot, only those updates not requiring reboot are installed.
* If updates that require reboot are available, someone is logged in and Do not disturb is off, the user is prompted.
 * User may defer 4 times
 * User is not prompted and updates are not installed if Do not disturb is enabled.
