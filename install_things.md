# Install things

## Step 1: Install brew & packages

1. Install [Homebrew](https://brew.sh/)
2. Run `brew bundle`

_make sure old computer runs `brew bundle dump` and updates the Brewfile in Dropbox_

## Step 2: Fetch app settings from backup

If using [Mackup](https://github.com/lra/mackup), run the following to fetch application settings from backup. Dropbox must be fully synced before use!

Wait for Dropbox setup and sync, then:

```bash
mackup restore
```

## Step 3: Install additional stuff

- [Install zsh-z](https://github.com/agkozak/zsh-z): `curl https://raw.githubusercontent.com/agkozak/zsh-z/master/zsh-z.plugin.zsh >> /usr/local/share/zsh-z.plugin.zsh`
- fonts from backup
- Stopwatch (`cp scripts/stopwatch.sh /usr/local/bin/sw`)

## Step 4: Add licenses from PW-manager

- BetterTouchTool
- Alfred
