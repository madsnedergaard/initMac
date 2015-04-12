# Clean Dev Machine

Personal dotfiles and setup on new machines.


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
	- flux
	- google-chrome
	- iterm2
	- sequel-pro
	- shiftit
	- skype
	- slack
	- sourcetree
	- spotify
	- spotifree
	- spotify-notifications
	- sublime-text
	- the-unarchiver
	- virtualbox
	- vlc
- Optionals
	- A cleaned dock (removes all icons)


## Step 2: Configure Apache & MySQL

No guide yet.



---

## Acknowledgements

Code and inspiration from:
- [@MathiasBynens](https://github.com/mathiasbynens)
- [@Thoughtbot](https://github.com/Thoughtbot/laptop)