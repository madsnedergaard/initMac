<p align="center">
  <img width="437" height="205" src="logo.svg">
</p>

My personal guides on setting up new machines

## Getting Started

1. Set system preferences - run `sh set_preferences.sh`
2. [Install things](first_steps.md)

## Other guides

### SSH keys

1. Generate new key: `ssh-keygen -t rsa -b 4096 -C "nedergaardmads@gmail.com"`
2. [Add to ssh-agent](https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#adding-your-ssh-key-to-the-ssh-agent)
3. Add key to relevant sites (e.g. Github, Bitbucket, etc)
   - **Github:** `pbcopy < ~/.ssh/id_rsa.pub` and add it under "Github > Settings > SSH and GPG Keys"

### Postgres setup

1. `brew upgrade postgresql`
2. `brew postgresql-upgrade-database`
3. `sudo pip install pipenv`

### Theming

- [Alfred theme](https://www.alfredapp.com/extras/theme/yZODAdxN8T/) - [github repo](https://github.com/michelegera/alfred-snazzy)
- VSCode should follow from settings-sync
- [Hyper](https://github.com/sindresorhus/hyper-snazzy)
- Slack `(#324050,#283542,#4b9ad9,#FFFFFF,#283542,#CFD8E5,#3bb594,#EB4D5C)`
- Terminal: Use zsh and [pure prompt](https://github.com/sindresorhus/pure)

### Timemachine exclusions

![tm_settings.png](tm_settings.png)

---

## Inspiration

- https://sourabhbajaj.com/mac-setup/
- https://github.com/adamisntdead/DevMyMac
- https://github.com/pshirshov/initmac
- https://gist.github.com/kevinelliott/ab14cfb080cc85e0f8a415b147a0d895
