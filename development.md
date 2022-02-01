# Development Setup

## JS

- `brew install yarn typescript`
- NVM (See [installation guide](https://github.com/nvm-sh/nvm))

## Python

1. `brew install pyenv zlib xz`
2. Add this to your `.zshrc` or `.bashrc`:
    ```sh
    if command -v pyenv 1>/dev/null 2>&1; then
        eval "$(pyenv init -)"
    fi
    ```
3. `pyenv install 3.7.9`
4. `pyenv global 3.7.9`
5. Verify that it's working: `python -V`


## Postgres setup

1. `brew install postgresql`
2. `brew services start postgres`
