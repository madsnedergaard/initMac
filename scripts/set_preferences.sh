#!/bin/bash -xe

# inspiration: https://mths.be/macos

#############
## GENERAL ##
#############

# Git global config is handled by Mackup

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Disable smart quotes/smart dashes/autocorrection/capitalization
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Limit ad tracking
defaults write com.apple.AdLib forceLimitAdTracking -bool true

#  Save to disk, rather than iCloud, by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

#Save screenshots to folder "Screenshots" on `~/desktop`
mkdir -p ~/Desktop/screenshots
defaults write com.apple.screencapture location ~/Desktop/screenshots

#Disable the sound effects on boot
sudo nvram StartupMute=%01

# Set a custom text displayed on the login window
sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText -string 'This laptop belongs to Mads Nedergaard. If found, please reach out at nedergaardmads@gmail.com'

# Enable "use keyboard navigation to move focus between controls"
# TODO: Not working in Monterey
# defaults write NSGlobalDomain AppleKeyboardUIMode -int 2


# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Create default website/code structure
mkdir -p ~/dev/personal
mkdir -p ~/dev/play
mkdir -p ~/dev/work

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

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true


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


######################
## ACTIVITY MONITOR ##
######################

# Show the main window when launching Activity Monitor
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true

# Visualize CPU usage in the Activity Monitor Dock icon
defaults write com.apple.ActivityMonitor IconType -int 5

# Show all processes in Activity Monitor
defaults write com.apple.ActivityMonitor ShowCategory -int 0

# Sort Activity Monitor results by CPU usage
defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0


#################
## END MESSAGE ##
#################

echo "All Done! Note that some of these changes require a logout/restart to take effect."
echo "---"
printf "Manual changes required:
- 'auto' appearance in 'general'
- keyboard > shortcuts > enable 'Use keyboard navigation to move focus between controls'
- Computer name in 'sharing'
- Spotlight exclusions: [dev, Dropdox, Downloads] in 'spotlight'
- Add calendar accounts in 'internet accounts'
- Add additional fingerprints in 'touch id'
- Update profile picture and password in 'users & groups'
- Time machine exclusions (see img in readme) to 'time machine'
"
