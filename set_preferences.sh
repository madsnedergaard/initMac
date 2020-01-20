#!/bin/bash -xe

#############
## GENERAL ##
#############

# Keyboard: Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1

# Keyboard: Set a shorter Delay until key repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 10

# Trackpad: enable tap to click for this user and for the login screen
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Disable smart quotes/smart dashes/autocorrection
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Limit ad tracking
defaults write com.apple.AdLib forceLimitAdTracking -bool true

#  Save to disk, rather than iCloud, by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

#Save screenshots to folder "Screenshots" on `~/desktop`
mkdir -p ~/Desktop/screenshots
defaults write com.apple.screencapture location ~/Desktop/screenshots

#Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Set a custom text displayed on the login window
sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText -string 'This laptop belongs to Mads Nedergaard. If found, please call +45 50472150'

# Create default website/code structure
mkdir -p ~/sites/personal
mkdir -p ~/sites/play

############
## FINDER ##
############

# Show The Library Folder
chflags nohidden ~/Library

# Show the home folder instead of all files when opening a new finder window
defaults write com.apple.finder NewWindowTarget PfHm

# Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Use list view in all Finder windows by default
defaults write com.apple.finder FXPreferredSearchViewStyle -string "Nlsv"
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Search current folder by default
defaults write com.apple.finder FXDefaultSearchScope SCcf

# RESTARTS FINDER AFTER CHANGES
killall Finder


############
## SPACES ##
############

# Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

# Don’t show Dashboard as a Space
defaults write com.apple.dock dashboard-in-overlay -bool true

# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

##########
## DOCK ##
##########

#Wipe the Dock
defaults write com.apple.dock persistent-apps -array

# Show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool true

# Don’t show recent applications in Dock
defaults write com.apple.dock show-recents -bool false

# Minimize windows into their application’s icon
defaults write com.apple.dock minimize-to-application -bool true

# Show Percent Battery in menu bar
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# RESTARTS THE DOCK AFTER CHANGES
killall -KILL Dock


##############
## CALENDAR ##
##############

# Starts week on Monday
defaults write com.apple.iCal "first day of week" -int 1

# RESTARTS THE CALENDAR AFTER CHANGES
killall Calendar>/dev/null || true


