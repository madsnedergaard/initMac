# First Steps

## Step 1: System preferences

Run the script: `sh set_preferences.sh`

## Step 2: Install basic utils

- Chrome
- [HyperJS](https://hyper.is/)
- [Homebrew](https://brew.sh/)
- Xcode Developer Tools (try running `git --version` and it should show, otherwise: `xcode-select --install`)
- `brew install cask`

## Step 3: Fetch app settings from backup

If using [Mackup](https://github.com/lra/mackup), run the following to fetch application settings from backup. Dropbox must be synced before use!

```bash
brew cask install dropbox
```

Wait for Dropbox setup and sync, then:

```bash
brew install mackup
mackup restore
```

## Step 4: Install additional stuff

- `brew install node ruby yarn docker typescript zsh-syntax-highlighting`
- fonts from NAS/backup
- BetterTouchTool from NAS/backup
- VSCode and init settings-sync extension
- Alfred & Alfred.alfredpreferences & workflows from backup (+ replace `cmd+space` with Alfred)
- Quick look plugins [github.com/sindresorhus/quick-look-plugins](https://github.com/sindresorhus/quick-look-plugins)
- Stopwatch (`cp stopwatch.sh /usr/local/bin/sw`)

## Step 5: Other applications to buy or reinstall

### From App Store

- Bear
- BombSquad
- Spark
- Pages, Numbers, Keynote

### From the internet

- 1password
- BetterTouchTool
- Calibre
- DaisyDisk
- DiffMerge
- Double Shot (keep Mac awake)
- Dozer
- Figma
- FontPlop
- Kap
- Lightroom
- MS Office package
- Photoshop
- Screaming From SEO Spider
- Sketch
- Skype
- Slack
- Sourcetree
- Spotify
- [Standing Desk App](http://sda.codana.me/)
- Steam
- TeamViewer
- Timely (if time tracking is required)
- Transmit
- TresorIT
- VS Code + Settings Sync from Github gists
- Zoom
