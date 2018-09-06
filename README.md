# Clean Dev Machine

My personal dotfiles and setup on new machines.

## Step 1: Init machine

1. Download this repo to $HOME (~/)
2. CD into cleandevmachine and run [Thoughtbot Laptop](https://github.com/thoughtbot/laptop), make sure that '.laptop.local' is fetched
```
curl --remote-name https://raw.githubusercontent.com/thoughtbot/laptop/master/mac
less mac
sh mac 2>&1 | tee ~/laptop.log
```

Automated installation of:
- Homebrew
- Xcode Developer Tools(?)
- git
- postgres
- postgresql
- redis
- the_silver_searcher
- vim
- ctags
- tmux
- reattach-to-user-namespace
- imagemagick
- qt
- hub
- node
- rbenv
- ruby-build
- openssl
- libyaml
- bundler
- heroku-toolbelt
- formulae
- rcm

**AND**

- Customized bash-profile (aliases, functions, etc.)
- Git configuration
- OSX Hacks ([laptop.local #L152](https://github.com/madsnedergaard/cleandevmachine/blob/master/laptop.local#L152))
- Python and pip
- Zprezto
- Apps
	- alfred
	- dropbox
	- filezilla
	- firefox
	- flash-player
	- google-chrome
	- iterm2
	- sequel-pro
	- skype
	- slack
	- sourcetree
	- spotify
	- the-unarchiver
	- virtualbox
	- vlc
	- wunderlist
- Optionals
	- A cleaned dock (removes all icons)

## Step 2: Configure Apache & MySQL

### Apache

**If using Sierra:**

- Create ~/Sites folder
- [Follow this guide](https://getgrav.org/blog/macos-sierra-apache-multiple-php-versions)
- Copy over vhosts from backup
- Copy over hosts from backup
- Install Memcached for **each** PHP version installed:
  - If PECL works, then just pecl install memcached
  - If not, use offline install: `pecl install ~/cleandevmachine/memcached-3.0.4.tgz`

Restart apache in terminal:
```
apache restart
```


#### Known issues

**PHP Exec cannot find mysql:**
> Fix: add the following path to .zshrc: `export PATH="$PATH:/usr/local/mysql/bin"`



_If you still have issues, then hit me up and we will work it out together!_

## (Optional) Step 3: Fetch app settings from backup
If using [Mackup](https://github.com/lra/mackup), run the following to fetch application settings from backup. Dropbox must be synced before use!
```
brew install mackup
mackup restore
```

## Other stuff

### SSH keys
1. Generate new key: `ssh-keygen`
2. Add keygen to relevant sites (e.g. Github, Bitbucket, any hosting)


### Lolcommits

- [lolcommits](https://github.com/mroth/lolcommits) 4 the lulz

---

## Other applications to buy or reinstall

- Bartender
- BetterTouchTool
- Boom Audio
- DaisyDisk
- Giphy
- Lightroom
- Paw
- Photoshop
- Sketch
- Standing Desk App
- TeamViewer
- TresorIT
- Timely (if time tracking is required)
- VS Code + Settings Sync from Github gists

## Other necessary steps

- Get Alfred.alfredpreferences from backup location

## System preferences

*In Apple Icon > System Preferences:*

- Trackpad > Tap to click
- Keyboard > Key Repeat > Fast (all the way to the right)
- Keyboard > Delay Until Repeat > Short (all the way to the right)

---

## Roadmap

- Deviate from Thoughtbot - grab relevant stuff, but providing the entire setup myself would ensure full customizability.
- Ensure that Homebrew installs or symlinks to correct Applications folder.
- Add NVM and download a few global modules
- Setup folder structure?
- Osx-hacks not working:
	- FK_StandardViewSettings:IconViewSettings:showItemInfo
	- FK_StandardViewSettings:IconViewSettings:arrangeBy

---

## Acknowledgements

Code and inspiration from:
- [@MathiasBynens](https://github.com/mathiasbynens)
- [@Thoughtbot](https://github.com/Thoughtbot/laptop)
