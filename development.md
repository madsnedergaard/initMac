# Development Setup

## JS
- NVM (See [installation guide](https://github.com/nvm-sh/nvm))

## Python

1. Add this to your `.zshrc` or `.bashrc`:
    ```sh
    if command -v pyenv 1>/dev/null 2>&1; then
        eval "$(pyenv init -)"
    fi
    ```
2. `pyenv install 3.8.12`
3. `pyenv global 3.8.12`
4. Verify that it's working: `python -V`


## Postgres setup

1. `brew install postgresql`
2. `brew services start postgres`
