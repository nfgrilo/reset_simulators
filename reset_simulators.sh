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
xcrun simctl create "iPhone 16 Pro Max (6.9″ 18.2)"     	"$iPhone-16-Pro-Max"                   		"$iOS-18-2"
xcrun simctl create "iPhone 14 Plus (6.5″ 18.2)"         	"$iPhone-14-Plus"                         "$iOS-18-2"
xcrun simctl create "iPhone 16 (6.3″ 18.2)"             	"$iPhone-16"                              "$iOS-18-2"
xcrun simctl create "iPhone 14 (5.8″ 17.5)"             	"$iPhone-14"                              "$iOS-17-5"
xcrun simctl create "iPhone SE 3rd gen (4.7″ 16.4)"     	"$iPhone-SE-3rd-generation"               "$iOS-16-4"

# iPads
xcrun simctl create "iPad Pro (M4) (13″ 18.2)"						"$iPad-Pro-13-inch-M4-8GB"               	"$iOS-18-2"
xcrun simctl create "iPad Air 5th gen (11″ 17.5)"  				"$iPad-Air-5th-generation"                "$iOS-17-5"
xcrun simctl create "iPad mini 5th gen (9.7″ 16.4)"  			"$iPad-mini--5th-generation-"          		"$iOS-16-4"
