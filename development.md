# Development Setup

## JS
- NVM (See [installation guide](https://github.com/nvm-sh/nvm))

## Python

1. [Install Poetry](https://python-poetry.org/docs/#osx--linux--bashonwindows-install-instructions)
2. `pyenv install 3.8.12`
3. `pyenv global 3.8.12`
4. Verify that it's working: `python -V`


## Postgres setup

1. `brew install postgresql`
2. `brew services start postgres`


## Setup Git commit signing

1. Follow this guide: https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key
2. And this guide: https://gist.github.com/koshatul/2427643668d4e89c0086f297f9ed2130

### Troubleshooting

`Git: gpg failed to sign the data`

Solution: `gpgconf --kill gpg-agent` (restarts the agent)
