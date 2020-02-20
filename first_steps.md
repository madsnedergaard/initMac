# First Steps

## Step 1: Install basic utils

- Chrome
- [Homebrew](https://brew.sh/)
- Xcode Developer Tools (try running `git --version` and it should show, otherwise: `xcode-select --install`)
- `brew install cask`

## Step 2: Fetch app settings from backup

If using [Mackup](https://github.com/lra/mackup), run the following to fetch application settings from backup. Dropbox must be synced before use!

```bash
brew cask install dropbox
```

Wait for Dropbox setup and sync, then:

```bash
brew install mackup
mackup restore
```

## Step 3: Install additional stuff

- `brew install node ruby yarn docker postgresql typescript zsh-syntax-highlighting zsh-autosuggestions`
- [Install zsh-z](https://github.com/agkozak/zsh-z)
- fonts from NAS/backup
- BetterTouchTool from NAS/backup
- VSCode and add settings-sync extension
- Alfred 3 & Alfred.alfredpreferences & workflows from backup (+ replace `cmd+space` with Alfred)
- Quick look plugins [github.com/sindresorhus/quick-look-plugins](https://github.com/sindresorhus/quick-look-plugins)
- [NVM](https://github.com/nvm-sh/nvm)
- Stopwatch (`cp stopwatch.sh /usr/local/bin/sw`)

## Step 4: Other applications to buy or reinstall

### From App Store

- Bear
- BombSquad
- Spark
- Pages, Numbers, Keynote

### From the internet

```
brew cask install hyper dozer spotify kap calibre slack sourcetree tableplus tresorit
```

- DaisyDisk
- DiffMerge
- Double Shot (keep Mac awake)
- Figma
- FontPlop
- Lightroom
- MS Office package
- Photoshop
- Screaming From SEO Spider
- Sketch
- Skype
- [Standing Desk App](http://sda.codana.me/)
- Steam
- TeamViewer
- Timely (if time tracking is required)
- Transmit
- Zoom
