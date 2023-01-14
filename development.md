# Development Setup

## SSH keys

1. Generate new key: `ssh-keygen -t rsa -b 4096 -C "nedergaardmads@gmail.com"`
2. [Add to ssh-agent](https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#adding-your-ssh-key-to-the-ssh-agent)
3. Add key to relevant sites (e.g. Github, GCP, etc.)
    - **Github:** `pbcopy < ~/.ssh/id_rsa.pub` and add it under "Github > Settings > SSH and GPG Keys"

## Python

1. `pyenv install 3.8.12`
2. `pyenv global 3.8.12`
3. Verify that it's working: `python -V`

## Postgres setup

1. `brew install postgresql`
2. `brew services start postgres`

## Setup Git commit signing

1. Follow this guide: https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key
2. And this guide: https://gist.github.com/koshatul/2427643668d4e89c0086f297f9ed2130

### Troubleshooting

`Git: gpg failed to sign the data`

Solution: `gpgconf --kill gpg-agent` (restarts the agent)
