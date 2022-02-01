# Install things

## Step 1: Install basic utils

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

- `brew install node ruby docker httpie zsh-syntax-highlighting zsh-autosuggestions zsh-you-should-use jq gh gcloud ngrok tldr`
- [Install zsh-z](https://github.com/agkozak/zsh-z)
- fonts from NAS/backup
- [BetterTouchTool](https://folivora.ai/) (find license in PW-manager)
- VSCode and add settings-sync extension
- Alfred 3 & Alfred.alfredpreferences & workflows from backup (+ replace `cmd+space` with Alfred)
- Quick look plugins [github.com/sindresorhus/quick-look-plugins](https://github.com/sindresorhus/quick-look-plugins)
- Stopwatch (`cp scripts/stopwatch.sh /usr/local/bin/sw`)

## Step 4: Note-taking setup

- install [Obsidian](https://obsidian.md)
- `git clone thoughts repo` (ensure it's in `/dev/personal`)
- `ln -s ~/Dropbox/notes/Private ~/dev/personal/thoughts/notes/Private` <-- links Private notes

## Step 5: Other applications to buy or reinstall

### From App Store

- Bear
- Bitwarden
- BombSquad
- Pages, Numbers, Keynote
- Wipr

### From the internet

```sh
brew cask install hyper dozer postman spotify kap calibre slack sourcetree tableplus tresorit
```
- Android Studio
- [Chrome](https://www.google.com/chrome/)
- DaisyDisk/OmniDiskSweeper
- DiffMerge
- Discord
- Double Shot (keep Mac awake)
- Figma
- FontPlop
- iStat Menus (import settings from dropbox/config)
- Lightroom
- MS Office package
- Screaming From SEO Spider
- Skype
- Steam
- TeamViewer
- Zoom
