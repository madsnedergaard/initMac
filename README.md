<p align="center">
  <img width="437" height="205" src="logo.svg">
</p>

> My personal guide for setting up new machines.

## Getting Started

1. Download this repo as a `.zip`
2. Open Terminal and give it full disk access
3. Set system preferences - run `sh scripts/set_preferences.sh`
4. Disable Spotlight search commands - run `sh scripts/disable_spotlight_cmd.sh`
5. [Install things](install_things.md)
6. [Set up apps](set_up_apps.md)

## Other guides

### Development setup

[Guide for dev setup](development.md)

### Theming

-   VSCode should follow from settings-sync
-   [Hyper](https://github.com/sindresorhus/hyper-snazzy)
-   Slack `#282A36,#324050,#324050,#57C7FF,#324050,#EFF0EB,#5AF78E,#FF5C57`
-   Terminal: Uses zsh and [pure prompt](https://github.com/sindresorhus/pure)

### Backing things up

-   Update Brewfile: `brew bundle dump --force`
-   Config files are backed up using Mackup (see [Install things](install_things.md)), but might need to switch for MacOS Sonoma.
    -   `mackup backup --force && mackup uninstall --force`


### Timemachine exclusions

<img width="378" height="205" src="tm_settings.png">

### Spotlight exclusions

-   `~/dev`
-   `~/Dropbox`
-   `~/Library`
-   `/System`
-   `/usr`

---

## Inspiration

-   https://sourabhbajaj.com/mac-setup/
-   https://github.com/adamisntdead/DevMyMac
-   https://github.com/pshirshov/initmac
-   https://gist.github.com/kevinelliott/ab14cfb080cc85e0f8a415b147a0d895
