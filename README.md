# Minimal list of Xcode simulators

### `reset_simulators.sh`

**What this script does:**

- remove all you local Xcode simulators
- create a *minimal* opinionated mix of iPhone/iPad/iOS sizes and versions


<img src="https://github.com/nfgrilo/reset_simulators/blob/master/screenshot.png" height="282" />

To run this script directly from GitHub, just run:

```
\curl -fsSL "https://raw.githubusercontent.com/nfgrilo/reset_simulators/master/reset_simulators.sh" | \bash
```

⚠️ It's recommended to quit Xcode before running the script.

### Util

- List all your simulators: `xcrun simctl list devices`
- List all available runtimes: `xcrun simctl list runtimes`
- List all available device types: `xcrun simctl list devicetypes`


**PS:** adjusted from https://github.com/jerolimov/reset_simulators