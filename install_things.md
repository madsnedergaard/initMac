# Install things

## Step 1: Install brew & packages

1. Install [Homebrew](https://brew.sh/)
2. Run `brew bundle install`

_make sure old computer runs `brew bundle dump` and replaces the Brewfile here_

## Step 2: Dropbox

1. Login to Dropbox app
2. Wait for it to sync everything

## Step 3: Fetch app settings from backup

If using [Mackup](https://github.com/lra/mackup), run the following to fetch application settings from backup. **Dropbox must be fully synced before use!**

**NOTE: Currently broken due to https://github.com/lra/mackup/issues/1924**

Current approach:

-   Backup: `$ mackup backup --force && mackup uninstall --force`
-   Restore: `$ mackup restore --force && mackup uninstall --force``

~~Wait for Dropbox setup and sync, then:~~

```bash
# mackup restore
```

## Step 4: Install additional stuff

-   XCode (removed from Brewfile as it takes ages and shows no progress)
-   Stopwatch (`cp scripts/stopwatch.sh /usr/local/bin/sw`)
