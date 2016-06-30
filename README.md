# macOS Management
Scripts to manage and change settings in macOS

## removeSsidFromPreferredList.bash
Removes a specified SSID from the wireless interface's preferred networks list if the computer is not connected to the specified SSID at runtime.

## setSearchDomainsForAllNetworkServices.bash
Finds all configured network services and sets the designated search domains for each.

## removeSudoTimeout.bash
Removes the five minute grace period for sudo commands. Once run successfully, every sudo command will require authentication.

## softwareUpdateWithChecksAndBalances.bash
* Calls custom triggered policies to handle executing the updates.
* If no one is logged in, all updates are installed, rebooting if necessary.
* If no updates require reboot, only those updates not requiring reboot are installed.
* If updates that require reboot are available, someone is logged in and Do not disturb is off, the user is prompted.
 * User may defer 4 times
