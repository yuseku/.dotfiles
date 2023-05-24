This repository contains my personal dotfiles for Ubuntu 22.04.2 LTS.

## Overview

Here's a brief overview of the key components of my setup:

- **i3wm**: I use this tiling window manager, specifically, the latest version that includes the inner gaps feature.
- **Picom**: This is used for window rounding.
- **xborder**: This tool adds a border to the active window.
- **Polybar**: An alternative to the default i3wm status bar.
- **Alacritty**: My primary terminal emulator.
- **Ulauncher**: An application launcher, replacing dmenu.
- **feh**: For setting the wallpaper.
- **Flameshot**: A powerful and easy to use screenshot tool.
- **lxappearance & Arc-theme**: A GUI tool for customizing the look of your desktop and the Arc-theme respectively.
- **redshift**: To adjust the color temperature of your screen according to your surroundings.
- **tmux & tmux plugin manager**: An essential terminal multiplexer along with a handy plugin manager.
- **L2TP VPN**: I use this for secure internet access.
- **sshfs**: For mounting and interacting with remote filesystems over SSH.
- **Neovim, packer.nvim & plugins-setup**: My text editor of choice along with a plugin manager and a custom plugins setup.
- **PHP 8.1**: I use PHP for working with Mason in Neovim.

## Installation

Follow the instructions below for setting up the environment.

### Prerequisites

Before you start, you need to install some necessary packages. Below are the steps for installing the key components of the setup:

1. **i3wm**: Follow the installation guide on [i3wm.org](https://i3wm.org/docs/repositories.html) to get the latest version.
   
2. **Picom**: Install via your package manager.
   
3. **Xborder**: Installation instructions are available on [xborder's Github page](https://github.com/deter0/xborder).
   
4. **Polybar**: Install via your package manager.
   
5. **Alacritty**: Install via your package manager.
   
6. **Ulauncher**: Install via your package manager.
   
7. **Feh**: Install via your package manager.
   
8. **Flameshot**: Install via your package manager.
   
9. **Lxappearance & Arc-theme**: Install via your package manager. 

Run the following command to install Arc-theme:

```
sudo apt install arc-theme
```

10. **Redshift**: Install via your package manager.

11. **Tmux & Tmux Tlugin Manager**: After the installation of tmux and tmux plugin manager from tmux-plugins, you can install plugins by entering tmux and pressing Prefix + I.

12. **L2TP VPN**: Run the following commands in terminal:

```
sudo add-apt-repository ppa:nm-l2tp/network-manager-l2tp
sudo apt-get update
sudo apt-get install network-manager-l2tp network-manager-l2tp-gnome
```

13. **Sshfs**: Install via your package manager.

14. **PHP 8.1**: Install via your package manager. Run the following command:

```
sudo apt-get install php8.1-opcache php8.1-pdo php8.1-calendar php8.1-ctype php8.1-dom php8.1-exif php8.1-ffi php8.1-fileinfo php8.1-ftp php8.1-gettext php8.1-iconv php8.1-mbstring php8.1-phar php8.1-posix php8.1-readline php8.1-shmop php8.1-simplexml php8.1-sockets php8.1-sysvmsg php8.1-sysvsem php8.1-sysvshm php8.1-tokenizer php8.1-xmlreader php8.1-xmlwriter php8.1-xsl php8.1-soap php8.1-bcmath php8.1-intl php8.1-gd php8.1-mysql php8.1-zip php8.1-curl php8.1-cli
```

15. **Neovim & packer.nvim**: Before installing Neovim, you need to install certain packages:

```
sudo apt install make
sudo apt install gcc
sudo apt install g++
sudo apt install fzf
sudo apt install ripgrep
sudo apt install cargo
sudo apt install rsync
```

Afterwards, install Node Version Manager (nvm), download the latest Node LTS version, and globally install the npm package **tree-sitter-cli**:

```
npm install -g tree-sitter-cli
```

For Neovim, download the appimage, rename it to `nvim.appimage`, move it to `/bin/nvim`, and then install the plugin manager [packer](https://github.com/wbthomason/packer.nvim).

16. **Plugins-setup**: Finally, go to ~/.config/nvim/lua/ys/plugins-setup.lua, save the file to start the plugin installation process.
