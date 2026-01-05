# Development Setup

## Generating new SSH keys

1. [Generate new SSH key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
2. Add it to GitHub: `gh ssh-key add ~/.ssh/id_ed25519.pub --type signing`

## Generating new GPG key

1. [Generate new GPG key](https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key)
2. Add it to git config: `git config --global user.signingkey <YOUR_GPG_KEY_ID>`
3. [Add it to GitHub](https://docs.github.com/en/authentication/managing-commit-signature-verification/adding-a-gpg-key-to-your-github-account#adding-a-gpg-key)

## Poetry

```bash
pipx install poetry
```

## Postgres

**NOTE: Only use this if not running via Docker**

1. `brew install postgresql`
2. `brew services start postgres`

## GCloud

Make sure the cloud-sql-proxy is installed: `brew install cloud-sql-proxy`

```bash
gcloud auth application-default login
gcloud auth login
```
