# Clean Dev Machine

My personal dotfiles and setup on new machines.


## Step 1: Init machine

1. Clone this repo to $HOME (~/)
2. Run [Thoughtbot Laptop](https://github.com/thoughtbot/laptop), make sure that 'laptop.local' is fetched
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
- [dotVhosts](github.com/madsnedergaard/dotVhosts)
- Git configuration
- OSX Hacks ([laptop.local #L152](https://github.com/madsnedergaard/cleandevmachine/blob/master/laptop.local#L152))
- Python and pip
- PHPSwitcher (and PHP5.5 + 5.6)
- Zprezto
- Global Nodejs Packages
	- Bower
	- Grunt-cli
	- jshint
	- yo
- Apps
	- alfred
	- dropbox
	- filezilla
	- firefox
	- flash
	- google-chrome
	- iterm2
	- sequel-pro
	- shiftit
	- skype
	- slack
	- sourcetree
	- spotify
	- spotify-notifications
	- sublime-text
	- the-unarchiver
	- virtualbox
	- vlc
	- wunderlist
- Optionals
	- A cleaned dock (removes all icons)


## Step 2: Configure Apache & MySQL

### Apache

**Changes in httpd.conf (/etc/apache2)**

The following lines should be enabled:
```
LoadModule userdir_module libexec/apache2/mod_userdir.so (l166)
LoadModule php5_module libexec/apache2/libphp5.so (l169)
Include /private/etc/apache2/extra/httpd-userdir.conf (l495)
Include /private/etc/apache2/extra/httpd-vhosts.conf (l500)
```

Documentroot can be changed to ~/Sites (if wanted):
```
DocumentRoot "/Users/YOURUSERNAME/Sites"
<Directory "/Users/YOURUSERNAME/Sites">
```

**Changes in YOURUSERNAME.conf (/etc/apache2/users)**

Your personal conf-file should look like this:
```
<Directory "/Users/madsnedergaard/Sites/">
    Options Indexes MultiViews
    AllowOverride None
    Order allow,deny
    Allow from localhost
    Require all granted
</Directory>
```

Now, restart apache in terminal:
```
sudo apachectl restart
```

_If you still have issues, then hit me up and we will work it out together!_


### Mysql

1. [Download](http://dev.mysql.com/downloads/mysql/) latest version
2. [Enable Auto-start](http://stackoverflow.com/a/26465743)

---

## Paid applications to buy or reinstall
- Airmail
- DaisyDisk
- Day One
- GifGrapper
- iA Writer Pro
- Lightroom
- OmmWriter
- Paw
- Photoshop
- Sketch
- Skype Call Recorder
- TeamViewer
- uTorrent

## Other necessary steps
- Get SSH-keys from backup location
- Get Alfred.alfredpreferences from backup location
- [Typicode/Hotel](https://github.com/typicode/hotel)

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
