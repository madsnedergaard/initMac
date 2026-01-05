#!/usr/bin/env bash
set -e

# Install Xcode command line tools if not present
echo "🍎 Installing Xcode command line tools..."
xcode-select --install

echo "🍎 Installing Rosetta for compatibility..."
softwareupdate --install-rosetta

# Check for Homebrew to be present, install if it's missing
if test ! $(which brew); then
   echo "🍺 Installing Homebrew"
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   echo "🍺 Updating Homebrew..."
   brew update
 else
   echo "[SKIPPING] Homebrew is already installed."
fi

# Install Stopwatch script
cp scripts/stopwatch.sh /usr/local/bin/sw

echo "Done, now run 'brew bundle install' to install the rest of the packages."