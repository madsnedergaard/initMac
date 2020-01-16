# System preferences

_In Apple Icon > System Preferences:_

- Trackpad > Tap to click
- Keyboard > Key Repeat > Fast (all the way to the right)
- Keyboard > Delay Until Repeat > Short (all the way to the right)

---

The following might be changed through preferences or commands:

- Disable the sound effects on boot
  - `sudo nvram SystemAudioVolume=" "`
- Save screenshots to folder "Screenshots" on `~/desktop` (Screenshot tool > Options)
- Finder: show all filename extensions
  - `defaults write NSGlobalDomain AppleShowAllExtensions -bool true`
- Finder: show hidden files by default
  - `defaults write com.apple.finder AppleShowAllFiles -bool true`
- Finder: Disable the warning when changing a file extension
- Avoid creating .DS_Store files on network volumes
  - `defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true`
- Use list view in all Finder windows by default
- Disable auto-correct
  - `defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false`
- Disable Dashboard
  - `defaults write com.apple.dashboard mcx-disabled -bool true`
- Don’t show Dashboard as a Space
  - `defaults write com.apple.dock dashboard-in-overlay -bool true`
- Don’t automatically rearrange Spaces based on most recent use
  - `defaults write com.apple.dock mru-spaces -bool false`
