# Install things

## Step 1: Install things

1. Run `sudo sh scripts/init.sh` to install Homebrew, Rosetta, and other essential tools.
2. Run `brew bundle install` to install everything in the Brewfile.

_make sure old computer runs `brew bundle dump` and updates the Brewfile here before running this script_

## Step 2: Dropbox

1. Login to Dropbox app
2. Wait for it to sync everything

## Step 3: Fetch app settings from backup

If using [Mackup](https://github.com/lra/mackup), run the following to fetch application settings from backup. **Dropbox must be fully synced before use!**

`mackup restore` - this will restore all application settings from backup.
`mackup backup` - this will backup all application settings to Dropbox.

## Step 4: Install additional stuff

-   XCode (removed from Brewfile as it takes ages and shows no progress): `mas install Xcode`
