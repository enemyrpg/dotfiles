# Dotfiles

This directory contains dotfiles for my system

## Requirements

Ensure the following packages are installed

### Git & GNU Stow

```
sudo pacman -S --needed git stow
```

### Additional packages

```
sudo pacman -S --needed kitty fastfetch neovim starship yazi ffmpeg 7zip jq poppler fd ripgrep fzf zoxide resvg imagemagick ttf-cascadia-code-nerd
```

## Installation

Clone the dotfiles repo to $HOME directory using git and then symlink using GNU Stow (eg. `stow kitty`)

```
git clone git@github.com:enemyrpg/dotfiles.git
cd dotfiles
```
