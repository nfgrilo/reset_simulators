#!/bin/bash

set -e

# Delete all devices
xcrun simctl list devices | \
	grep -E      '[A-F0-9]{8}-[A-F0-9]{4}-[A-F0-9]{4}-[A-F0-9]{4}-[A-F0-9]{12}' | \
	sed  -E 's/.*([A-F0-9]{8}-[A-F0-9]{4}-[A-F0-9]{4}-[A-F0-9]{4}-[A-F0-9]{12}).*/\1/g' | \
	xargs -n 1 xcrun simctl delete

# Create new devices
iPhone=com.apple.CoreSimulator.SimDeviceType.iPhone
iPad=com.apple.CoreSimulator.SimDeviceType.iPad
iOS=com.apple.CoreSimulator.SimRuntime.iOS

# Note: check for available values typing:
# > xcrun simctl list

# iPhones
xcrun simctl create "iPhone 8 (11.4)"              "$iPhone-8"                               "$iOS-11-4"
xcrun simctl create "iPhone X (12.4)"              "$iPhone-X"                               "$iOS-12-4"
xcrun simctl create "iPhone 11 (13.4)"             "$iPhone-11"                              "$iOS-13-4"
xcrun simctl create "iPhone 11 Pro (14.0)"         "$iPhone-11-Pro"                          "$iOS-14-0"
xcrun simctl create "iPhone SE 2 (14.0)"           "$iPhone-SE--2nd-generation-"             "$iOS-14-0"

# iPads
xcrun simctl create "iPad Pro (10.5-inch) (11.4)"  "$iPad-Pro--10-5-inch-"                   "$iOS-11-4"
xcrun simctl create "iPad Pro (11-inch) (12.4)"    "$iPad-Pro--11-inch-"                     "$iOS-12-4"
xcrun simctl create "iPad Air (13.4)"              "$iPad-Air--4th-generation-"              "$iOS-13-4"
xcrun simctl create "iPad Pro (12.9-inch) (14.0)"  "$iPad-Pro--12-9-inch---4th-generation-"  "$iOS-14-0"
