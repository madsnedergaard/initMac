# Install things

## Step 1: Install basic utils

- [Dropbox](https://www.dropbox.com/install)
- [Homebrew](https://brew.sh/)
- Xcode Developer Tools (try running `git --version` and it should show, otherwise: `xcode-select --install`)

## Step 2: Install brew packages
_make sure old computer runs `brew bundle dump` and syncs the Brewfile_

```bash
cd ~/Dropbox/config/brew
brew bundle
```

## Step 2: Fetch app settings from backup

If using [Mackup](https://github.com/lra/mackup), run the following to fetch application settings from backup. Dropbox must be fully synced before use!

Wait for Dropbox setup and sync, then:

```bash
mackup restore
```

## Step 3: Install additional stuff

- [Install zsh-z](https://github.com/agkozak/zsh-z): `curl https://raw.githubusercontent.com/agkozak/zsh-z/master/zsh-z.plugin.zsh >> /usr/local/share/zsh-z.plugin.zsh`
- fonts from backup
- [BetterTouchTool](https://folivora.ai/) (find license in PW-manager)
- VSCode and add settings-sync extension
- Alfred & Alfred.alfredpreferences & workflows from backup (+ replace `cmd+space` with Alfred)
- Stopwatch (`cp scripts/stopwatch.sh /usr/local/bin/sw`)

## Step 4: Note-taking setup

- install [Obsidian](https://obsidian.md)
- `git clone thoughts repo` (ensure it's in `/dev/personal`)
- `ln -s ~/Dropbox/notes/Private ~/dev/personal/thoughts/notes/Private` <-- links Private notes

## Step 5: Other applications to buy or reinstall

- App store: Installed via `brew`/`mas`

### From the internet
_TODO: Move more of these to casks!_

- Android Studio
- [Chrome](https://www.google.com/chrome/)
- DaisyDisk/OmniDiskSweeper
- DiffMerge
- Discord
- Double Shot (keep Mac awake)
- Figma
- iStat Menus (import settings from dropbox/config)
- Lightroom
- MS Office package
- Screaming From SEO Spider
- Skype
- Steam
- TeamViewer
- Zoom
