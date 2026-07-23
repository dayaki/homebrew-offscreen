# homebrew-offscreen

A [Homebrew](https://brew.sh) tap for [**Offscreen**](https://github.com/dayaki/offscreen) —
a native macOS menu bar app for smart screen breaks that know when *not* to interrupt.

## Install

```sh
brew install --cask dayaki/offscreen/offscreen
```

That one command adds this tap and installs `Offscreen.app` into `/Applications`.
(Equivalently: `brew tap dayaki/offscreen && brew install --cask offscreen`.)

## Update

```sh
brew upgrade --cask offscreen
```

## Uninstall

```sh
brew uninstall --cask offscreen        # add --zap to also remove settings & stats
```

Requires macOS 26 (Tahoe) on Apple silicon. The app is Developer ID-signed and
notarized by Apple, so it opens without a Gatekeeper warning.
