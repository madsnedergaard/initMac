#!/bin/bash -xe

# This script will backup Brewfile and more...

echo "Updating Brewfile..."

# force here makes it overwrite existing file
brew bundle dump --force
